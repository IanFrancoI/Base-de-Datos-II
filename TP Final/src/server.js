const express = require("express")
const cors = require("cors")
const dotenv = require("dotenv")
const connectDB = require("./utils/db")

// Importar rutas
const habitacionesRoutes = require("./Routes/habitaciones.routes")
const reservasRoutes = require("./Routes/reservas.routes")

// Cargar variables de entorno (.env)
dotenv.config()

// Conectar a MongoDB
connectDB()

// Crear app de Express
const app = express()

// Middleware
app.use(cors())
app.use(express.json())
app.use(express.urlencoded({ extended: true }))

// Rutas
app.use("/api/habitaciones", habitacionesRoutes)
app.use("/api/reservas", reservasRoutes)

// Ruta de prueba
app.get("/", (req, res) => {
  res.json({
    message: "🎉 API del Sistema de Gestión Hotelera funcionando",
    endpoints: {
      habitaciones: "/api/habitaciones",
      reservas: "/api/reservas",
    },
  })
})

// Puerto
const PORT = process.env.PORT || 3000

// Levantar el servidor
app.listen(PORT, () => {
  console.log(`🚀 Servidor corriendo en http://localhost:${PORT}`)
})

