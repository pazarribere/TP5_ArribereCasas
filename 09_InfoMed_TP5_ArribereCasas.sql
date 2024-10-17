SELECT medicos.nombre AS nombre_medico, COUNT(recetas.id_receta) AS cantidad_recetas
FROM Recetas 
JOIN Medicos ON recetas.id_medico = medicos.id_medico
GROUP BY medicos.nombre;
