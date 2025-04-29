# Ejercicio 3:
- Uso de proyección Recupera los nombres y puestos de todos los empleados, sin mostrar el _id.

## Solucion

Se utiliza la funcion find() con {},                      
  { nombre: 1, puesto: 1, _id: 0 } 
  para mostrar los campos nombre y puesto y no mostrar el _id.