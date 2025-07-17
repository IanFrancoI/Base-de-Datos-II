# Proyecto 5: Sistema de Reservas de Hotel
### Dificultad : ⭐⭐⭐

## Descripción
Plataforma para gestionar habitaciones, huéspedes y reservas de un hotel.

## Requerimientos
- Catálogo de habitaciones con diferentes tipos y precios
- Sistema de reservas con fechas de entrada y salida
- Gestión de huéspedes y su historial
- Control de disponibilidad de habitaciones

## Funciones a Implementar
1) consultarDisponibilidad(fechaEntrada, fechaSalida, tipo) - Ver habitaciones disponibles
2) crearReserva(reserva) - Crear nueva reserva
3) cancelarReserva(reservaId) - Cancelar reserva existente
4) checkIn(reservaId) - Registrar entrada del huésped
5) reporteOcupacion(mes, año) - Reporte de ocupación mensual

## Instalación
1. Instala las dependencias: `npm install` o `npm i`
2. Llena la base de datos con datos de prueba: `npm run seed:habitaciones` y `
npm run seed:reservas`
3. Inicia el servidor: `npm start` o `npm run dev`
4. Accede a la aplicación en: `http://localhost:3000`

## Datos para .env
- MONGO_URI=mongodb://localhost:27017/TPfinal
- PORT=3000
- NODE_ENV=development