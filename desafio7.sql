SELECT AR.name AS artista, AL.name AS album, COUNT(*) AS seguidores
FROM following AS FL
JOIN artists AS AR ON AR.artist_id = FL.artist_id
JOIN albums AS AL ON AR.artist_id = AL.artist_id
GROUP BY AR.name, AL.name
ORDER BY seguidores DESC, artista, album;
