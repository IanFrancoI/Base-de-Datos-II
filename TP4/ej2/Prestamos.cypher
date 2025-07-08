MATCH (est1:Estudiante {id: "EST001"}), (lib1:Libro {id: "LIB001"})
CREATE (est1)-[:PRESTAMO {
    fecha_prestamo: date("2024-01-15"),
    fecha_devolucion_esperada: date("2024-02-15"),
    estado: "Activo",
    id_prestamo: "PREST001"
}]->(lib1);

MATCH (est1:Estudiante {id: "EST001"}), (lib4:Libro {id: "LIB004"})
CREATE (est1)-[:PRESTAMO {
    fecha_prestamo: date("2024-01-10"),
    fecha_devolucion_esperada: date("2024-02-10"),
    fecha_devolucion_real: date("2024-02-08"),
    estado: "Devuelto",
    id_prestamo: "PREST002"
}]->(lib4);

MATCH (est2:Estudiante {id: "EST002"}), (lib2:Libro {id: "LIB002"})
CREATE (est2)-[:PRESTAMO {
    fecha_prestamo: date("2024-01-20"),
    fecha_devolucion_esperada: date("2024-02-20"),
    estado: "Activo",
    id_prestamo: "PREST003"
}]->(lib2);

MATCH (est2:Estudiante {id: "EST002"}), (lib3:Libro {id: "LIB003"})
CREATE (est2)-[:PRESTAMO {
    fecha_prestamo: date("2024-01-25"),
    fecha_devolucion_esperada: date("2024-02-25"),
    estado: "Activo",
    id_prestamo: "PREST004"
}]->(lib3);

MATCH (est1:Estudiante {id: "EST001"}), (lib2:Libro {id: "LIB002"})
CREATE (est1)-[:PRESTAMO {
    fecha_prestamo: date("2023-12-01"),
    fecha_devolucion_esperada: date("2024-01-01"),
    fecha_devolucion_real: date("2023-12-28"),
    estado: "Devuelto",
    id_prestamo: "PREST005"
}]->(lib2);

MATCH (est4:Estudiante {id: "EST004"}), (lib1:Libro {id: "LIB004"})
CREATE (est4)-[:PRESTAMO {
    fecha_prestamo: date("2024-01-05"),
    fecha_devolucion_esperada: date("2024-02-05"),
    estado: "Devuelto",
    id_prestamo: "PREST006"
}]->(lib1);