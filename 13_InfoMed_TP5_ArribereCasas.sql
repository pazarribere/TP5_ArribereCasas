SELECT pacientes.nombre AS nombre_paciente, COUNT(recetas.id_receta) AS cantidad_recetas
FROM pacientes 
LEFT JOIN recetas ON pacientes.id_paciente = recetas.id_paciente
GROUP BY pacientes.id_paciente, pacientes.nombre;
