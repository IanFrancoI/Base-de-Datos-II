MATCH (e:Estudiante)-[p:PRESTAMO {estado: "Activo"}]->(l:Libro)
RETURN 
    l.titulo AS Libro,
    l.autor AS Autor,
    e.nombre AS Estudiante,
    p.fecha_prestamo AS `Fecha Prestamo`,
    p.fecha_devolucion_esperada AS `Fecha Devolucion Esperada`,
    p.id_prestamo AS `id Prestamo`
ORDER BY p.fecha_prestamo DESC;

MATCH (e:Estudiante)
OPTIONAL MATCH (e)-[p:PRESTAMO]->(l:Libro)
WITH e, COUNT(p) AS total_prestamos
RETURN 
    e.nombre AS Estudiante,
    e.id AS `id Estudiante`,
    total_prestamos AS `Total Prestamos`
ORDER BY total_prestamos DESC, e.nombre;

MATCH (l:Libro)-[:ES_DE_CATEGORIA]->(c:Categoria)
MATCH (e:Estudiante)-[p:PRESTAMO {estado: "Activo"}]->(l)
WITH c, COUNT(p) AS prestamos_activos
RETURN 
    c.nombre AS Categoria,
    c.descripcion AS Descripcion,
    prestamos_activos AS `Prestamos Activos`
ORDER BY prestamos_activos DESC, c.nombre;

MATCH (e:Estudiante)
WHERE NOT EXISTS {
    MATCH (e)-[p:PRESTAMO {estado: "Activo"}]->(:Libro)
}
MATCH (e)-[:PERTENECE_A]->(car:Carrera)
RETURN 
    e.nombre AS Estudiante,
    e.id AS `ID Estudiante`,
    e.email AS Email,
    e.semestre AS Semestre,
    car.nombre AS Carrera
ORDER BY e.nombre;