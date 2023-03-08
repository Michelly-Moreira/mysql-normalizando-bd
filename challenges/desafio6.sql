SELECT
	FORMAT(ROUND(MIN(plans.value_plan), 2), 2) AS faturamento_minimo,
    MAX(plans.value_plan) AS faturamento_maximo,
    FORMAT(AVG(plans.value_plan), 2) AS faturamento_medio,
    FORMAT(SUM(plans.value_plan), 2) AS faturamento_total
FROM plans
INNER JOIN users
ON plan_id = plans.id;