CREATE (:Persona {nombre: 'Noelia'});
CREATE (:Persona {nombre: 'Ian'});
CREATE (:Persona {nombre: 'Luciano'});
CREATE (:Persona {nombre: 'Ivan'});

CREATE (:Post {codigo: 'p1', contenido: 'Noelia está intentando aprender Neo4j', fecha: date('2025-07-01')});
CREATE (:Post {codigo: 'p2', contenido: 'Luciano es una máquina con React', fecha: date('2025-07-02')});
CREATE (:Post {codigo: 'p3', contenido: 'El más capo en diseño UX es Ian', fecha: date('2025-07-03')});
CREATE (:Post {codigo: 'p4', contenido: 'Qué largo se hizo el cuatrimestre', fecha: date('2025-07-08')});

CREATE (:Habilidad {nombre: 'Neo4j', codigo: 'ne'});
CREATE (:Habilidad {nombre: 'React', codigo: 're'});
CREATE (:Habilidad {nombre: 'Diseño UX', codigo: 'ux'});
CREATE (:Habilidad {nombre: 'Python', codigo: 'py'});
