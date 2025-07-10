CREATE (ing:Carrera {nombre: "Ingenieria de Sistemas", codigo: "IS"})
CREATE (med:Carrera {nombre: "Medicina", codigo: "MED"})
CREATE (der:Carrera {nombre: "Derecho", codigo: "DER"})
CREATE (psi:Carrera {nombre: "Psicologia", codigo: "PSI"});

CREATE (prog:Categoria {nombre: "Programacion", descripcion: "Libros sobre desarrollo de software"})
CREATE (med_cat:Categoria {nombre: "Medicina", descripcion: "Libros de ciencias medicas"})
CREATE (jur:Categoria {nombre: "Juridico", descripcion: "Libros de leyes y derecho"})
CREATE (fic:Categoria {nombre: "Ficcion", descripcion: "Novelas y literatura"});

CREATE (est1:Estudiante {
    id: "e1",
    nombre: "Luciano Guardese",
    email: "lucho.guardese@email.com",
    semestre: 6
})
CREATE (est2:Estudiante {
    id: "e2", 
    nombre: "Ivan Guardese",
    email: "ivan.guardese@email.com",
    semestre: 4
})
CREATE (est3:Estudiante {
    id: "e3",
    nombre: "Noelia Hubert",
    email: "noelia.hubert@email.com",
    semestre: 8
});
CREATE (est4:Estudiante {
    id: "e4",
    nombre: "Ian Franco Ibanez",
    email: "ian.franco@email.com",
    semestre: 1
});

CREATE (lib1:Libro {
    id: "l1",
    titulo: "Clean Code",
    autor: "Robert C. Martin",
    isbn: "978-0132350884",
    año: 2008,
    disponible: true
})
CREATE (lib2:Libro {
    id: "l2",
    titulo: "Gray's Anatomy",
    autor: "Henry Gray",
    isbn: "978-0443066849",
    año: 2020,
    disponible: true
})
CREATE (lib3:Libro {
    id: "l3",
    titulo: "Código Civil",
    autor: "Congreso Nacional",
    isbn: "978-9562420532",
    año: 2021,
    disponible: true
})
CREATE (lib4:Libro {
    id: "l4",
    titulo: "Cien Años de Soledad",
    autor: "Gabriel García Márquez",
    isbn: "978-0307474728",
    año: 1967,
    disponible: true
});

MATCH (est1:Estudiante {id: "e1"}), (ing:Carrera {codigo: "IS"})
CREATE (est1)-[:PERTENECE_A]->(ing);

MATCH (est2:Estudiante {id: "e2"}), (med:Carrera {codigo: "MED"})
CREATE (est2)-[:PERTENECE_A]->(med);

MATCH (est3:Estudiante {id: "e3"}), (der:Carrera {codigo: "DER"})
CREATE (est3)-[:PERTENECE_A]->(der);

MATCH (est4:Estudiante {id: "e4"}), (psi:Carrera {codigo: "PSI"})
CREATE (est4)-[:PERTENECE_A]->(psi);


MATCH (lib1:Libro {id: "l1"}), (prog:Categoria {nombre: "Programacion"})
CREATE (lib1)-[:ES_DE_CATEGORIA]->(prog);

MATCH (lib2:Libro {id: "l2"}), (med_cat:Categoria {nombre: "Medicina"})
CREATE (lib2)-[:ES_DE_CATEGORIA]->(med_cat);

MATCH (lib3:Libro {id: "l3"}), (jur:Categoria {nombre: "Juridico"})
CREATE (lib3)-[:ES_DE_CATEGORIA]->(jur);

MATCH (lib4:Libro {id: "l4"}), (fic:Categoria {nombre: "Ficcion"})
CREATE (lib4)-[:ES_DE_CATEGORIA]->(fic);