INSERT INTO USERS (first_name,last_name,email,phone,password)
VALUES
('Juan','Perez','juan.perez@gmail.com','900000001','12345'),
('Maria','Lopez','maria.lopez@gmail.com','900000002','12345'),
('Carlos','Ramirez','carlos.ramirez@gmail.com','900000003','12345'),
('Ana','Torres','ana.torres@gmail.com','900000004','12345'),
('Luis','Gomez','luis.gomez@gmail.com','900000005','12345'),
('Carmen','Rojas','carmen.rojas@gmail.com','900000006','12345'),
('Pedro','Sanchez','pedro.sanchez@gmail.com','900000007','12345'),
('Lucia','Vargas','lucia.vargas@gmail.com','900000008','12345'),
('Miguel','Flores','miguel.flores@gmail.com','900000009','12345'),
('Rosa','Diaz','rosa.diaz@gmail.com','900000010','12345'),
('Jorge','Castro','jorge.castro@gmail.com','900000011','12345'),
('Patricia','Morales','patricia.morales@gmail.com','900000012','12345'),
('Diego','Navarro','diego.navarro@gmail.com','900000013','12345'),
('Valeria','Silva','valeria.silva@gmail.com','900000014','12345'),
('Fernando','Ruiz','fernando.ruiz@gmail.com','900000015','12345'),
('Daniela','Mendoza','daniela.mendoza@gmail.com','900000016','12345'),
('Ricardo','Herrera','ricardo.herrera@gmail.com','900000017','12345'),
('Gabriela','Campos','gabriela.campos@gmail.com','900000018','12345'),
('Jose','Paredes','jose.paredes@gmail.com','900000019','12345'),
('Andrea','Salazar','andrea.salazar@gmail.com','900000020','12345');

INSERT INTO CUSTOMERS
(ruc,business_name,customer_type,fiscal_address,user_id)
VALUES
('20100000001','Comercial Andina SAC','juridico','Av. Arequipa 101',1),
('20100000002','Logistica Peru SAC','juridico','Av. Brasil 220',2),
('20100000003','Importaciones Lima SAC','juridico','Av. Colonial 150',3),
('20100000004','Transportes Norte SAC','juridico','Av. Javier Prado 345',4),
('20100000005','Distribuciones Sur SAC','juridico','Av. Benavides 410',5),
('20100000006','Grupo Delta SAC','juridico','Av. La Marina 520',6),
('20100000007','Mercado Express SAC','juridico','Av. Universitaria 615',7),
('20100000008','Inversiones Pacifico SAC','juridico','Av. Canadá 120',8),
('20100000009','Almacenes Perú SAC','juridico','Av. Faucett 900',9),
('20100000010','Corporación Atlas SAC','juridico','Av. Tacna 221',10),
('20100000011','Empresa Orion SAC','juridico','Av. Grau 880',11),
('20100000012','Servicios Titan SAC','juridico','Av. Abancay 456',12),
('20100000013','Negocios Lima SAC','juridico','Av. Alfonso Ugarte 115',13),
('20100000014','Red Logistics SAC','juridico','Av. Venezuela 301',14),
('20100000015','Global Cargo SAC','juridico','Av. Ejército 150',15),
('20100000016','Fast Delivery SAC','juridico','Av. Primavera 750',16),
('20100000017','Express Perú SAC','juridico','Av. Aviación 980',17),
('20100000018','Comercial Omega SAC','juridico','Av. Angamos 450',18),
('20100000019','Inversiones Sigma SAC','juridico','Av. Tomás Marsano 600',19),
('20100000020','Corporación Andes SAC','juridico','Av. Salaverry 780',20);

INSERT INTO CARRIERS
(license_number,license_expiration_date,experience_years,average_rating,user_id)
VALUES
('LIC0001','2029-01-15',5,4.8,1),
('LIC0002','2029-02-15',6,4.5,2),
('LIC0003','2029-03-15',7,4.7,3),
('LIC0004','2029-04-15',4,4.2,4),
('LIC0005','2029-05-15',10,4.9,5),
('LIC0006','2029-06-15',8,4.6,6),
('LIC0007','2029-07-15',9,4.8,7),
('LIC0008','2029-08-15',3,4.1,8),
('LIC0009','2029-09-15',11,5.0,9),
('LIC0010','2029-10-15',6,4.4,10),
('LIC0011','2029-11-15',5,4.3,11),
('LIC0012','2029-12-15',12,4.9,12),
('LIC0013','2030-01-15',8,4.7,13),
('LIC0014','2030-02-15',9,4.8,14),
('LIC0015','2030-03-15',7,4.6,15),
('LIC0016','2030-04-15',5,4.5,16),
('LIC0017','2030-05-15',6,4.4,17),
('LIC0018','2030-06-15',13,5.0,18),
('LIC0019','2030-07-15',4,4.2,19),
('LIC0020','2030-08-15',10,4.9,20);

INSERT INTO VEHICLES
(license_plate,vehicle_type,load_capacity_kg,
capacity_volume_m3,brand,model,carrier_id)
VALUES
('ABC123','Camión',5000,22,'Volvo','FH',1),
('ABC124','Camión',6000,24,'Mercedes','Actros',2),
('ABC125','Furgón',3000,18,'Isuzu','NPR',3),
('ABC126','Camión',7000,28,'Scania','R450',4),
('ABC127','Camión',8000,30,'Volvo','FM',5),
('ABC128','Furgón',3500,20,'Hyundai','HD78',6),
('ABC129','Camión',9000,32,'MAN','TGX',7),
('ABC130','Furgón',2500,16,'Fuso','Canter',8),
('ABC131','Camión',10000,35,'Scania','P360',9),
('ABC132','Camión',6500,26,'Mercedes','Atego',10),
('ABC133','Camión',7200,27,'Volvo','FH16',11),
('ABC134','Camión',7500,29,'MAN','TGS',12),
('ABC135','Furgón',2800,17,'Hyundai','Mighty',13),
('ABC136','Camión',8200,31,'Scania','R500',14),
('ABC137','Camión',5400,23,'Isuzu','Forward',15),
('ABC138','Camión',6100,25,'Mercedes','Axor',16),
('ABC139','Furgón',3300,19,'Fuso','Rosa',17),
('ABC140','Camión',9100,33,'Volvo','FMX',18),
('ABC141','Camión',6800,27,'MAN','TGM',19),
('ABC142','Camión',7800,30,'Scania','G410',20);

INSERT INTO ROUTES
(origin_city,origin_department,destination_city,destination_department,distance_km,estimated_time_hours)
VALUES
('Lima','Lima','Callao','Callao',25,1),
('Lima','Lima','Huacho','Lima',150,3),
('Lima','Lima','Ica','Ica',305,5),
('Lima','Lima','Huancayo','Junín',310,7),
('Lima','Lima','Huaraz','Áncash',405,8),
('Lima','Lima','Trujillo','La Libertad',560,9),
('Lima','Lima','Chiclayo','Lambayeque',770,12),
('Lima','Lima','Piura','Piura',980,15),
('Lima','Lima','Cusco','Cusco',1100,20),
('Lima','Lima','Arequipa','Arequipa',1000,16),
('Lima','Lima','Tacna','Tacna',1290,20),
('Lima','Lima','Pucallpa','Ucayali',840,14),
('Lima','Lima','Tarapoto','San Martín',1380,24),
('Lima','Lima','Cajamarca','Cajamarca',860,15),
('Lima','Lima','Ayacucho','Ayacucho',570,10),
('Lima','Lima','Puno','Puno',1310,21),
('Lima','Lima','Moquegua','Moquegua',1220,19),
('Lima','Lima','Tumbes','Tumbes',1270,20),
('Lima','Lima','Chimbote','Áncash',430,8),
('Lima','Lima','Nazca','Ica',450,7);

INSERT INTO RATES
(base_price_km,price_per_kg,fragile_surcharge,route_id)
VALUES
(2.50,0.45,50,1),
(2.70,0.50,50,2),
(2.90,0.55,60,3),
(3.00,0.60,60,4),
(3.10,0.62,70,5),
(3.20,0.65,70,6),
(3.30,0.68,80,7),
(3.40,0.70,80,8),
(3.50,0.72,90,9),
(3.60,0.75,90,10),
(3.70,0.78,100,11),
(3.80,0.80,100,12),
(3.90,0.82,110,13),
(4.00,0.85,110,14),
(4.10,0.88,120,15),
(4.20,0.90,120,16),
(4.30,0.92,130,17),
(4.40,0.95,130,18),
(4.50,1.00,140,19),
(4.60,1.05,150,20);

INSERT INTO CARGOS
(cargo_type,weight_kg,volume_m3,is_fragile,description)
VALUES
('Electrodomésticos',1200,10,1,'Refrigeradoras'),
('Materiales de construcción',5000,25,0,'Cemento'),
('Muebles',2500,18,1,'Sofás'),
('Alimentos',1800,12,0,'Productos no perecibles'),
('Maquinaria',7000,30,0,'Equipo industrial'),
('Medicamentos',900,8,1,'Medicinas'),
('Ropa',1100,15,0,'Prendas textiles'),
('Computadoras',600,6,1,'Equipos informáticos'),
('Vidrios',1500,14,1,'Paneles de vidrio'),
('Repuestos',2000,11,0,'Repuestos automotrices'),
('Pinturas',1700,13,1,'Baldes de pintura'),
('Herramientas',2200,16,0,'Herramientas industriales'),
('Bebidas',3000,20,0,'Gaseosas'),
('Productos químicos',2800,18,1,'Químicos'),
('Papel',3500,22,0,'Bobinas de papel'),
('Cerámicos',4200,24,1,'Cerámicos'),
('Madera',4600,28,0,'Tableros'),
('Equipos médicos',1400,9,1,'Instrumental médico'),
('Juguetes',900,10,0,'Juguetes'),
('Equipos eléctricos',2100,17,1,'Transformadores');

INSERT INTO TRANSPORT_REQUESTS
(required_date, request_status, offered_price, customer_id, cargo_id, rate_id)
VALUES
('2026-07-05','Pending',1200,1,1,1),
('2026-07-06','Pending',1800,2,2,2),
('2026-07-07','Accepted',2500,3,3,3),
('2026-07-08','Completed',3200,4,4,4),
('2026-07-09','Pending',4000,5,5,5),
('2026-07-10','Completed',1700,6,6,6),
('2026-07-11','Accepted',1500,7,7,7),
('2026-07-12','Pending',2100,8,8,8),
('2026-07-13','Completed',2800,9,9,9),
('2026-07-14','Accepted',3500,10,10,10),
('2026-07-15','Pending',2300,11,11,11),
('2026-07-16','Completed',3100,12,12,12),
('2026-07-17','Accepted',4200,13,13,13),
('2026-07-18','Pending',2700,14,14,14),
('2026-07-19','Completed',3900,15,15,15),
('2026-07-20','Accepted',4600,16,16,16),
('2026-07-21','Pending',5200,17,17,17),
('2026-07-22','Completed',6000,18,18,18),
('2026-07-23','Accepted',1900,19,19,19),
('2026-07-24','Pending',2600,20,20,20);

INSERT INTO TRANSPORT_OFFERS
(offered_price,estimated_delivery_date,offer_status,carrier_id,request_id)
VALUES
(1180,'2026-07-05','Accepted',1,1),
(1750,'2026-07-06','Pending',2,2),
(2450,'2026-07-07','Accepted',3,3),
(3150,'2026-07-08','Accepted',4,4),
(3950,'2026-07-09','Pending',5,5),
(1650,'2026-07-10','Accepted',6,6),
(1480,'2026-07-11','Accepted',7,7),
(2050,'2026-07-12','Pending',8,8),
(2750,'2026-07-13','Accepted',9,9),
(3450,'2026-07-14','Accepted',10,10),
(2250,'2026-07-15','Pending',11,11),
(3050,'2026-07-16','Accepted',12,12),
(4150,'2026-07-17','Accepted',13,13),
(2650,'2026-07-18','Pending',14,14),
(3850,'2026-07-19','Accepted',15,15),
(4550,'2026-07-20','Accepted',16,16),
(5150,'2026-07-21','Pending',17,17),
(5950,'2026-07-22','Accepted',18,18),
(1850,'2026-07-23','Accepted',19,19),
(2550,'2026-07-24','Pending',20,20);

INSERT INTO SHIPMENTS
(estimated_delivery_date,actual_delivery_date,shipment_status,offer_id)
VALUES
('2026-07-05','2026-07-05','Delivered',1),
('2026-07-06',NULL,'In Transit',2),
('2026-07-07','2026-07-07','Delivered',3),
('2026-07-08','2026-07-08','Delivered',4),
('2026-07-09',NULL,'Pending',5),
('2026-07-10','2026-07-10','Delivered',6),
('2026-07-11','2026-07-11','Delivered',7),
('2026-07-12',NULL,'In Transit',8),
('2026-07-13','2026-07-13','Delivered',9),
('2026-07-14','2026-07-14','Delivered',10),
('2026-07-15',NULL,'Pending',11),
('2026-07-16','2026-07-16','Delivered',12),
('2026-07-17','2026-07-17','Delivered',13),
('2026-07-18',NULL,'In Transit',14),
('2026-07-19','2026-07-19','Delivered',15),
('2026-07-20','2026-07-20','Delivered',16),
('2026-07-21',NULL,'Pending',17),
('2026-07-22','2026-07-22','Delivered',18),
('2026-07-23','2026-07-23','Delivered',19),
('2026-07-24',NULL,'In Transit',20);

INSERT INTO PAYMENTS
(total_amount,payment_method,payment_status,payment_date,shipment_id)
VALUES
(1180,'Transferencia','Paid','2026-07-05',1),
(1750,'Yape','Pending',NULL,2),
(2450,'Transferencia','Paid','2026-07-07',3),
(3150,'Efectivo','Paid','2026-07-08',4),
(3950,'Transferencia','Pending',NULL,5),
(1650,'Yape','Paid','2026-07-10',6),
(1480,'Transferencia','Paid','2026-07-11',7),
(2050,'Efectivo','Pending',NULL,8),
(2750,'Yape','Paid','2026-07-13',9),
(3450,'Transferencia','Paid','2026-07-14',10),
(2250,'Efectivo','Pending',NULL,11),
(3050,'Transferencia','Paid','2026-07-16',12),
(4150,'Yape','Paid','2026-07-17',13),
(2650,'Transferencia','Pending',NULL,14),
(3850,'Efectivo','Paid','2026-07-19',15),
(4550,'Yape','Paid','2026-07-20',16),
(5150,'Transferencia','Pending',NULL,17),
(5950,'Transferencia','Paid','2026-07-22',18),
(1850,'Efectivo','Paid','2026-07-23',19),
(2550,'Yape','Pending',NULL,20);

INSERT INTO RATINGS
(score,comment,shipment_id,customer_id)
VALUES
(5,'Excelente servicio.',1,1),
(4,'Entrega puntual.',2,2),
(5,'Muy recomendado.',3,3),
(5,'Todo llegó en buen estado.',4,4),
(4,'Buen servicio.',5,5),
(5,'Transportista muy amable.',6,6),
(5,'Muy rápido.',7,7),
(4,'Cumplió con lo acordado.',8,8),
(5,'Excelente atención.',9,9),
(5,'Muy profesional.',10,10),
(4,'Buena comunicación.',11,11),
(5,'Entrega segura.',12,12),
(5,'Mercadería intacta.',13,13),
(4,'Sin inconvenientes.',14,14),
(5,'Muy satisfecho.',15,15),
(5,'Lo volvería a contratar.',16,16),
(4,'Servicio eficiente.',17,17),
(5,'Excelente experiencia.',18,18),
(5,'Muy responsable.',19,19),
(4,'Todo conforme.',20,20);

INSERT INTO TRACKING_RECORDS
(latitude,longitude,shipment_id)
VALUES
(-12.0464,-77.0428,1),
(-12.0500,-77.0400,2),
(-12.0550,-77.0380,3),
(-12.0600,-77.0350,4),
(-12.0650,-77.0320,5),
(-12.0700,-77.0300,6),
(-12.0750,-77.0280,7),
(-12.0800,-77.0250,8),
(-12.0850,-77.0220,9),
(-12.0900,-77.0200,10),
(-12.0950,-77.0180,11),
(-12.1000,-77.0150,12),
(-12.1050,-77.0120,13),
(-12.1100,-77.0100,14),
(-12.1150,-77.0080,15),
(-12.1200,-77.0050,16),
(-12.1250,-77.0020,17),
(-12.1300,-77.0000,18),
(-12.1350,-76.9980,19),
(-12.1400,-76.9950,20);

INSERT INTO NOTIFICATIONS
(message,is_read,user_id,shipment_id)
VALUES
('Su envío fue registrado.',1,1,1),
('Su oferta fue aceptada.',1,2,2),
('El transportista inició el viaje.',0,3,3),
('Su envío está en camino.',0,4,4),
('Pago pendiente.',0,5,5),
('Pago confirmado.',1,6,6),
('Entrega programada.',1,7,7),
('Su envío está próximo a llegar.',0,8,8),
('Entrega completada.',1,9,9),
('Gracias por confiar en CargoXpress.',1,10,10),
('Nueva actualización del envío.',0,11,11),
('Pago recibido.',1,12,12),
('Envío entregado correctamente.',1,13,13),
('Incidencia registrada.',0,14,14),
('Mercadería en tránsito.',0,15,15),
('Entrega realizada.',1,16,16),
('Revise el estado del envío.',0,17,17),
('Califique el servicio.',0,18,18),
('Factura disponible.',1,19,19),
('Servicio finalizado.',1,20,20);

INSERT INTO INCIDENTS
(incident_type,description,incident_status,shipment_id,user_id)
VALUES
('Delay','Retraso por tráfico.','Closed',1,1),
('Weather','Lluvias intensas.','Open',2,2),
('Mechanical','Falla mecánica.','Closed',3,3),
('Traffic','Congestión vehicular.','Closed',4,4),
('Other','Cambio de ruta.','Open',5,5),
('Delay','Demora en carga.','Closed',6,6),
('Weather','Neblina.','Closed',7,7),
('Traffic','Accidente en carretera.','Open',8,8),
('Mechanical','Cambio de neumático.','Closed',9,9),
('Other','Inspección policial.','Closed',10,10),
('Delay','Espera en almacén.','Open',11,11),
('Traffic','Obras en carretera.','Closed',12,12),
('Mechanical','Revisión del motor.','Closed',13,13),
('Weather','Vientos fuertes.','Open',14,14),
('Other','Cambio de conductor.','Closed',15,15),
('Delay','Carga adicional.','Closed',16,16),
('Traffic','Desvío temporal.','Open',17,17),
('Mechanical','Mantenimiento preventivo.','Closed',18,18),
('Weather','Granizada.','Closed',19,19),
('Other','Verificación documental.','Closed',20,20);

INSERT INTO TRANSPORT_REQUESTS
(required_date, request_status, offered_price, customer_id, cargo_id, rate_id)
VALUES
('2026-07-25','Pending',3100,1,1,1),
('2026-07-26','Accepted',2700,2,2,2),
('2026-07-27','Completed',4500,3,3,3),
('2026-07-28','Pending',3800,4,4,4),
('2026-07-29','Accepted',5200,5,5,5),
('2026-07-30','Completed',4100,6,6,6),
('2026-07-31','Pending',2300,7,7,7),
('2026-08-01','Accepted',3400,8,8,8),
('2026-08-02','Completed',2900,9,9,9),
('2026-08-03','Pending',3600,10,10,10),
('2026-08-04','Accepted',4800,11,11,11),
('2026-08-05','Completed',3900,12,12,12),
('2026-08-06','Pending',4400,13,13,13),
('2026-08-07','Accepted',5100,14,14,14),
('2026-08-08','Completed',6200,15,15,15),
('2026-08-09','Pending',2800,16,16,16),
('2026-08-10','Accepted',3300,17,17,17),
('2026-08-11','Completed',4700,18,18,18),
('2026-08-12','Pending',3500,19,19,19),
('2026-08-13','Accepted',5400,20,20,20);

INSERT INTO TRANSPORT_OFFERS
(offered_price, estimated_delivery_date, offer_status, carrier_id, request_id)
VALUES
(3050,'2026-07-25','Accepted',1,21),
(2650,'2026-07-26','Accepted',2,22),
(4450,'2026-07-27','Accepted',3,23),
(3750,'2026-07-28','Pending',4,24),
(5150,'2026-07-29','Accepted',5,25),
(4050,'2026-07-30','Accepted',6,26),
(2250,'2026-07-31','Pending',7,27),
(3350,'2026-08-01','Accepted',8,28),
(2850,'2026-08-02','Accepted',9,29),
(3550,'2026-08-03','Pending',10,30),
(4750,'2026-08-04','Accepted',11,31),
(3850,'2026-08-05','Accepted',12,32),
(4350,'2026-08-06','Pending',13,33),
(5050,'2026-08-07','Accepted',14,34),
(6150,'2026-08-08','Accepted',15,35),
(2750,'2026-08-09','Pending',16,36),
(3250,'2026-08-10','Accepted',17,37),
(4650,'2026-08-11','Accepted',18,38),
(3450,'2026-08-12','Pending',19,39),
(5350,'2026-08-13','Accepted',20,40);

INSERT INTO SHIPMENTS
(estimated_delivery_date, actual_delivery_date, shipment_status, offer_id)
VALUES
('2026-07-25','2026-07-25','Delivered',21),
('2026-07-26','2026-07-26','Delivered',22),
('2026-07-27','2026-07-27','Delivered',23),
('2026-07-28',NULL,'In Transit',24),
('2026-07-29','2026-07-29','Delivered',25),
('2026-07-30','2026-07-30','Delivered',26),
('2026-07-31',NULL,'Pending',27),
('2026-08-01','2026-08-01','Delivered',28),
('2026-08-02','2026-08-02','Delivered',29),
('2026-08-03',NULL,'In Transit',30),
('2026-08-04','2026-08-04','Delivered',31),
('2026-08-05','2026-08-05','Delivered',32),
('2026-08-06',NULL,'Pending',33),
('2026-08-07','2026-08-07','Delivered',34),
('2026-08-08','2026-08-08','Delivered',35),
('2026-08-09',NULL,'In Transit',36),
('2026-08-10','2026-08-10','Delivered',37),
('2026-08-11','2026-08-11','Delivered',38),
('2026-08-12',NULL,'Pending',39),
('2026-08-13','2026-08-13','Delivered',40);
