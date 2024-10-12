-- 1
SELECT Nome, Ano FROM Filmes
GO
-- 2
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC
GO
-- 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome LIKE 'De Volta para o futuro'
GO
-- 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997
GO
-- 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000
GO
-- 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC
GO

-- 7
SELECT Ano, COUNT(Duracao) Quantidade FROM Filmes
GROUP BY Ano ORDER BY Quantidade DESC

GO
-- 8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores

GO
-- 9

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10
GO
SELECT Filmes.Nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

GO
-- 11
SELECT Nome, Genero FROM Filmes, Generos, FilmesGenero
WHERE Filmes.Id = FilmesGenero.IdFilme AND Generos.Id = FilmesGenero.IdGenero
AND Generos.Genero = 'Mistério'

-- 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
FROM Filmes
INNER JOIN ElencoFilme ON IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor


