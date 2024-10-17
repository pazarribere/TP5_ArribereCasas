CREATE EXTENSION IF NOT EXISTS pg_trgm;

UPDATE pacientes
SET ciudad = CASE
    WHEN similarity(ciudad, 'Córdoba') > 0.3 THEN 'Córdoba'
    WHEN similarity(ciudad, 'Buenos Aires') > 0.3 THEN 'Buenos Aires'
    WHEN similarity(ciudad, 'Rosario') > 0.3 THEN 'Rosario'
	WHEN similarity(ciudad, 'Santa Fe') > 0.3 THEN 'Santa Fe'
    WHEN similarity(ciudad, 'Mendoza') > 0.3 THEN 'Mendoza'
	ELSE ciudad  
END