# TP2: MongoDB

### Ejercicio 1: CRUD básico

- Crea una base de datos llamada empresa.
- Agrega una colección empleados con 3 documentos que incluyan nombre, edad y puesto.
- Actualiza la edad de uno de los empleados.
- Elimina al empleado que tenga el puesto de "pasante".
  
### Ejercicio 2: 
- Búsquedas con operadores Consulta todos los empleados cuya edad esté entre 25 y 40 años. Usa operadores relacionales y lógicos.

### Ejercicio 3: 
- Uso de proyección Recupera los nombres y puestos de todos los empleados, sin mostrar el _id.

### Ejercicio 4: 
- Documentos embebidos Agrega un campo direccion que incluya calle, ciudad y codigo_postal.

### Ejercicio 5: 
- Agregación Dada una colección ventas con campos producto, cantidad y precio_unitario, calcula el total de ventas por producto usando $group y $sum.

### Ejercicio 6: 
- Índices Crea un índice compuesto sobre los campos apellido y nombre en una colección de clientes.

### Ejercicio 7: 
- Referencias Crea una colección cursos y una colección alumnos. Luego inserta documentos donde los alumnos tengan una lista de id_curso referenciando a los cursos.

### Ejercicio 8: 
- Uso de $lookup Realiza una agregación donde se combinen los datos de alumnos y cursos usando $lookup.

### Ejercicio 9: 
- Replicación y sharding (teórico) Describe con tus palabras las ventajas de usar un Replica Set y qué beneficios aporta el sharding en una base de datos de alto volumen.

### Ejercicio 10: 
- Seguridad y backups Muestra los pasos para crear un usuario con permisos de lectura y escritura, y los comandos necesarios para hacer backup y restauración de una base de datos.