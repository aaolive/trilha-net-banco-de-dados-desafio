-- 1 - Buscar o nome e ano dos filmes

select nome , ano from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

select nome , ano from Filmes
order by ano asc

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

select nome , ano, duracao from Filmes
where nome like 'de volta para o futuro'


-- 4 - Buscar os filmes lançados em 1997

select nome, ano, duracao from filmes
where ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

select nome, ano, duracao from filmes
where ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

select nome, ano, duracao from filmes
where duracao between 100 and  150
order by duracao asc

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

select ano, count(*) as 'Quantidade' from filmes
group by ano
order by 'Quantidade' desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

select PrimeiroNome, UltimoNome from Atores
where Genero like 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

select * from Atores
where Genero like 'F'
order by PrimeiroNome


-- 10 - Buscar o nome do filme e o gênero

select Nome, Genero  from Filmes
inner join FilmesGenero
on Filmes.Id = FilmesGenero.Id
inner join Generos
on Generos.Id = FilmesGenero.IdGenero
order by Genero
