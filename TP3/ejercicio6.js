// Ejercicio 6 

use ('tiendaOnline');

db.ventas.aggregate([
    { $project: {
        mes: { $month: "$fecha" },
        anio: { $year: "$fecha" },
        total: { $sum: "$total" }
    }},
    { $group: {
        _id: { mes: "$mes", anio: "$anio" },
        totalVendido: { $sum: "$total" }
    }},
    { $sort: { "_id.anio": 1, "_id.mes": 1 }}
]);


db.ventas.aggregate([
    { $project: {
        dia: { $dayOfWeek: "$fecha" },
        total: "$total"
    }},
    { $group: {
        _id: "$dia",
        totalVendido: { $sum: "$total" }
    }},
    { $sort: { totalVendido: -1 }}
]);