SELECT US.name AS usuario,
	CASE
		WHEN MAX(YEAR(HI.date)) >= 2021
		THEN "Usuário ativo"
        ELSE "Usuário inativo"
	END AS condicao_usuario
FROM historic AS HI
JOIN users AS US ON US.user_id = HI.user_id
GROUP BY US.name
ORDER BY US.name;
