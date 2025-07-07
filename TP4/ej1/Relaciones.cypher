// empleado con departamento 
MATCH (e1:Empleado {id: 1}), (dTI:Departamento {codigo: 'TI'})
CREATE (e1)-[:PERTENECE_A]->(dTI);

MATCH (e2:Empleado {id: 2}), (dTI:Departamento {codigo: 'TI'})
CREATE (e2)-[:PERTENECE_A]->(dTI);

MATCH (e3:Empleado {id: 3}), (dRH:Departamento {codigo: 'RH'})
CREATE (e3)-[:PERTENECE_A]->(dRH);

MATCH (e4:Empleado {id: 4}), (dTI:Departamento {codigo: 'TI'})
CREATE (e4)-[:PERTENECE_A]->(dTI);

MATCH (e5:Empleado {id: 5}), (dVentas:Departamento {codigo: 'VEN'})
CREATE (e5)-[:PERTENECE_A]->(dVentas);

// empleado con proyecto
MATCH (e2:Empleado {id: 2}), (p1:Proyecto {id: 1})
CREATE (e2)-[:LIDERA]->(p1);

MATCH (e1:Empleado {id: 1}), (p2:Proyecto {id: 2})
CREATE (e1)-[:LIDERA]->(p2);

// empleado con horas semanales 
MATCH (e1:Empleado {id: 1}), (p1:Proyecto {id: 1})
CREATE (e1)-[:ASIGNADO_A {horasSemanales: 25}]->(p1);

MATCH (e2:Empleado {id: 2}), (p1:Proyecto {id: 1})
CREATE (e2)-[:ASIGNADO_A {horasSemanales: 30}]->(p1);

MATCH (e4:Empleado {id: 4}), (p1:Proyecto {id: 1})
CREATE (e4)-[:ASIGNADO_A {horasSemanales: 40}]->(p1);

MATCH (e1:Empleado {id: 1}), (p2:Proyecto {id: 2})
CREATE (e1)-[:ASIGNADO_A {horasSemanales: 15}]->(p2);

MATCH (e3:Empleado {id: 3}), (p2:Proyecto {id: 2})
CREATE (e3)-[:ASIGNADO_A {horasSemanales: 10}]->(p2);

MATCH (e5:Empleado {id: 5}), (p2:Proyecto {id: 2})
CREATE (e5)-[:ASIGNADO_A {horasSemanales: 20}]->(p2);