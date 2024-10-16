# Trabajo Práctico N°5
![image](https://github.com/user-attachments/assets/f2e54dc0-6027-4cd7-817a-a42e47570113)

## _Autoras:_ 
* Francesca Catterina Picon Abucci
* María Virginia Ramos Marca

## **PARTE 1:** Bases de Datos

### 1. ¿Qué tipo de base de datos es? 

La base de datos utiliza un modelo relacional. Esto significa que los datos están organizados en tablas que contienen registros de entidades como pacientes, médicos y medicamentos. Cada tabla tiene columnas que representan los atributos de las entidades (por ejemplo, el nombre y la fecha de nacimiento de los pacientes), y las relaciones entre ellas se establecen mediante claves primarias y foráneas. Por ejemplo, la tabla Consultas se relaciona con las tablas Pacientes y Medicos, lo que permite vincular a un paciente con el médico que lo atendió en una consulta específica.

A su vez, la base de datos es transaccional, lo que significa que está diseñada para realizar operaciones rápidas y eficientes. Por ejemplo, al registrar una nueva consulta, la base de datos actualiza automáticamente los registros correspondientes en las tablas de Pacientes, Medicos y Consultas, asegurando que toda la información esté sincronizada y disponible para el personal médico.

### 2. Armar el diagrama entidad-relación de la base de datos dada. 
<img src="imágenes/Diagrama.png" alt="ejemplo_modelo-ER" style="width:500px;"/>

El diagrama de entidad-relación (ER) fue realizado utilizando la aplicación Dia, una herramienta de software libre que permite crear diagramas con facilidad y exportarlos en formatos como PNG. Para este proyecto, se asumió que las entidades Consultas, Recetas, Pacientes, Medicos, Especialidades, y Medicamentos son todas entidades fuertes, ya que tienen claves primarias propias. Las relaciones entre las entidades se definieron principalmente como de 1 a N. En particular, las relaciones entre Consultas con Pacientes y Medicos, así como las relaciones entre Recetas con Medicamentos, Pacientes, y Medicos, tienen participación total desde el lado de Consultas y Recetas (doble línea), mientras que las entidades Pacientes, Medicos, Especialidades, y Medicamentos tienen participación parcial (línea simple).

### 3. Armar el Modelo relacional de la base de datos dada.
![modelo_relacional](imágenes/Modelo.png)

En este modelo relacional, todos los atributos de las tablas (Pacientes, Medicos, Consultas, Recetas, Especialidades, Medicamentos, y SexoBiologico) se han definido como no nulos, dado que consideramos que toda la información es esencial. Las relaciones entre las tablas son de uno a 0..N en la mayoría de los casos, permitiendo que un paciente o médico tenga 0 o más consultas o recetas asociadas. La única excepción es la relación entre Medicos y Especialidades, donde cada médico debe tener obligatoriamente una especialidad, lo que hace que esta relación sea de 1 a N. Las claves primarias están subrayadas y las claves foráneas aseguran la integridad referencial entre las tablas.

### 4. Considera que la base de datos está normalizada. En caso que no lo esté, ¿cómo podría hacerlo?

La base de datos no está completamente normalizada. Por ejemplo, para normalizar la tabla Consultas y llevarla a la Tercera Forma Normal, se puede dividir en tres tablas: Consultas, Diagnósticos, y Tratamientos. La tabla Diagnósticos contendría los detalles del diagnóstico y su código SNOMED, mientras que la tabla Tratamientos almacenaría los tratamientos asociados a cada diagnóstico. La tabla Consultas mantendría una clave foránea hacia Diagnósticos en lugar de almacenar directamente el diagnóstico y el tratamiento, evitando así cualquier dependencia transitoria entre los atributos. Esto garantiza que el tratamiento dependa únicamente del diagnóstico y no de la consulta, logrando que la base de datos cumpla con los requisitos de la 3NF, donde todos los atributos no clave dependen exclusivamente de la clave primaria.


