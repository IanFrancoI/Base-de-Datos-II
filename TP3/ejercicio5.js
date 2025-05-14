// Ejercicio 5

use ('tiendaOnline');

db.ventas.aggregate([
    { $lookup: {
        from: 'productos',
        localField: 'idProducto',
        foreignField: 'id',
        as: 'producto'
    }},
    { $unwind: '$producto' },
    { $project: {
        _id: 0,
        idVenta: '$id',
        idProducto: '$idProducto',
        total: '$total',
        producto: {
            nombre: '$producto.nombre',
            precio: '$producto.precio'
        }
    }}
]);


db.ventas.aggregate([
    { $lookup: {
        from: 'productos',
        localField: 'idProducto',
        foreignField: 'id',
        as: 'producto'
    }},
    { $unwind: '$producto' },
    { $group: {
        _id: '$producto.categoria',
        totalVendido: { $sum: '$total' }
    }},
    { $project: {
        _id: 0,
        categoria: '$_id',
        totalVendido: 1
    }}
]);