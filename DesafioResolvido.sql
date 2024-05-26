--1
SELECT 
	Nome,
	Ano
from Filmes

--2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';

4--
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

5--
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

6--
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

7--
SELECT  Ano, COUNT(*) 'Quantidade'
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

8--
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

9--
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

10--
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos on  Generos.Id = FilmesGenero.IdGenero
ORDER BY 
    Filmes.Nome;

11--
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos on  Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mist�rio' 
ORDER BY 
    Filmes.Nome;

12--
SELECT Filmes.nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel
FROM Atores
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme  
