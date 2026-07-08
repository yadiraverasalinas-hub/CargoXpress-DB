CREATE TABLE USERS
(
  user_id       int          NOT NULL IDENTITY(1,1),
  first_name    varchar(100) NOT NULL,
  last_name     varchar(100) NOT NULL,
  email         varchar(200) NOT NULL,
  phone         varchar(20)  NOT NULL,
  password      varchar(255) NOT NULL,
  registered_at datetime     NOT NULL DEFAULT GETDATE(),
  status        varchar(20)  NOT NULL DEFAULT 'active',
  PRIMARY KEY (user_id)
);

ALTER TABLE USERS ADD CONSTRAINT UQ_email UNIQUE (email);
ALTER TABLE USERS ADD CONSTRAINT UQ_phone UNIQUE (phone);

CREATE TABLE CUSTOMERS
(
  customer_id    int          NOT NULL IDENTITY(1,1),
  ruc            char(11)     NULL,
  business_name  varchar(100) NULL,
  customer_type  varchar(20)  NOT NULL DEFAULT 'natural',
  fiscal_address varchar(200) NULL,
  user_id        int          NOT NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE CARRIERS
(
  carrier_id              int         NOT NULL IDENTITY(1,1),
  license_number          varchar(20) NOT NULL,
  license_expiration_date date        NOT NULL,
  experience_years        int         NOT NULL DEFAULT 0,
  average_rating          float       NULL,
  user_id                 int         NOT NULL,
  PRIMARY KEY (carrier_id)
);

ALTER TABLE CARRIERS ADD CONSTRAINT UQ_license_number UNIQUE (license_number);

CREATE TABLE VEHICLES
(
  vehicle_id         int         NOT NULL IDENTITY(1,1),
  license_plate      char(6)     NOT NULL,
  vehicle_type       varchar(20) NOT NULL,
  load_capacity_kg   float       NOT NULL,
  capacity_volume_m3 float       NULL,
  brand              varchar(20) NOT NULL,
  model              varchar(20) NOT NULL,
  carrier_id         int         NOT NULL,
  PRIMARY KEY (vehicle_id)
);

ALTER TABLE VEHICLES ADD CONSTRAINT UQ_license_plate UNIQUE (license_plate);
ALTER TABLE VEHICLES ADD CONSTRAINT UQ_carrier_id UNIQUE (carrier_id);

CREATE TABLE ROUTES
(
  route_id               int          NOT NULL IDENTITY(1,1),
  origin_city            varchar(100) NOT NULL,
  origin_department      varchar(100) NOT NULL,
  destination_city       varchar(100) NOT NULL,
  destination_department varchar(100) NOT NULL,
  distance_km            float        NOT NULL,
  estimated_time_hours   float        NOT NULL,
  PRIMARY KEY (route_id)
);

CREATE TABLE RATES
(
  rate_id           int      NOT NULL IDENTITY(1,1),
  base_price_km     float    NOT NULL,
  price_per_kg      float    NOT NULL,
  fragile_surcharge float    NOT NULL DEFAULT 0.00,
  valid_from        datetime NOT NULL DEFAULT GETDATE(),
  route_id          int      NOT NULL,
  PRIMARY KEY (rate_id)
);

CREATE TABLE CARGOS
(
  cargo_id      int          NOT NULL IDENTITY(1,1),
  cargo_type    varchar(100) NOT NULL,
  weight_kg     float        NOT NULL,
  volume_m3     float        NULL,
  is_fragile    bit          NOT NULL DEFAULT 0,
  description   varchar(500) NULL,
  registered_at datetime     NOT NULL DEFAULT GETDATE(),
  PRIMARY KEY (cargo_id)
);

CREATE TABLE TRANSPORT_REQUESTS
(
  request_id     int           NOT NULL IDENTITY(1,1),
  request_date   datetime      NOT NULL DEFAULT GETDATE(),
  required_date  datetime      NOT NULL,
  request_status varchar(20)   NOT NULL DEFAULT 'Pending',
  offered_price  decimal(10,2) NOT NULL,
  customer_id    int           NOT NULL,
  cargo_id       int           NOT NULL,
  rate_id        int           NOT NULL,
  PRIMARY KEY (request_id)
);

CREATE TABLE TRANSPORT_OFFERS
(
  offer_id                int           NOT NULL IDENTITY(1,1),
  offered_price           decimal(10,2) NOT NULL,
  estimated_delivery_date datetime      NOT NULL,
  offer_date              datetime      NOT NULL DEFAULT GETDATE(),
  offer_status            varchar(20)   NOT NULL DEFAULT 'Pending',
  carrier_id              int           NOT NULL,
  request_id              int           NOT NULL,
  PRIMARY KEY (offer_id)
);

CREATE TABLE SHIPMENTS
(
  shipment_id             int         NOT NULL IDENTITY(1,1),
  accepted_date           datetime    NOT NULL DEFAULT GETDATE(),
  estimated_delivery_date datetime    NULL,
  actual_delivery_date    datetime    NULL,
  shipment_status         varchar(20) NOT NULL DEFAULT 'Pending',
  offer_id                int         NOT NULL,
  PRIMARY KEY (shipment_id)
);

CREATE TABLE TRACKING_RECORDS
(
  tracking_record_id int      NOT NULL IDENTITY(1,1),
  latitude           float    NOT NULL,
  longitude          float    NOT NULL,
  recorded_at        datetime NOT NULL DEFAULT GETDATE(),
  shipment_id        int      NOT NULL,
  PRIMARY KEY (tracking_record_id)
);

CREATE TABLE PAYMENTS
(
  payment_id     int          NOT NULL IDENTITY(1,1),
  total_amount   float NOT NULL,
  payment_method varchar(100) NOT NULL,
  payment_status varchar(20)  NOT NULL DEFAULT 'Pending',
  payment_date   datetime     NULL,
  shipment_id    int          NOT NULL,
  PRIMARY KEY (payment_id)
);

CREATE TABLE INCIDENTS
(
  incident_id     int          NOT NULL IDENTITY(1,1),
  incident_type   varchar(20)  NOT NULL,
  description     varchar(500) NULL,
  event_datetime  datetime     NOT NULL DEFAULT GETDATE(),
  incident_status varchar(20)  NOT NULL DEFAULT 'open',
  shipment_id     int          NOT NULL,
  user_id         int          NOT NULL,
  PRIMARY KEY (incident_id)
);

CREATE TABLE NOTIFICATIONS
(
  notification_id   int          NOT NULL IDENTITY(1,1),
  message           varchar(200) NOT NULL,
  notification_date datetime     NOT NULL DEFAULT GETDATE(),
  is_read           bit          NOT NULL DEFAULT 0,
  user_id           int          NOT NULL,
  shipment_id       int          NOT NULL,
  PRIMARY KEY (notification_id)
);

CREATE TABLE RATINGS
(
  rating_id   int          NOT NULL IDENTITY(1,1),
  score       int          NOT NULL,
  comment     varchar(500) NULL,
  rating_date datetime     NOT NULL DEFAULT GETDATE(),
  shipment_id int          NOT NULL,
  customer_id int          NOT NULL,
  PRIMARY KEY (rating_id)
);

ALTER TABLE NOTIFICATIONS
  ADD CONSTRAINT FK_USERS_TO_NOTIFICATIONS
    FOREIGN KEY (user_id)
    REFERENCES USERS (user_id);

ALTER TABLE RATINGS
  ADD CONSTRAINT FK_SHIPMENTS_TO_RATINGS
    FOREIGN KEY (shipment_id)
    REFERENCES SHIPMENTS (shipment_id);

ALTER TABLE RATINGS
  ADD CONSTRAINT FK_CUSTOMERS_TO_RATINGS
    FOREIGN KEY (customer_id)
    REFERENCES CUSTOMERS (customer_id);

ALTER TABLE CUSTOMERS
  ADD CONSTRAINT FK_USERS_TO_CUSTOMERS
    FOREIGN KEY (user_id)
    REFERENCES USERS (user_id);

ALTER TABLE CARRIERS
  ADD CONSTRAINT FK_USERS_TO_CARRIERS
    FOREIGN KEY (user_id)
    REFERENCES USERS (user_id);

ALTER TABLE VEHICLES
  ADD CONSTRAINT FK_CARRIERS_TO_VEHICLES
    FOREIGN KEY (carrier_id)
    REFERENCES CARRIERS (carrier_id);

ALTER TABLE TRANSPORT_OFFERS
  ADD CONSTRAINT FK_CARRIERS_TO_TRANSPORT_OFFERS
    FOREIGN KEY (carrier_id)
    REFERENCES CARRIERS (carrier_id);

ALTER TABLE PAYMENTS
  ADD CONSTRAINT FK_SHIPMENTS_TO_PAYMENTS
    FOREIGN KEY (shipment_id)
    REFERENCES SHIPMENTS (shipment_id);

ALTER TABLE TRACKING_RECORDS
  ADD CONSTRAINT FK_SHIPMENTS_TO_TRACKING_RECORDS
    FOREIGN KEY (shipment_id)
    REFERENCES SHIPMENTS (shipment_id);

ALTER TABLE INCIDENTS
  ADD CONSTRAINT FK_SHIPMENTS_TO_INCIDENTS
    FOREIGN KEY (shipment_id)
    REFERENCES SHIPMENTS (shipment_id);

ALTER TABLE NOTIFICATIONS
  ADD CONSTRAINT FK_SHIPMENTS_TO_NOTIFICATIONS
    FOREIGN KEY (shipment_id)
    REFERENCES SHIPMENTS (shipment_id);

ALTER TABLE TRANSPORT_REQUESTS
  ADD CONSTRAINT FK_CUSTOMERS_TO_TRANSPORT_REQUESTS
    FOREIGN KEY (customer_id)
    REFERENCES CUSTOMERS (customer_id);

ALTER TABLE TRANSPORT_REQUESTS
  ADD CONSTRAINT FK_CARGOS_TO_TRANSPORT_REQUESTS
    FOREIGN KEY (cargo_id)
    REFERENCES CARGOS (cargo_id);

ALTER TABLE TRANSPORT_REQUESTS
  ADD CONSTRAINT FK_RATES_TO_TRANSPORT_REQUESTS
    FOREIGN KEY (rate_id)
    REFERENCES RATES (rate_id);

ALTER TABLE RATES
  ADD CONSTRAINT FK_ROUTES_TO_RATES
    FOREIGN KEY (route_id)
    REFERENCES ROUTES (route_id);

ALTER TABLE TRANSPORT_OFFERS
  ADD CONSTRAINT FK_TRANSPORT_REQUESTS_TO_TRANSPORT_OFFERS
    FOREIGN KEY (request_id)
    REFERENCES TRANSPORT_REQUESTS (request_id);

ALTER TABLE SHIPMENTS
  ADD CONSTRAINT FK_TRANSPORT_OFFERS_TO_SHIPMENTS
    FOREIGN KEY (offer_id)
    REFERENCES TRANSPORT_OFFERS (offer_id);

ALTER TABLE INCIDENTS
  ADD CONSTRAINT FK_USERS_TO_INCIDENTS
    FOREIGN KEY (user_id)
    REFERENCES USERS (user_id);
