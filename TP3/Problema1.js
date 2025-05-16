// Problema 1 

use ('tiendaOnline');

db.productos.aggregate([
    { $unwind: "$valoraciones" },
    { $group: { _id: "$_id", nombre: { $first: "$nombre" }, puntuacionPromedio: { $avg: "$valoraciones.puntuacion" }, cantidadValoraciones: { $sum: 1 } } },
    { $match: { cantidadValoraciones: { $gte: 2 } } },
    { $sort: { puntuacionPromedio: -1 } }, 
    { $limit: 2 }
]);
