// ejercicio 7

use ('tiendaOnline');

db.productos.aggregate([
    { $group: {
        _id: {
            $cond: [
                { $lt: ["$precio", 100] },
                "Económico",
                { $cond: [
                    { $lte: ["$precio", 500] },
                    "Estándar",
                    "Premium"
                ]}
            ]
        },
        cantidad: { $sum: 1 },
        productos: { $push: "$nombre" }
    }},
    { $project: {
        _id: 0,
        categoria: "$_id",
        cantidad: 1,
        productos: 1
    }}
]);

db.ventas.aggregate([
    { $group: {
        _id: {
            $cond: [
                { $lt: ["$total", 200] },
                "Pequeña",
                { $cond: [
                    { $lte: ["$total", 800] },
                    "Mediana",
                    "Grande"
                ]}
            ]
        },
        cantidad: { $sum: 1 },
        ventas: { $push: "$_id" }
    }},
    { $project: {
        _id: 0,
        tipo: "$_id",
        cantidad: 1,
        ventas: 1
    }}
]);