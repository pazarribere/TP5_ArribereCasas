SELECT 
    pacientes.nombre AS nombre_paciente,
    consultas.fecha,
    consultas.diagnostico
FROM 
    pacientes 
JOIN 
    consultas 
ON 
    pacientes.id_paciente = consultas.id_paciente
WHERE 
    consultas.fecha BETWEEN '2024-08-01' AND '2024-08-31';