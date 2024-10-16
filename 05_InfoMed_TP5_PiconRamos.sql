UPDATE Pacientes
SET ciudad = CASE
    WHEN ciudad ILIKE '%buen%' AND ciudad ILIKE '%ai%' THEN 'Buenos Aires'
    WHEN ciudad ILIKE '%rosar%' THEN 'Rosario'
    WHEN ciudad ILIKE '%santa%' AND ciudad ILIKE '%fe%' THEN 'Santa Fe'
    WHEN ciudad ILIKE '%cordob%' OR ciudad ILIKE '%coro%'OR ciudad ILIKE '%córodba%' THEN 'Córdoba'
    WHEN ciudad ILIKE '%mend%' THEN 'Mendoza'
    ELSE ciudad
END;