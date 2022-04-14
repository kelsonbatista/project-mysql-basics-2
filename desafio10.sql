SELECT MU.name AS nome, COUNT(*) AS reproducoes
FROM musics AS MU
JOIN historic AS HI ON MU.music_id = HI.music_id
JOIN users AS US ON US.user_id = HI.user_id AND (US.plan_id = 1 OR US.plan_id = 3)
GROUP BY MU.name
ORDER BY MU.name;
