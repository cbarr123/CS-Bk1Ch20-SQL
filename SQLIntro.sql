--SELECT * FROM GENRE;
--INSERT INTO ARTIST (ArtistName, YearEstablished) VALUES ('Billy Crain', '1970');
--SELECT * FROM Artist;
--SELECT * FROM Album;
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Bigger Things', '12/25/2010', '2690', 'Gone Riding', '29', '13');
--SELECT * FROM Song;
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId ) VALUES ('Zinger2', '72', '12/25/2019', '13', '29', '26');
--SELECT * FROM Song;
--Select a.Title, s.Title, ar.ArtistName
--	from Album a 
--	LEFT JOIN Song s ON a.Id = s.AlbumId 
--	LEFT JOIN Artist ar ON a.ArtistId = ar.Id
--	WHERE a.Id = '25';
--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;
--SELECT a.Title, COUNT(s.Title)
--	FROM Song s
--	LEFT JOIN Album a ON s.AlbumId = a.Id
--	GROUP BY a.Title;
--SELECT ar.ArtistName, COUNT(s.Title)
--	FROM Song s
--	LEFT JOIN Artist ar ON s.ArtistId = ar.Id
--	GROUP BY ar.ArtistName;
SELECT g.Label, COUNT(s.Title)
	FROM Song s
	LEFT JOIN Genre g ON s.GenreId = g.Id
	GROUP BY g.Label;
--SELECT MAX(a.AlbumLength)
--	FROM Album a;
SELECT MAX(s.SongLength)
	FROM Song s;

	-- Just trying something
SELECT 
FROM(
	SELECT a.AlbumLength
	FROM Album a
	ORDER BY a.AlbumLength DESC
	);
