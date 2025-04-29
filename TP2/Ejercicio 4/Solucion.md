# Ejercicio 4

- Documentos embebidos Agrega un campo direccion que incluya calle, ciudad y codigo_postal.

## Solucion

- Se utiliza la funcion updateOne() y $set para actualizar el campo direccion, agregando los campos calle, ciudad y codigo_postal.

## Codigo usado

- db.Empleados1.updateOne(
  { nombre: "Martín Rivas" },
  {
    $set: {
      direccion: {
        calle: "Calle Falsa 456",
        ciudad: "Córdoba",
        codigo_postal: "5000"
      }
    }
  }
)