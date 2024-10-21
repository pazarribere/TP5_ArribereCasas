SELECT 
    medicos.nombre AS nombre_medico,
    pacientes.nombre AS nombre_paciente,
    COUNT(consultas.id_consulta) AS total_consultas
FROM medicos
JOIN consultas ON medicos.id_medico = consultas.id_medico
JOIN pacientes ON consultas.id_paciente = pacientes.id_paciente
GROUP BY medicos.nombre, pacientes.nombre
ORDER BY medicos.nombre, pacientes.nombre;
