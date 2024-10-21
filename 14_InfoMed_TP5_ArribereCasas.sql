SELECT medicamentos.nombre AS nombre_medicamento, COUNT(recetas.id_receta) AS cantidad_recetas
FROM medicamentos
JOIN recetas ON medicamentos.id_medicamento = recetas.id_medicamento
GROUP BY medicamentos.id_medicamento, medicamentos.nombre
ORDER BY cantidad_recetas DESC
LIMIT 1;
