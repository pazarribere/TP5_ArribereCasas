SELECT 
    pacientes.nombre AS nombre_paciente,
    consultas.fecha AS fecha_ultima_consulta,
    consultas.diagnostico AS diagnostico
FROM pacientes
JOIN consultas ON pacientes.id_paciente = consultas.id_paciente
WHERE 
    consultas.fecha = (SELECT MAX(consultas.fecha) 
                FROM consultas
                WHERE consultas.id_paciente = pacientes.id_paciente)
ORDER BY pacientes.nombre;