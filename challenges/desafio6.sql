SELECT
	ROUND(MIN(plans.value_plan), 2) AS faturamento_minimo,
    ROUND(MAX(plans.value_plan), 2) AS faturamento_maximo,
    ROUND(AVG(plans.value_plan), 2) AS faturamento_medio,
    ROUND(SUM(plans.value_plan), 2) AS faturamento_total
FROM plans
INNER JOIN users
ON plan_id = plans.id;