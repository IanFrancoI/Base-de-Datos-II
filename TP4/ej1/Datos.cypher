CREATE (dptoTI:Departamento {nombre: "Tecnologia de la Informacion", codigo: "TI"})
CREATE (dptoRH:Departamento {nombre: "Recursos Humanos", codigo: "RH"})
CREATE (dptoVentas:Departamento {nombre: "Ventas", codigo: "VEN"})


CREATE (e1:Empleado {
  id: 1,
  nombre: "Luciano Guardese",
  email: "lucho.guardese@email.com",
  puesto: "Desarrollador Senior"
})

CREATE (e2:Empleado {
  id: 2,
  nombre: "Ivan Guardese",
  email: "ivan.guardese@email.com",
  puesto: "Project Manager"
})

CREATE (e3:Empleado {
  id: 3,
  nombre: "Noelia Hubert",
  email: "noelia.hubert@email.com",
  puesto: "Especialista en RRHH"
})

CREATE (e4:Empleado {
  id: 4,
  nombre: "Ian Franco Ibanez",
  email: "ian.franco@email.com",
  puesto: "Desarrollador Junior"
})

CREATE (e5:Empleado {
  id: 5,
  nombre: "Pepe Sanchez",
  email: "pepe.sanchez@email.com",
  puesto: "Ejecutivo de Ventas"
})


CREATE (p1:Proyecto {
  id: 1,
  nombre: "Sistema de Gestion Interna",
  descripcion: "Desarrollo de sistema para gestión de recursos internos",
  fechaInicio: date("2024-01-15"),
  fechaFin: date("2024-06-30"),
  estado: "En Progreso"
})

CREATE (p2:Proyecto {
  id: 2,
  nombre: "Portal de Clientes",
  descripcion: "Desarrollo de portal web para clientes",
  fechaInicio: date("2024-03-01"),
  fechaFin: date("2024-08-15"),
  estado: "En Progreso"
})