MATCH (est1:Estudiante {id: "EST001"}), (ing:Carrera {codigo: "IS"})
CREATE (est1)-[:PERTENECE_A]->(ing);

MATCH (est2:Estudiante {id: "EST002"}), (med:Carrera {codigo: "MED"})
CREATE (est2)-[:PERTENECE_A]->(med);

MATCH (est3:Estudiante {id: "EST003"}), (der:Carrera {codigo: "DER"})
CREATE (est3)-[:PERTENECE_A]->(der);

MATCH (est4:Estudiante {id: "EST004"}), (psi:Carrera {codigo: "PSI"})
CREATE (est4)-[:PERTENECE_A]->(psi);


MATCH (lib1:Libro {id: "LIB001"}), (prog:Categoria {nombre: "Programación"})
CREATE (lib1)-[:ES_DE]->(prog);

MATCH (lib2:Libro {id: "LIB002"}), (med_cat:Categoria {nombre: "Medicina"})
CREATE (lib2)-[:ES_DE]->(doc);

MATCH (lib3:Libro {id: "LIB003"}), (jur:Categoria {nombre: "Jurídico"})
CREATE (lib3)-[:ES_DE]->(jur);

MATCH (lib4:Libro {id: "LIB004"}), (fic:Categoria {nombre: "Ficción"})
CREATE (lib4)-[:ES_DE]->(fic);