SELECT US.name AS usuario, COUNT(HI.user_id) AS qtde_musicas_ouvidas, ROUND(SUM((MU.duration)/60), 2) AS total_minutos
FROM historic AS HI
INNER JOIN users AS US ON US.user_id = HI.user_id
INNER JOIN musics AS MU ON MU.music_id = HI.music_id
GROUP BY HI.user_id
ORDER BY US.name;
