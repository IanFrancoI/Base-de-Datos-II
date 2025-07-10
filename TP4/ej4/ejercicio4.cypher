// Creacion de nodos
CREATE
  (:Estudiante {nombre: 'Juan'}),
  (:Estudiante {nombre: 'Ana'}),
  (:Estudiante {nombre: 'Luis'});

CREATE
  (:Materia {nombre: 'Matematica', codigo: 'MAT101'}),
  (:Materia {nombre: 'Fisica', codigo: 'FIS102'}),
  (:Materia {nombre: 'Electronica', codigo: 'ELE103'});

CREATE
  (:Curso {codigo: 'C1', año: 2025, semestre: 1}),
  (:Curso {codigo: 'C2', año: 2025, semestre: 1}),
  (:Curso {codigo: 'C3', año: 2025, semestre: 2}),
  (:Curso {codigo: 'C4', año: 2025, semestre: 2});

// Relaciones entre cursos y materias
MATCH (c1:Curso {codigo: 'C1'}), (m1:Materia {codigo: 'MAT101'})
CREATE (c1)-[:DICTA]->(m1);

MATCH (c2:Curso {codigo: 'C2'}), (m2:Materia {codigo: 'FIS102'})
CREATE (c2)-[:DICTA]->(m2);

MATCH (c3:Curso {codigo: 'C3'}), (m3:Materia {codigo: 'ELE103'})
CREATE (c3)-[:DICTA]->(m3);

MATCH (c4:Curso {codigo: 'C4'}), (m1:Materia {codigo: 'MAT101'})
CREATE (c4)-[:DICTA]->(m1);

// Prerrequisitos
MATCH (m1:Materia {codigo: 'ELE103'}), (m2:Materia {codigo: 'FIS102'})
CREATE (m1)-[:PRERREQUISITO]->(m2);

// Inscripciones y calificaciones
MATCH
  (e1:Estudiante {nombre: 'Juan'}),
  (e2:Estudiante {nombre: 'Ana'}),
  (e3:Estudiante {nombre: 'Luis'}),
  (c1:Curso {codigo: 'C1'}),
  (c2:Curso {codigo: 'C2'}),
  (c3:Curso {codigo: 'C3'}),
  (c4:Curso {codigo: 'C4'})
CREATE
  (e1)-[:INSCRIPTO_EN {nota: 8}]->(c1),
  (e1)-[:INSCRIPTO_EN {nota: 6}]->(c2),
  (e2)-[:INSCRIPTO_EN {nota: 9}]->(c1),
  (e2)-[:INSCRIPTO_EN {nota: 5}]->(c3),
  (e3)-[:INSCRIPTO_EN {nota: 7}]->(c4);

// Consultas

// 1. Transcripcion académica

// Reemplazar 'Juan' por cualquier otro nombre para consultar otro estudiante
MATCH (e:Estudiante {nombre: 'Juan'})-[:INSCRIPTO_EN]->(c:Curso)-[:DICTA]->(m:Materia)
RETURN m.nombre AS Materia, c.codigo AS Curso, c.año AS Año, c.semestre AS Semestre,
       e.nombre AS Estudiante,
       relationships((e)-[:INSCRIPTO_EN]->(c))[0].nota AS Nota
ORDER BY Año, Semestre;


// 2. Verificar si puede inscribirse a una materia con prerrequisitos

MATCH (e:Estudiante {nombre: 'Juan'}),
      (m:Materia {nombre: 'Electronica'})-[:PRERREQUISITO]->(prereq:Materia)<-[:DICTA]-(c:Curso)<-[ins:INSCRIPTO_EN]-(e)
WHERE ins.nota >= 6
WITH count(prereq) AS cumplidos

MATCH (m:Materia {nombre: 'Electronica'})-[:PRERREQUISITO]->(total)
WITH cumplidos, count(total) AS requeridos

RETURN cumplidos = requeridos AS PuedeInscribirse;


// 3. Promedio de calificaciones por estudiante

MATCH (e:Estudiante)-[i:INSCRIPTO_EN]->(:Curso)
RETURN e.nombre AS Estudiante, ROUND(avg(i.nota), 2) AS Promedio;


// 4. Materias con promedio menor a 7

MATCH (:Estudiante)-[i:INSCRIPTO_EN]->(c:Curso)-[:DICTA]->(m:Materia)
WITH m.nombre AS Materia, avg(i.nota) AS Promedio
WHERE Promedio < 7
RETURN Materia, ROUND(Promedio, 2) AS Promedio
ORDER BY Promedio ASC;