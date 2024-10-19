SELECT m.nombre, COUNT(*) AS cantidad_recetas
FROM recetas r
JOIN medicamentos m ON r.id_medicamento = m.id_medicamento
GROUP BY m.nombre
ORDER BY cantidad_recetas DESC
LIMIT 1;