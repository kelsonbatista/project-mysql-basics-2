SELECT MU.name AS cancao, COUNT(*) AS reproducoes
FROM historic AS HI
JOIN musics AS MU ON MU.music_id = HI.music_id
GROUP BY MU.name
ORDER BY reproducoes DESC, MU.name
LIMIT 2;
