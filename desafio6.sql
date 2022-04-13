SELECT
	MIN(PL.price) AS faturamento_minimo,
	MAX(PL.price) AS faturamento_maximo,
	FORMAT(AVG(PL.price), 2) AS faturamento_medio,
	SUM(PL.price) AS faturamento_total
FROM users AS US
JOIN plans AS PL ON US.plan_id = PL.plan_id;
