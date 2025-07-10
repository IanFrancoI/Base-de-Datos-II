MATCH (p:Persona)-[:AMIGO]->()
RETURN p.nombre AS Usuario, COUNT(*) AS CantidadDeAmigos
ORDER BY CantidadDeAmigos DESC;


MATCH (p:Persona)-[:POSTEO]->(:Post)
RETURN p.nombre AS Usuario, COUNT(*) AS CantidadDePosts
ORDER BY CantidadDePosts DESC
LIMIT 2;


MATCH (:Persona)-[:ENDOSO]->(uh:UsHabilidad)-[:SABE]->(h:Habilidad)
RETURN h.nombre AS Habilidad, COUNT(*) AS TotalEndosos
ORDER BY TotalEndosos DESC;


MATCH (p:Persona {nombre: "Noelia"})-[:TIENE]->(:UsHabilidad)-[:SABE]->(h:Habilidad)
WHERE NOT EXISTS {
    MATCH (p)-[:ENDOSO]->(uh:UsHabilidad)-[:SABE]->(h)
}
RETURN h.nombre AS HabilidadNoEndosada;