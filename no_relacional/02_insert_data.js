db.viajes.insertMany([
  {
    estado: "Delivered",
    fecha_entrega: new Date("2026-07-05"),
    ruta: { origen: "Lima", destino: "Callao" },
    calificacion: 5.0
  },
  {
    estado: "In Transit",
    fecha_entrega: new Date("2026-07-06"),
    ruta: { origen: "Lima", destino: "Huacho" },
    calificacion: 4.0
  },
  {
    estado: "Delivered",
    fecha_entrega: new Date("2026-07-07"),
    ruta: { origen: "Lima", destino: "Ica" },
    calificacion: 5.0
  },
  {
    estado: "Delivered",
    fecha_entrega: new Date("2026-07-08"),
    ruta: { origen: "Lima", destino: "Huancayo" },
    calificacion: 5.0
  },
  {
    estado: "Pending",
    fecha_entrega: new Date("2026-07-09"),
    ruta: { origen: "Lima", destino: "Huancayo" },
    calificacion: 4.0
  }
]);

const viaje1 = db.viajes.findOne({ "ruta.destino": "Callao" })._id;
const viaje2 = db.viajes.findOne({ "ruta.destino": "Huacho" })._id;
const viaje3 = db.viajes.findOne({ "ruta.destino": "Ica" })._id;
const viaje4 = db.viajes.findOne({ estado: "Delivered", "ruta.destino": "Huancayo" })._id;
const viaje5 = db.viajes.findOne({ estado: "Pending" })._id;

db.detalle_viaje.insertMany([
  {
    viaje_id: viaje1,
    transportista: {
      nombre: "Juan Perez",
      calificacion: 4.8,
      licencia: "LIC0001"
    },
    vehiculo: { placa: "ABC123", tipo: "Camión" },
    cliente: { nombre: "Juan Perez", empresa: "Comercial Andina SAC" },
    pago: { monto: 1180.0, metodo: "Transferencia", estado: "Paid" },
    incidencias: []
  },
  {
    viaje_id: viaje2,
    transportista: {
      nombre: "Maria Lopez",
      calificacion: 4.5,
      licencia: "LIC0002"
    },
    vehiculo: { placa: "ABC124", tipo: "Camión" },
    cliente: { nombre: "Maria Lopez", empresa: "Logistica Peru SAC" },
    pago: { monto: 1750.0, metodo: "Yape", estado: "Pending" },
    incidencias: [
      { tipo: "Weather", estado: "Open" }
    ]
  },
  {
    viaje_id: viaje3,
    transportista: {
      nombre: "Carlos Ramirez",
      calificacion: 4.7,
      licencia: "LIC0003"
    },
    vehiculo: { placa: "ABC125", tipo: "Furgón" },
    cliente: { nombre: "Carlos Ramirez", empresa: "Importaciones Lima SAC" },
    pago: { monto: 2450.0, metodo: "Transferencia", estado: "Paid" },
    incidencias: []
  },
  {
    viaje_id: viaje4,
    transportista: {
      nombre: "Ana Torres",
      calificacion: 4.2,
      licencia: "LIC0004"
    },
    vehiculo: { placa: "ABC126", tipo: "Camión" },
    cliente: { nombre: "Ana Torres", empresa: "Transportes Norte SAC" },
    pago: { monto: 3150.0, metodo: "Efectivo", estado: "Paid" },
    incidencias: [
      { tipo: "Traffic", estado: "Closed" }
    ]
  },
  {
    viaje_id: viaje5,
    transportista: {
      nombre: "Luis Gomez",
      calificacion: 4.9,
      licencia: "LIC0005"
    },
    vehiculo: { placa: "ABC127", tipo: "Camión" },
    cliente: { nombre: "Luis Gomez", empresa: "Distribuciones Sur SAC" },
    pago: { monto: 3950.0, metodo: "Transferencia", estado: "Pending" },
    incidencias: []
  }
]);

const detalle2 = db.detalle_viaje.findOne({ "transportista.licencia": "LIC0002" })._id;
const detalle4 = db.detalle_viaje.findOne({ "transportista.licencia": "LIC0004" })._id;

db.incidencias.insertMany([
  {
    detalle_incidencias_id: detalle2,
    tipo: "Weather",
    descripcion: "Lluvias intensas en ruta a Huacho.",
    estado: "Open"
  },
  {
    detalle_incidencias_id: detalle4,
    tipo: "Traffic",
    descripcion: "Congestión vehicular en la Panamericana Sur.",
    estado: "Closed"
  },
  {
    detalle_incidencias_id: detalle4,
    tipo: "Delay",
    descripcion: "Retraso por revisión policial en carretera.",
    estado: "Closed"
  }
]);

db.solicitud.insertMany([
  {
    estado: "Pending",
    fecha_solicitud: new Date("2026-07-05"),
    ruta: { origen: "Lima", destino: "Trujillo" },
    precio_ofertado: 1200.0,
    cliente: { nombre: "Jorge Castro", empresa: "Comercial Andina SAC" }
  },
  {
    estado: "Accepted",
    fecha_solicitud: new Date("2026-07-06"),
    ruta: { origen: "Lima", destino: "Arequipa" },
    precio_ofertado: 1800.0,
    cliente: { nombre: "Patricia Morales", empresa: "Logistica Peru SAC" }
  },
  {
    estado: "Pending",
    fecha_solicitud: new Date("2026-07-07"),
    ruta: { origen: "Lima", destino: "Cusco" },
    precio_ofertado: 2500.0,
    cliente: { nombre: "Diego Navarro", empresa: "Importaciones Lima SAC" }
  },
  {
    estado: "Completed",
    fecha_solicitud: new Date("2026-07-08"),
    ruta: { origen: "Lima", destino: "Piura" },
    precio_ofertado: 3200.0,
    cliente: { nombre: "Valeria Silva", empresa: "Transportes Norte SAC" }
  },
  {
    estado: "Pending",
    fecha_solicitud: new Date("2026-07-09"),
    ruta: { origen: "Lima", destino: "Chiclayo" },
    precio_ofertado: 4000.0,
    cliente: { nombre: "Fernando Ruiz", empresa: "Distribuciones Sur SAC" }
  }
]);

const sol1 = db.solicitud.findOne({ "ruta.destino": "Trujillo" })._id;
const sol2 = db.solicitud.findOne({ "ruta.destino": "Arequipa" })._id;
const sol3 = db.solicitud.findOne({ "ruta.destino": "Cusco" })._id;
const sol4 = db.solicitud.findOne({ "ruta.destino": "Piura" })._id;
const sol5 = db.solicitud.findOne({ "ruta.destino": "Chiclayo" })._id;

db.ofertas.insertMany([
  {
    solicitud_id: sol1,
    transportista: {
      nombre: "Juan Perez",
      vehiculo: { tipo: "Camión", placa: "ABC123" }
    },
    precio: 1180.0,
    fecha_entrega_estimada: new Date("2026-07-10"),
    estado_oferta: "Accepted"
  },
  {
    solicitud_id: sol1,
    transportista: {
      nombre: "Maria Lopez",
      vehiculo: { tipo: "Camión", placa: "ABC124" }
    },
    precio: 1250.0,
    fecha_entrega_estimada: new Date("2026-07-11"),
    estado_oferta: "Pending"
  },
  {
    solicitud_id: sol2,
    transportista: {
      nombre: "Carlos Ramirez",
      vehiculo: { tipo: "Furgón", placa: "ABC125" }
    },
    precio: 1750.0,
    fecha_entrega_estimada: new Date("2026-07-12"),
    estado_oferta: "Accepted"
  },
  {
    solicitud_id: sol3,
    transportista: {
      nombre: "Ana Torres",
      vehiculo: { tipo: "Camión", placa: "ABC126" }
    },
    precio: 2450.0,
    fecha_entrega_estimada: new Date("2026-07-13"),
    estado_oferta: "Pending"
  },
  {
    solicitud_id: sol4,
    transportista: {
      nombre: "Luis Gomez",
      vehiculo: { tipo: "Camión", placa: "ABC127" }
    },
    precio: 3150.0,
    fecha_entrega_estimada: new Date("2026-07-14"),
    estado_oferta: "Accepted"
  },
  {
    solicitud_id: sol5,
    transportista: {
      nombre: "Carmen Rojas",
      vehiculo: { tipo: "Furgón", placa: "ABC128" }
    },
    precio: 3950.0,
    fecha_entrega_estimada: new Date("2026-07-15"),
    estado_oferta: "Pending"
  }
]);
