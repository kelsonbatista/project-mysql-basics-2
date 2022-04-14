SELECT AR.name AS artista, AL.name AS album
FROM artists AS AR
JOIN albums AS AL ON AR.artist_id = AL.artist_id AND AR.name = "Walter Phoenix"
ORDER BY AL.name;
