SELECT 
    ciudad,
    COUNT(CASE WHEN id_sexo = 1 THEN 1 END) AS masculino,
    COUNT(CASE WHEN id_sexo = 2 THEN 1 END) AS femenino
FROM pacientes
GROUP BY ciudad
ORDER BY ciudad;

