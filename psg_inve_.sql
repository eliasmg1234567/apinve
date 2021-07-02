/*
 Navicat Premium Data Transfer

 Source Server         : POSTGRES
 Source Server Type    : PostgreSQL
 Source Server Version : 110011
 Source Host           : localhost:5432
 Source Catalog        : psg_inve
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110011
 File Encoding         : 65001

 Date: 02/07/2021 12:28:12
*/


-- ----------------------------
-- Sequence structure for psg_cargo_usuario_id_cargo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_cargo_usuario_id_cargo_seq";
CREATE SEQUENCE "public"."psg_cargo_usuario_id_cargo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for psg_marca_material_id_marca_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_marca_material_id_marca_seq";
CREATE SEQUENCE "public"."psg_marca_material_id_marca_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for psg_material_id_material_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_material_id_material_seq";
CREATE SEQUENCE "public"."psg_material_id_material_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for psg_movimiento_id_movimiento_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_movimiento_id_movimiento_seq";
CREATE SEQUENCE "public"."psg_movimiento_id_movimiento_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for psg_oficina_id_oficina_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_oficina_id_oficina_seq";
CREATE SEQUENCE "public"."psg_oficina_id_oficina_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for psg_permiso_id_permiso_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_permiso_id_permiso_seq";
CREATE SEQUENCE "public"."psg_permiso_id_permiso_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for psg_proveedor_id_proveedor_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_proveedor_id_proveedor_seq";
CREATE SEQUENCE "public"."psg_proveedor_id_proveedor_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for psg_tipo_material_id_tipo_material_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_tipo_material_id_tipo_material_seq";
CREATE SEQUENCE "public"."psg_tipo_material_id_tipo_material_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for psg_usuario_id_usuario_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_usuario_id_usuario_seq";
CREATE SEQUENCE "public"."psg_usuario_id_usuario_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Table structure for psg_almacen
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_almacen";
CREATE TABLE "public"."psg_almacen" (
  "id_material" int2 NOT NULL,
  "id_oficina" int2 NOT NULL,
  "cantidad" int2,
  "fecha" date
)
;

-- ----------------------------
-- Records of psg_almacen
-- ----------------------------
INSERT INTO "public"."psg_almacen" VALUES (5, 1, 5, '2021-03-25');
INSERT INTO "public"."psg_almacen" VALUES (8, 2, 10, '2021-07-01');
INSERT INTO "public"."psg_almacen" VALUES (6, 1, 5, '2021-06-02');
INSERT INTO "public"."psg_almacen" VALUES (3, 1, 3, '2021-02-01');
INSERT INTO "public"."psg_almacen" VALUES (46, 1, 3, '2021-06-07');
INSERT INTO "public"."psg_almacen" VALUES (8, 1, 4, '2021-06-28');

-- ----------------------------
-- Table structure for psg_cargo_usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_cargo_usuario";
CREATE TABLE "public"."psg_cargo_usuario" (
  "id_cargo" int2 NOT NULL DEFAULT nextval('psg_cargo_usuario_id_cargo_seq'::regclass),
  "nombre_cargo" varchar(255) COLLATE "pg_catalog"."default",
  "estado_cargo" varchar(16) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_cargo_usuario
-- ----------------------------
INSERT INTO "public"."psg_cargo_usuario" VALUES (2, 'Asesor', 'inactivo');
INSERT INTO "public"."psg_cargo_usuario" VALUES (5, 'personal2', 'activo');
INSERT INTO "public"."psg_cargo_usuario" VALUES (3, 'Personal', 'inactivo');
INSERT INTO "public"."psg_cargo_usuario" VALUES (1, 'Administrador', 'activo');
INSERT INTO "public"."psg_cargo_usuario" VALUES (4, 'provedor', 'inactivo');
INSERT INTO "public"."psg_cargo_usuario" VALUES (13, 'personal3', 'inactivo');

-- ----------------------------
-- Table structure for psg_marca_material
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_marca_material";
CREATE TABLE "public"."psg_marca_material" (
  "id_marca" int2 NOT NULL DEFAULT nextval('psg_marca_material_id_marca_seq'::regclass),
  "nom_marca" varchar(255) COLLATE "pg_catalog"."default",
  "desc_marca" varchar(255) COLLATE "pg_catalog"."default",
  "email_soporte_marca" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_marca_material
-- ----------------------------
INSERT INTO "public"."psg_marca_material" VALUES (1, 'Lenovo', 'lenovo i3', 'lenovo@support.com');

-- ----------------------------
-- Table structure for psg_material
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_material";
CREATE TABLE "public"."psg_material" (
  "id_material" int2 NOT NULL DEFAULT nextval('psg_material_id_material_seq'::regclass),
  "id_tipo" int2,
  "fecha_compra" date,
  "estado" varchar(45) COLLATE "pg_catalog"."default",
  "nombre_material" varchar(255) COLLATE "pg_catalog"."default",
  "descripcion_material" varchar(255) COLLATE "pg_catalog"."default",
  "caracteristicas" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_material
-- ----------------------------
INSERT INTO "public"."psg_material" VALUES (5, 2, '2021-03-10', 'medio', 'Mesa 002', 'SIMBR Escritorio Gaming 200cm', 'MESA Gaming con Diseño de Forma en K, Mesa de Juegos para Ordenador Portátil, Escritorio de Oficina con Soporte de Controlador, Posavasos y Gancho para Auriculares');
INSERT INTO "public"."psg_material" VALUES (8, 2, '2021-03-10', 'viejo', 'Silla 003', 'SIMBR Silla Gaming 200cm', 'SILLA Gaming con Diseño de Forma en K, Mesa de Juegos para Ordenador Portátil, Escritorio de Oficina con Soporte de Controlador, Posavasos y Gancho para Auriculares');
INSERT INTO "public"."psg_material" VALUES (6, 5, '2021-10-02', 'nuevo', 'cable HDMI 001', '4k 2metro-Snowkids', 'Cable HDMI 2.0 de Alta Velocidad Trenzado de Nailon 4K@60Hz a 18Gbps Cable HDMI Compatible 3D, Función Ethernet, Video 4K UHD 2160p, HD 1080p- Gris');
INSERT INTO "public"."psg_material" VALUES (46, 1, '2021-06-15', 'nuevo', 'Impresora Epson 012', 'Epson EcoTank ET-2720', 'Impresora multifuncional inalámbrica a color con escáner y copiadora.');
INSERT INTO "public"."psg_material" VALUES (3, 1, '2021-11-10', 'medio', 'Laptop Lenovo 0232', 'Lenovo ThinkPad E14 14" FHD', 'Business Ordenador portátil, Intel Quad-Core i5 10210U hasta 4.2GHz (Beats i7-7500U), 8GB DDR4 RAM, 128GB SSD + 1TB HDD, AC WiFi, BT 5.0, Windows 10 Pro, 64GB unidad flash USB');

-- ----------------------------
-- Table structure for psg_material_proveedor
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_material_proveedor";
CREATE TABLE "public"."psg_material_proveedor" (
  "id_material" int2 NOT NULL,
  "id_proveedor" int2 NOT NULL,
  "precio_material" varchar(255) COLLATE "pg_catalog"."default",
  "cantidad_material" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_material_proveedor
-- ----------------------------

-- ----------------------------
-- Table structure for psg_movimiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_movimiento";
CREATE TABLE "public"."psg_movimiento" (
  "id_movimiento" int2 NOT NULL DEFAULT nextval('psg_movimiento_id_movimiento_seq'::regclass),
  "id_material" int2,
  "id_origen" int2,
  "id_destino" int2,
  "cantidad" varchar(255) COLLATE "pg_catalog"."default",
  "motivo_movimiento" varchar(255) COLLATE "pg_catalog"."default",
  "tipo_movimiento" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_movimiento" date
)
;

-- ----------------------------
-- Records of psg_movimiento
-- ----------------------------
INSERT INTO "public"."psg_movimiento" VALUES (6, 3, 6, 3, '2', 'motivo de prestamos', 'traslado', '2021-06-25');
INSERT INTO "public"."psg_movimiento" VALUES (7, 3, 9, 10, '11', 'prestamo', 'traslado', '2021-06-24');
INSERT INTO "public"."psg_movimiento" VALUES (8, 46, 6, 3, '2', 'entrega', 'traslado', '2021-06-24');
INSERT INTO "public"."psg_movimiento" VALUES (9, 5, 1, 2, '5', 'pretamos', 'traslado', '2021-06-24');
INSERT INTO "public"."psg_movimiento" VALUES (10, 8, 13, 9, '2', 'dos sillas por urgencia', 'traslado', '2021-06-29');
INSERT INTO "public"."psg_movimiento" VALUES (11, 5, 6, 2, '2', 'falta de mesa', 'traslado', '2021-06-28');
INSERT INTO "public"."psg_movimiento" VALUES (12, 5, 6, 2, '5', 'préstamo de  5mesas', 'traslado', '2021-06-28');

-- ----------------------------
-- Table structure for psg_oficina
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_oficina";
CREATE TABLE "public"."psg_oficina" (
  "id_oficina" int2 NOT NULL DEFAULT nextval('psg_oficina_id_oficina_seq'::regclass),
  "nombre_oficina" varchar(255) COLLATE "pg_catalog"."default",
  "telefono_oficina" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_oficina
-- ----------------------------
INSERT INTO "public"."psg_oficina" VALUES (8, 'of_5', NULL);
INSERT INTO "public"."psg_oficina" VALUES (9, 'of_6', NULL);
INSERT INTO "public"."psg_oficina" VALUES (10, 'of_7', '12345');
INSERT INTO "public"."psg_oficina" VALUES (1, 'Central', '777777');
INSERT INTO "public"."psg_oficina" VALUES (2, 'of_1_', NULL);
INSERT INTO "public"."psg_oficina" VALUES (3, 'of_2_', '121212');
INSERT INTO "public"."psg_oficina" VALUES (12, 'of_9', '99999');
INSERT INTO "public"."psg_oficina" VALUES (13, 'of_10', '101010');
INSERT INTO "public"."psg_oficina" VALUES (7, 'of_4', '44 444');
INSERT INTO "public"."psg_oficina" VALUES (11, 'of_8', '8889');
INSERT INTO "public"."psg_oficina" VALUES (6, 'of_3', '333 333');
INSERT INTO "public"."psg_oficina" VALUES (15, 'of_11', '(111) 111 111');

-- ----------------------------
-- Table structure for psg_permiso
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_permiso";
CREATE TABLE "public"."psg_permiso" (
  "id_permiso" int2 NOT NULL DEFAULT nextval('psg_permiso_id_permiso_seq'::regclass),
  "nombre_permiso" varchar(45) COLLATE "pg_catalog"."default",
  "descripcion_permiso" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_permiso
-- ----------------------------
INSERT INTO "public"."psg_permiso" VALUES (1, 'Accedera la cofiguracion de usuario', 'puede asignar, eliminar usuarios');
INSERT INTO "public"."psg_permiso" VALUES (3, 'Accede a la configuracion de proveedores', 'puede asignar, eliminar proveedores');
INSERT INTO "public"."psg_permiso" VALUES (5, 'consulta reporte de movimientos', 'puede generar reporte de movimientos');
INSERT INTO "public"."psg_permiso" VALUES (6, 'registra reporte de entrada', 'puede registrar los materiales que ingresan');
INSERT INTO "public"."psg_permiso" VALUES (7, 'registra reporte de salida', 'puede registrar los materiales que salen de almacen');
INSERT INTO "public"."psg_permiso" VALUES (8, 'solicita solo reporte de almacen', 'solo tiene acceso a generar el reporte ultimo de almacenamientos');
INSERT INTO "public"."psg_permiso" VALUES (2, 'Accede a la confguracion de cargos', 'puede asignar, eliminar nuevos cargoss');
INSERT INTO "public"."psg_permiso" VALUES (4, 'consulta reporte de almacen', 'puede generar un reporte en el almacen de los materiales existentess');

-- ----------------------------
-- Table structure for psg_permiso_cargo
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_permiso_cargo";
CREATE TABLE "public"."psg_permiso_cargo" (
  "id_cargo" int2 NOT NULL,
  "id_permiso" int2 NOT NULL
)
;

-- ----------------------------
-- Records of psg_permiso_cargo
-- ----------------------------
INSERT INTO "public"."psg_permiso_cargo" VALUES (1, 1);
INSERT INTO "public"."psg_permiso_cargo" VALUES (1, 2);
INSERT INTO "public"."psg_permiso_cargo" VALUES (1, 3);
INSERT INTO "public"."psg_permiso_cargo" VALUES (1, 4);
INSERT INTO "public"."psg_permiso_cargo" VALUES (1, 5);
INSERT INTO "public"."psg_permiso_cargo" VALUES (1, 6);
INSERT INTO "public"."psg_permiso_cargo" VALUES (1, 7);
INSERT INTO "public"."psg_permiso_cargo" VALUES (1, 8);
INSERT INTO "public"."psg_permiso_cargo" VALUES (2, 1);
INSERT INTO "public"."psg_permiso_cargo" VALUES (2, 4);
INSERT INTO "public"."psg_permiso_cargo" VALUES (3, 5);
INSERT INTO "public"."psg_permiso_cargo" VALUES (3, 6);
INSERT INTO "public"."psg_permiso_cargo" VALUES (4, 2);

-- ----------------------------
-- Table structure for psg_proveedor
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_proveedor";
CREATE TABLE "public"."psg_proveedor" (
  "id_proveedor" int2 NOT NULL DEFAULT nextval('psg_proveedor_id_proveedor_seq'::regclass),
  "nom_proveedor" varchar(255) COLLATE "pg_catalog"."default",
  "dir_proveedor" varchar(255) COLLATE "pg_catalog"."default",
  "tel_proveedor" varchar(255) COLLATE "pg_catalog"."default",
  "cargo_proveedor" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_proveedor
-- ----------------------------

-- ----------------------------
-- Table structure for psg_tipo_material
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_tipo_material";
CREATE TABLE "public"."psg_tipo_material" (
  "id_tipo_material" int2 NOT NULL DEFAULT nextval('psg_tipo_material_id_tipo_material_seq'::regclass),
  "desc_tipo_material" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_tipo_material
-- ----------------------------
INSERT INTO "public"."psg_tipo_material" VALUES (1, 'Ofimatica');
INSERT INTO "public"."psg_tipo_material" VALUES (2, 'Estanteria');
INSERT INTO "public"."psg_tipo_material" VALUES (3, 'Papeleria');
INSERT INTO "public"."psg_tipo_material" VALUES (4, 'Mobiliario');
INSERT INTO "public"."psg_tipo_material" VALUES (5, 'Red Informatica');

-- ----------------------------
-- Table structure for psg_usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_usuario";
CREATE TABLE "public"."psg_usuario" (
  "id_usuario" int2 NOT NULL DEFAULT nextval('psg_usuario_id_usuario_seq'::regclass),
  "nombre_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "apellido_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "telefono_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "email_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "id_cargo" int2,
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "estado_usuario" varchar(16) COLLATE "pg_catalog"."default",
  "id_oficina" int2
)
;

-- ----------------------------
-- Records of psg_usuario
-- ----------------------------
INSERT INTO "public"."psg_usuario" VALUES (4, 'richard', 'ticona', '22222', 'richar@gmail.com', 2, 'sirchard', 'Activo', 1);
INSERT INTO "public"."psg_usuario" VALUES (10, 'juan', 'perez', '77 77  77', 'juan@gmail.com', 4, 'juan', 'Inactivo', 12);
INSERT INTO "public"."psg_usuario" VALUES (1, 'walter', 'paco', '63209954', 'walter@gmail.com', 1, 'walter', 'activo', 1);
INSERT INTO "public"."psg_usuario" VALUES (3, 'adalid', 'm', '767676', 'adalid@gmail.com', 3, 'adalid', 'activo', 2);
INSERT INTO "public"."psg_usuario" VALUES (2, 'brayan', 'mamani', '777777', 'brayan@gmail.com', 2, 'brayan', 'activo', 1);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_cargo_usuario_id_cargo_seq"
OWNED BY "public"."psg_cargo_usuario"."id_cargo";
SELECT setval('"public"."psg_cargo_usuario_id_cargo_seq"', 14, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_marca_material_id_marca_seq"
OWNED BY "public"."psg_marca_material"."id_marca";
SELECT setval('"public"."psg_marca_material_id_marca_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_material_id_material_seq"
OWNED BY "public"."psg_material"."id_material";
SELECT setval('"public"."psg_material_id_material_seq"', 49, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_movimiento_id_movimiento_seq"
OWNED BY "public"."psg_movimiento"."id_movimiento";
SELECT setval('"public"."psg_movimiento_id_movimiento_seq"', 13, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_oficina_id_oficina_seq"
OWNED BY "public"."psg_oficina"."id_oficina";
SELECT setval('"public"."psg_oficina_id_oficina_seq"', 16, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_permiso_id_permiso_seq"
OWNED BY "public"."psg_permiso"."id_permiso";
SELECT setval('"public"."psg_permiso_id_permiso_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_proveedor_id_proveedor_seq"
OWNED BY "public"."psg_proveedor"."id_proveedor";
SELECT setval('"public"."psg_proveedor_id_proveedor_seq"', 4, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_tipo_material_id_tipo_material_seq"
OWNED BY "public"."psg_tipo_material"."id_tipo_material";
SELECT setval('"public"."psg_tipo_material_id_tipo_material_seq"', 8, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_usuario_id_usuario_seq"
OWNED BY "public"."psg_usuario"."id_usuario";
SELECT setval('"public"."psg_usuario_id_usuario_seq"', 14, true);

-- ----------------------------
-- Primary Key structure for table psg_almacen
-- ----------------------------
ALTER TABLE "public"."psg_almacen" ADD CONSTRAINT "psg_almacen_pkey" PRIMARY KEY ("id_material", "id_oficina");

-- ----------------------------
-- Primary Key structure for table psg_cargo_usuario
-- ----------------------------
ALTER TABLE "public"."psg_cargo_usuario" ADD CONSTRAINT "psg_cargo_usuario_pkey" PRIMARY KEY ("id_cargo");

-- ----------------------------
-- Primary Key structure for table psg_marca_material
-- ----------------------------
ALTER TABLE "public"."psg_marca_material" ADD CONSTRAINT "psg_marca_material_pkey" PRIMARY KEY ("id_marca");

-- ----------------------------
-- Primary Key structure for table psg_material
-- ----------------------------
ALTER TABLE "public"."psg_material" ADD CONSTRAINT "psg_material_pkey" PRIMARY KEY ("id_material");

-- ----------------------------
-- Primary Key structure for table psg_material_proveedor
-- ----------------------------
ALTER TABLE "public"."psg_material_proveedor" ADD CONSTRAINT "psg_material_proveedor_pkey" PRIMARY KEY ("id_material", "id_proveedor");

-- ----------------------------
-- Primary Key structure for table psg_movimiento
-- ----------------------------
ALTER TABLE "public"."psg_movimiento" ADD CONSTRAINT "psg_movimiento_pkey" PRIMARY KEY ("id_movimiento");

-- ----------------------------
-- Primary Key structure for table psg_oficina
-- ----------------------------
ALTER TABLE "public"."psg_oficina" ADD CONSTRAINT "psg_oficina_pkey" PRIMARY KEY ("id_oficina");

-- ----------------------------
-- Primary Key structure for table psg_permiso
-- ----------------------------
ALTER TABLE "public"."psg_permiso" ADD CONSTRAINT "psg_permiso_pkey" PRIMARY KEY ("id_permiso");

-- ----------------------------
-- Primary Key structure for table psg_permiso_cargo
-- ----------------------------
ALTER TABLE "public"."psg_permiso_cargo" ADD CONSTRAINT "psg_permiso_cargo_pkey" PRIMARY KEY ("id_cargo", "id_permiso");

-- ----------------------------
-- Primary Key structure for table psg_proveedor
-- ----------------------------
ALTER TABLE "public"."psg_proveedor" ADD CONSTRAINT "psg_proveedor_pkey" PRIMARY KEY ("id_proveedor");

-- ----------------------------
-- Primary Key structure for table psg_tipo_material
-- ----------------------------
ALTER TABLE "public"."psg_tipo_material" ADD CONSTRAINT "psg_tipo_material_pkey" PRIMARY KEY ("id_tipo_material");

-- ----------------------------
-- Primary Key structure for table psg_usuario
-- ----------------------------
ALTER TABLE "public"."psg_usuario" ADD CONSTRAINT "psg_usuario_pkey" PRIMARY KEY ("id_usuario");

-- ----------------------------
-- Foreign Keys structure for table psg_almacen
-- ----------------------------
ALTER TABLE "public"."psg_almacen" ADD CONSTRAINT "material" FOREIGN KEY ("id_material") REFERENCES "public"."psg_material" ("id_material") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_almacen" ADD CONSTRAINT "oficina" FOREIGN KEY ("id_oficina") REFERENCES "public"."psg_oficina" ("id_oficina") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_material
-- ----------------------------
ALTER TABLE "public"."psg_material" ADD CONSTRAINT "tipo" FOREIGN KEY ("id_tipo") REFERENCES "public"."psg_tipo_material" ("id_tipo_material") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_material_proveedor
-- ----------------------------
ALTER TABLE "public"."psg_material_proveedor" ADD CONSTRAINT "material" FOREIGN KEY ("id_material") REFERENCES "public"."psg_material" ("id_material") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_material_proveedor" ADD CONSTRAINT "proveedor" FOREIGN KEY ("id_proveedor") REFERENCES "public"."psg_proveedor" ("id_proveedor") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_movimiento
-- ----------------------------
ALTER TABLE "public"."psg_movimiento" ADD CONSTRAINT "material" FOREIGN KEY ("id_material") REFERENCES "public"."psg_material" ("id_material") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_permiso_cargo
-- ----------------------------
ALTER TABLE "public"."psg_permiso_cargo" ADD CONSTRAINT "cargo" FOREIGN KEY ("id_cargo") REFERENCES "public"."psg_cargo_usuario" ("id_cargo") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_permiso_cargo" ADD CONSTRAINT "permiso" FOREIGN KEY ("id_permiso") REFERENCES "public"."psg_permiso" ("id_permiso") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_usuario
-- ----------------------------
ALTER TABLE "public"."psg_usuario" ADD CONSTRAINT "cargo" FOREIGN KEY ("id_cargo") REFERENCES "public"."psg_cargo_usuario" ("id_cargo") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_usuario" ADD CONSTRAINT "oficina" FOREIGN KEY ("id_oficina") REFERENCES "public"."psg_oficina" ("id_oficina") ON DELETE NO ACTION ON UPDATE NO ACTION;
