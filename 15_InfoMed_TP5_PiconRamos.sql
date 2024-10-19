SELECT p.nombre, c.fecha, c.diagnostico
FROM consultas c
JOIN pacientes p ON c.id_paciente = p.id_paciente
WHERE c.fecha = 
	(SELECT MAX(c2.fecha)
    FROM consultas c2
    WHERE c2.id_paciente = p.id_paciente);