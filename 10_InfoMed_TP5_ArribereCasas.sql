SELECT *
FROM consultas 
WHERE consultas.id_medico = 3
AND consultas.fecha BETWEEN '2024-08-01' AND '2024-08-31';