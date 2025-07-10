MATCH (noelia:Persona {nombre: 'Noelia'}),
      (ian:Persona {nombre: 'Ian'}),
      (luciano:Persona {nombre: 'Luciano'}),
      (ivan:Persona {nombre: 'Ivan'})
CREATE (noelia)-[:AMIGO]->(ian),
       (luciano)-[:AMIGO]->(ivan),
       (ivan)-[:AMIGO]->(ian),
       (luciano)-[:AMIGO]->(noelia),
       (noelia)-[:AMIGO]->(luciano),
       (ian)-[:AMIGO]->(noelia),
       (ian)-[:AMIGO]->(ivan),
       (ivan)-[:AMIGO]->(luciano),
       (noelia)-[:AMIGO]->(ivan);

MATCH (noelia:Persona {nombre: 'Noelia'}),
      (ian:Persona {nombre: 'Ian'}),
      (luciano:Persona {nombre: 'Luciano'}),
      (p1:Post {codigo:'p1'}),
      (p2:Post {codigo: 'p2'}),
      (p3:Post {codigo: 'p3'}),
      (p4:Post {codigo: 'p4'})
CREATE (noelia)-[:POSTEO]->(p1),
       (noelia)-[:POSTEO]->(p4),
       (luciano)-[:POSTEO]->(p2),
       (ian)-[:POSTEO]->(p3);

MATCH (noelia:Persona {nombre: 'Noelia'}),
      (ian:Persona {nombre: 'Ian'}),
      (luciano:Persona {nombre: 'Luciano'}),
      (ivan:Persona {nombre: 'Ivan'}),
      (ne:Habilidad {codigo: 'ne'}),
      (re:Habilidad {codigo: 're'}),
      (ux:Habilidad {codigo: 'ux'}),
      (py:Habilidad {codigo: 'py'})
CREATE (uh1:UsHabilidad), (noelia)-[:TIENE]->(uh1), (uh1)-[:SABE]->(ne),
       (uh2:UsHabilidad), (noelia)-[:TIENE]->(uh2), (uh2)-[:SABE]->(re),
       (uh3:UsHabilidad), (luciano)-[:TIENE]->(uh3), (uh3)-[:SABE]->(re),
       (uh4:UsHabilidad), (luciano)-[:TIENE]->(uh4), (uh4)-[:SABE]->(ux),
       (uh5:UsHabilidad), (ian)-[:TIENE]->(uh5), (uh5)-[:SABE]->(ux),
       (uh6:UsHabilidad), (ian)-[:TIENE]->(uh6), (uh6)-[:SABE]->(re),
       (uh7:UsHabilidad), (ivan)-[:TIENE]->(uh7), (uh7)-[:SABE]->(py),
       (uh8:UsHabilidad), (ivan)-[:TIENE]->(uh8), (uh8)-[:SABE]->(ne);

MATCH (noelia:Persona {nombre: 'Noelia'}),
      (ivan:Persona {nombre: 'Ivan'}),
      (ne:Habilidad {codigo: 'ne'})
MATCH (ivan)-[:TIENE]->(uh_ne:UsHabilidad)-[:SABE]->(ne)
CREATE (noelia)-[:ENDOSO]->(uh_ne);

MATCH (luciano:Persona {nombre: 'Luciano'}),
      (ian:Persona {nombre: 'Ian'}),
      (ux:Habilidad {codigo: 'ux'})
MATCH (ian)-[:TIENE]->(uh_ux:UsHabilidad)-[:SABE]->(ux)
CREATE (luciano)-[:ENDOSO]->(uh_ux);

MATCH (ian:Persona {nombre: 'Ian'}),
      (ivan:Persona {nombre: 'Ivan'}),
      (ne:Habilidad {codigo: 'ne'})
MATCH (ivan)-[:TIENE]->(uh_ne2:UsHabilidad)-[:SABE]->(ne)
CREATE (ian)-[:ENDOSO]->(uh_ne2);