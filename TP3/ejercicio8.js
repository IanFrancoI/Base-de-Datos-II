// ejercicio 8 

use ('tiendaOnline');

db.productos.aggregate([
    { $lookup: {
        from: 'ventas',
        localField: '_id',
        foreignField: 'producto_id',
        as: 'ventas'
    }},
    { $unwind: '$ventas' },
    { $group: {
        _id: '$_id',
        nombre: { $first: '$nombre' },
        total_vendido: { $sum: '$ventas.cantidad' }
    }},
    { $sort: { total_vendido: -1 } },
    { $limit: 3 }
]);

db.productos.aggregate([
    { $lookup: {
        from: 'ventas',
        localField: '_id',
        foreignField: 'producto_id',
        as: 'ventas'
    }},
    { $unwind: '$ventas' },
    { $group: {
        _id: '$_id',
        nombre: { $first: '$nombre' },
        categoria: { $first: '$categoria' },
        total_vendido: { $sum: '$ventas.cantidad' },
        monto_total_generado: { $sum: { $multiply: ['$ventas.cantidad', '$precio'] } }
    }},
    { $sort: { monto_total_generado: -1 } },
]);

db.productos.aggregate([
    { $unwind: '$valoraciones' },
    { $group: {
        _id: '$_id',
        nombre: { $first: '$nombre' },
        puntuacion_promedio: { $avg: '$valoraciones.puntuacion' }
    }},
        { $project: {
        _id: 0,
        nombre: 1,
        puntuacion_promedio: 1
    }},
    { $sort: { puntuacion_promedio: -1 } }
]);

db.productos.aggregate([
    { $unwind: '$valoraciones' },
    { $group: {
        _id: null,
        promedio_general: { $avg: '$valoraciones.puntuacion' }
    }},
    { $project: {
        _id: 0,
        promedio_general: 1
    }}
]);

// En el ultimo punto no entendia si habia que hacer un promedio de todos los productos o de cada uno, por eso hice ambos
    
        

