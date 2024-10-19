SELECT m.nombre AS nombre_medicamento, COUNT(*) AS total_recetas, 
	me.nombre AS nombre_medico, p.nombre AS nombre_paciente
FROM recetas r
JOIN medicamentos m ON r.id_medicamento = m.id_medicamento
JOIN medicos me ON r.id_medico = me.id_medico
JOIN pacientes p ON r.id_paciente = p.id_paciente
GROUP BY m.nombre, me.nombre, p.nombre
ORDER BY total_recetas DESC;
