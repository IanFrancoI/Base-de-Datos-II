# Ejercicio 10

## Pasos a seguir:

1. Crear el usuario "Luciano": -> db.createUser({user: "Luciano", pwd: "contraseña", roles: [{role: "readWrite", db: "Empresa"}]})
2. Dar permisos de lectura y escritura: -> db.grantRolesToUser("Luciano", [{role: "readWrite", db: "Empresa"}])
3. Hacer backup (La clonacion de la base de datos): -> mongodump --host localhost:27017 --db Empresa --out backup
4. Hacer restore (Se restaura dicha base de datos): -> mongorestore --host localhost:27017 --db Empresa --drop backup
5. Finalmente, verificar que el usuario tenga permisos: -> db.getUsers()