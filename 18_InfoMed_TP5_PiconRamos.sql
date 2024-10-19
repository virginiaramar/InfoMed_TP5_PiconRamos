SELECT me.nombre AS nombre_medico, COUNT(DISTINCT p.id_paciente) AS total_pacientes
FROM consultas c
JOIN medicos me ON c.id_medico = me.id_medico
JOIN pacientes p ON c.id_paciente = p.id_paciente
GROUP BY me.nombre
ORDER BY total_pacientes DESC;