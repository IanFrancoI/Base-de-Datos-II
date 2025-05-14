// Ejercicio 2 
use ('tiendaOnline');

db.productos.aggregate([
    { $group: {
        _id: "$categoria",
        precioPromedio: { $avg: "$precio" },
        precioMaximo: { $max: "$precio" },
        precioMinimo: { $min: "$precio" }
    } }
]);

db.ventas.aggregate([
    { $group: {
        _id: "$cliente.pais",
        totalTransacciones: { $sum: 1 },
        totalVentas: { $sum: "$total" },
    } }
]);