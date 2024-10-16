SELECT ciudad, COUNT(*) AS cantidadpacientes
FROM Pacientes
GROUP BY ciudad;