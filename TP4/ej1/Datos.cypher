// Departamentos
CREATE (dTI:Departamento {nombre: 'Tecnología de la Información', codigo: 'TI'})
CREATE (dRH:Departamento {nombre: 'Recursos Humanos', codigo: 'RH'})
CREATE (dVentas:Departamento {nombre: 'Ventas', codigo: 'VEN'})

// Empleados
CREATE (e1:Empleado {
  id: 1,
  nombre: 'Ana García',
  email: 'ana.garcia@empresa.com',
  puesto: 'Desarrolladora Senior'
})

CREATE (e2:Empleado {
  id: 2,
  nombre: 'Carlos López',
  email: 'carlos.lopez@empresa.com',
  puesto: 'Project Manager'
})

CREATE (e3:Empleado {
  id: 3,
  nombre: 'María Rodríguez',
  email: 'maria.rodriguez@empresa.com',
  puesto: 'Especialista en RRHH'
})

CREATE (e4:Empleado {
  id: 4,
  nombre: 'Juan Martínez',
  email: 'juan.martinez@empresa.com',
  puesto: 'Desarrollador Junior'
})

CREATE (e5:Empleado {
  id: 5,
  nombre: 'Laura Sánchez',
  email: 'laura.sanchez@empresa.com',
  puesto: 'Ejecutiva de Ventas'
})

// Proyectos
CREATE (p1:Proyecto {
  id: 1,
  nombre: 'Sistema de Gestión Interna',
  descripcion: 'Desarrollo de sistema para gestión de recursos internos',
  fechaInicio: date('2024-01-15'),
  fechaFin: date('2024-06-30'),
  estado: 'En Progreso'
})

CREATE (p2:Proyecto {
  id: 2,
  nombre: 'Portal de Clientes',
  descripcion: 'Desarrollo de portal web para clientes',
  fechaInicio: date('2024-03-01'),
  fechaFin: date('2024-08-15'),
  estado: 'En Progreso'
})