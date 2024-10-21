SELECT medicamentos.nombre AS nombre_medicamento, COUNT(*) AS cantidad_prescripciones
FROM recetas 
JOIN medicamentos ON recetas.id_medicamento = medicamentos.id_medicamento
WHERE recetas.id_medico = 2
GROUP BY medicamentos.nombre
HAVING COUNT(*) > 1;
