SELECT 
    id_paciente,
    EXTRACT(YEAR FROM AGE(fecha_nacimiento)) AS edad
FROM Pacientes;