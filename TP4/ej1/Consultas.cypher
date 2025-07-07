MATCH (p:Proyecto)<-[:LIDERA]-(lider:Empleado)
OPTIONAL MATCH (p)<-[:ASIGNADO_A]-(empleado:Empleado)
RETURN 
  p.nombre AS Proyecto,
  lider.nombre AS Lider,
  collect(DISTINCT empleado.nombre) AS EmpleadosAsignados
ORDER BY p.nombre


MATCH (p:Proyecto)<-[r:ASIGNADO_A]-(e:Empleado)
RETURN 
  p.nombre AS Proyecto,
  sum(r.horasSemanales) AS TotalHorasSemanales,
  count(e) AS NumeroEmpleados,
  round(avg(r.horasSemanales), 2) AS PromedioHorasPorEmpleado
ORDER BY TotalHorasSemanales DESC


MATCH (e:Empleado)-[r:ASIGNADO_A]->(p:Proyecto)
WITH e, count(p) AS numeroProyectos, collect(p.nombre) AS proyectos, sum(r.horasSemanales) AS totalHoras
WHERE numeroProyectos > 1
RETURN 
  e.nombre AS Empleado,
  e.puesto AS Puesto,
  numeroProyectos AS NumeroDeProyectos,
  proyectos AS Proyectos,
  totalHoras AS TotalHorasSemanales
ORDER BY numeroProyectos DESC, totalHoras DESC
