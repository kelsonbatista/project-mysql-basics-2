SELECT COUNT(DISTINCT MU.music_id) AS cancoes, COUNT(DISTINCT AR.artist_id) AS artistas, COUNT(DISTINCT AL.album_id) AS albuns
FROM artists AS AR
INNER JOIN albums AS AL
ON AR.artist_id = AL.artist_id
INNER JOIN musics AS MU
ON MU.album_id = AL.album_id;
