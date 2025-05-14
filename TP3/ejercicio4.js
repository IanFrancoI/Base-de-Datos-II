// Ejercicio 4

use ('tiendaOnline');

db.productos.aggregate([
    { $unwind: "$valoraciones" },
    { $group: { _id: "$_id", valoracion: { $push: "$valoraciones" } } },
    { $sort: { "valoracion": -1 } }
]);

db.productos.aggregate([
    { $unwind: "$valoraciones" },
    { $group: { _id: "$valoraciones.puntuacion", count: { $sum: 1 } } },
    { $sort: { "_id": 1 } }
]);

    

