db.createCollection("viajes", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            title: "viajes",
            properties: {
                _id: { bsonType: "objectId" },
                estado: { bsonType: "string" },
                fecha_entrega: { bsonType: "date" },
                ruta: {
                    bsonType: "object",
                    properties: {
                        origen: { bsonType: "string" },
                        destino: { bsonType: "string" }
                    },
                    additionalProperties: false
                },
                calificacion: { bsonType: "double" }
            },
            additionalProperties: false
        }
    },
    validationLevel: "off",
    validationAction: "warn"
});

db.createCollection("detalle_viaje", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            title: "detalle_viaje",
            properties: {
                _id: { bsonType: "objectId" },
                viaje_id: { bsonType: "objectId" },
                transportista: {
                    bsonType: "object",          
                    properties: {
                        nombre: { bsonType: "string" },
                        calificacion: { bsonType: "double" },
                        licencia: { bsonType: "string" }
                    },
                    additionalProperties: false
                },
                vehiculo: {
                    bsonType: "object",
                    properties: {
                        placa: { bsonType: "string" },
                        tipo: { bsonType: "string" }
                    },
                    additionalProperties: false
                },
                cliente: {                      
                    bsonType: "object",
                    properties: {
                        nombre: { bsonType: "string" },
                        empresa: { bsonType: "string" }
                    },
                    additionalProperties: false
                },
                pago: {
                    bsonType: "object",
                    properties: {
                        monto: { bsonType: "double" },
                        metodo: { bsonType: "string" },
                        estado: { bsonType: "string" }
                    },
                    additionalProperties: false
                },
                incidencias: {
                    bsonType: "array",
                    items: {
                        bsonType: "object",
                        properties: {
                            tipo: { bsonType: "string" },
                            estado: { bsonType: "string" }
                        },
                        additionalProperties: false
                    }
                }
            },
            additionalProperties: false
        }
    },
    validationLevel: "off",
    validationAction: "warn"
});

db.createCollection("incidencias", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            title: "incidencias",
            properties: {
                _id: { bsonType: "objectId" },
                detalle_incidencias_id: { bsonType: "objectId" }, 
                tipo: { bsonType: "string" },
                descripcion: { bsonType: "string" },
                estado: { bsonType: "string" }
            },
            additionalProperties: false
        }
    },
    validationLevel: "off",
    validationAction: "warn"
});

db.createCollection("solicitud", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            title: "solicitud",
            properties: {
                _id: { bsonType: "objectId" },
                estado: { bsonType: "string" },
                fecha_solicitud: { bsonType: "date" },
                ruta: {
                    bsonType: "object",
                    properties: {
                        origen: { bsonType: "string" },
                        destino: { bsonType: "string" }
                    },
                    additionalProperties: false
                },
                precio_ofertado: { bsonType: "double" },
                cliente: {                        
                    bsonType: "object",
                    properties: {
                        nombre: { bsonType: "string" },
                        empresa: { bsonType: "string" }
                    },
                    additionalProperties: false
                }
            },
            additionalProperties: false
        }
    },
    validationLevel: "off",
    validationAction: "warn"
});

db.createCollection("ofertas", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            title: "ofertas",
            properties: {
                _id: { bsonType: "objectId" },
                solicitud_id: { bsonType: "objectId" }, 
                transportista: {
                    bsonType: "object",
                    properties: {
                        nombre: { bsonType: "string" },
                        vehiculo: {
                            bsonType: "object",
                            properties: {
                                tipo: { bsonType: "string" },
                                placa: { bsonType: "string" }
                            },
                            additionalProperties: false
                        }
                    },
                    additionalProperties: false
                },
                precio: { bsonType: "double" },
                fecha_entrega_estimada: { bsonType: "date" },
                estado_oferta: { bsonType: "string" }
            },
            additionalProperties: false
        }
    },
    validationLevel: "off",
    validationAction: "warn"
});
