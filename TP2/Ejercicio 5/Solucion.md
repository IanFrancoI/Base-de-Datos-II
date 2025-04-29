# Ejercicio 5

- Agregación Dada una colección ventas con campos producto, cantidad y precio_unitario, calcula el total de ventas por producto usando $group y $sum.

## Solucion

- Creamos la coleccion de venta utilizando los Datos.json
- Hacemos la agregacion de los datos
- Hacemos la suma de los datos
- Hacemos la proyeccion de los datos

## Codigo utilizado

- db.Ventas.aggregate([
  {
    $project: {
      producto: 1,
      total_venta: { $multiply: ["$cantidad", "$precio_unitario"] }
    }
  },
  {
    $group: {
      _id: "$producto",
      total_por_producto: { $sum: "$total_venta" }
    }
  }
])