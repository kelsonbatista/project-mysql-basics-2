SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM historic AS HI
JOIN users AS US
ON US.user_id = HI.user_id AND US.name = "Bill";
