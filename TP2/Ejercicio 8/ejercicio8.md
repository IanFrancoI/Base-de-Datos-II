# Ejercicio 8

## Codigo utilizado para $lookup$

- db.alumnos.aggregate([
  {
    $lookup: {
      from: "cursos",           
      localField: "cursos",     
      foreignField: "_id",     
      as: "cursos_inscriptos"   
    }
  }
])

## Resultado
- Devuelve un array de objetos con los datos de los cursos en los que está inscripto cada alumno.