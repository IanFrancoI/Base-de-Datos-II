MATCH (est1:Estudiante {id: "e1"}), (lib1:Libro {id: "l1"})
CREATE (est1)-[:PRESTAMO {
    fecha_prestamo: date("2024-01-15"),
    fecha_devolucion_esperada: date("2024-02-15"),
    estado: "Activo",
    id_prestamo: "p1"
}]->(lib1);

MATCH (est1:Estudiante {id: "e1"}), (lib4:Libro {id: "l4"})
CREATE (est1)-[:PRESTAMO {
    fecha_prestamo: date("2024-01-10"),
    fecha_devolucion_esperada: date("2024-02-10"),
    fecha_devolucion_real: date("2024-02-08"),
    estado: "Devuelto",
    id_prestamo: "p2"
}]->(lib4);

MATCH (est2:Estudiante {id: "e2"}), (lib2:Libro {id: "l2"})
CREATE (est2)-[:PRESTAMO {
    fecha_prestamo: date("2024-01-20"),
    fecha_devolucion_esperada: date("2024-02-20"),
    estado: "Activo",
    id_prestamo: "p3"
}]->(lib2);

MATCH (est2:Estudiante {id: "e2"}), (lib3:Libro {id: "l3"})
CREATE (est2)-[:PRESTAMO {
    fecha_prestamo: date("2024-01-25"),
    fecha_devolucion_esperada: date("2024-02-25"),
    estado: "Activo",
    id_prestamo: "p4"
}]->(lib3);

MATCH (est1:Estudiante {id: "e1"}), (lib2:Libro {id: "l2"})
CREATE (est1)-[:PRESTAMO {
    fecha_prestamo: date("2023-12-01"),
    fecha_devolucion_esperada: date("2024-01-01"),
    fecha_devolucion_real: date("2023-12-28"),
    estado: "Devuelto",
    id_prestamo: "p5"
}]->(lib2);

MATCH (est4:Estudiante {id: "e4"}), (lib1:Libro {id: "l1"})
CREATE (est4)-[:PRESTAMO {
    fecha_prestamo: date("2024-01-05"),
    fecha_devolucion_esperada: date("2024-02-05"),
    estado: "Activo",
    id_prestamo: "p6"
}]->(lib1);