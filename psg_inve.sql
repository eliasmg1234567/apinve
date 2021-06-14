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

 Date: 13/06/2021 23:46:44
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
-- Sequence structure for psg_entrada_id_entrada_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_entrada_id_entrada_seq";
CREATE SEQUENCE "public"."psg_entrada_id_entrada_seq" 
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
-- Sequence structure for psg_salida_id_salida_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."psg_salida_id_salida_seq";
CREATE SEQUENCE "public"."psg_salida_id_salida_seq" 
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
  "cantidad" varchar(255) COLLATE "pg_catalog"."default",
  "fecha" date
)
;

-- ----------------------------
-- Records of psg_almacen
-- ----------------------------
INSERT INTO "public"."psg_almacen" VALUES (3, 1, '50', NULL);
INSERT INTO "public"."psg_almacen" VALUES (3, 3, '50', NULL);
INSERT INTO "public"."psg_almacen" VALUES (5, 3, '30', NULL);
INSERT INTO "public"."psg_almacen" VALUES (6, 3, '11', '2021-06-11');

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
INSERT INTO "public"."psg_cargo_usuario" VALUES (1, 'Administrador', 'inactivo');
INSERT INTO "public"."psg_cargo_usuario" VALUES (2, 'Asesor', 'inactivo');
INSERT INTO "public"."psg_cargo_usuario" VALUES (4, 'provedor', 'activo');
INSERT INTO "public"."psg_cargo_usuario" VALUES (5, 'personal2', 'activo');
INSERT INTO "public"."psg_cargo_usuario" VALUES (3, 'Personal', 'inactivo');

-- ----------------------------
-- Table structure for psg_entrada
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_entrada";
CREATE TABLE "public"."psg_entrada" (
  "id_entrada" int2 NOT NULL DEFAULT nextval('psg_entrada_id_entrada_seq'::regclass),
  "nombre_entrada" varchar(255) COLLATE "pg_catalog"."default",
  "tipo_entrada" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_entrada
-- ----------------------------

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
INSERT INTO "public"."psg_material" VALUES (5, 2, '2021-03-10', 'viejo', 'Mesa', 'SIMBR Escritorio Gaming 200cm', 'MESA Gaming con Diseño de Forma en K, Mesa de Juegos para Ordenador Portátil, Escritorio de Oficina con Soporte de Controlador, Posavasos y Gancho para Auriculares');
INSERT INTO "public"."psg_material" VALUES (8, 2, '2021-03-10', 'viejo', 'Mesa', 'SIMBR Escritorio Gaming 200cm', 'MESA Gaming con Diseño de Forma en K, Mesa de Juegos para Ordenador Portátil, Escritorio de Oficina con Soporte de Controlador, Posavasos y Gancho para Auriculares');
INSERT INTO "public"."psg_material" VALUES (6, 5, '2021-10-02', 'nuevo', 'cable HDMI', '4k 2metro-Snowkids', 'Cable HDMI 2.0 de Alta Velocidad Trenzado de Nailon 4K@60Hz a 18Gbps Cable HDMI Compatible 3D, Función Ethernet, Video 4K UHD 2160p, HD 1080p- Gris');
INSERT INTO "public"."psg_material" VALUES (3, 1, '2021-11-10', 'medio', 'Laptop Lenovo', 'Lenovo ThinkPad E14 14" FHD', 'Business Ordenador portátil, Intel Quad-Core i5 10210U hasta 4.2GHz (Beats i7-7500U), 8GB DDR4 RAM, 128GB SSD + 1TB HDD, AC WiFi, BT 5.0, Windows 10 Pro, 64GB unidad flash USB');
INSERT INTO "public"."psg_material" VALUES (46, 1, '2021-06-15', 'nuevo', 'Impresora Epson', 'Epson EcoTank ET-2720', 'Impresora multifuncional inalámbrica a color con escáner y copiadora.');

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
  "id_entrada" int2,
  "id_salida" int2,
  "cantidad" varchar(255) COLLATE "pg_catalog"."default",
  "motivo_movimiento" varchar(255) COLLATE "pg_catalog"."default",
  "tipo_movimiento" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_movimiento" date
)
;

-- ----------------------------
-- Records of psg_movimiento
-- ----------------------------

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
INSERT INTO "public"."psg_oficina" VALUES (6, 'of_3', NULL);
INSERT INTO "public"."psg_oficina" VALUES (7, 'of_4', NULL);
INSERT INTO "public"."psg_oficina" VALUES (8, 'of_5', NULL);
INSERT INTO "public"."psg_oficina" VALUES (9, 'of_6', NULL);
INSERT INTO "public"."psg_oficina" VALUES (10, 'of_7', '12345');
INSERT INTO "public"."psg_oficina" VALUES (1, 'Central', '777777');
INSERT INTO "public"."psg_oficina" VALUES (2, 'of_1_', NULL);
INSERT INTO "public"."psg_oficina" VALUES (3, 'of_2_', '121212');
INSERT INTO "public"."psg_oficina" VALUES (12, 'of_9', '99999');
INSERT INTO "public"."psg_oficina" VALUES (11, 'of_8', '8888889');
INSERT INTO "public"."psg_oficina" VALUES (13, 'of_10', '101010');

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
-- Table structure for psg_salida
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_salida";
CREATE TABLE "public"."psg_salida" (
  "id_salida" int2 NOT NULL DEFAULT nextval('psg_salida_id_salida_seq'::regclass),
  "nombre_salida" varchar(255) COLLATE "pg_catalog"."default",
  "tipo_salida" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_salida
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
INSERT INTO "public"."psg_usuario" VALUES (1, 'walter', 'paco', '12345678', 'walter@gmail.com', 1, 'walter', 'activo', 1);
INSERT INTO "public"."psg_usuario" VALUES (2, 'brayan', 'mamani', '1234', 'brayan@gmail.com', 2, 'brayan', 'activo', 1);
INSERT INTO "public"."psg_usuario" VALUES (3, 'adalid', 'm', '11111', 'adalid@gmail.com', 3, 'adalid', 'activo', 2);
INSERT INTO "public"."psg_usuario" VALUES (4, 'richard', 'ticona', '22222', 'richar@gmail.com', 2, 'sirchard', 'Activo', 1);
INSERT INTO "public"."psg_usuario" VALUES (6, 'elias', 'moll', '5555', 'elias', 4, 'elias', 'Activo', 6);
INSERT INTO "public"."psg_usuario" VALUES (7, 'sara', 'vera', '55555', 'sara@gmail.com', 3, 'sara', 'Activo', 6);
INSERT INTO "public"."psg_usuario" VALUES (8, '-', '-', '-', '-', 2, '-', 'Inactivo', 6);
INSERT INTO "public"."psg_usuario" VALUES (9, 'a', 'a', 'a', 'a', 3, 'a', 'Activo', 6);
INSERT INTO "public"."psg_usuario" VALUES (10, 'juan', 'perez', '77 77  77', 'juan@gmail.com', 4, 'juan', 'Inactivo', 12);
INSERT INTO "public"."psg_usuario" VALUES (11, 'ana', 'gutierrez', '00 00  000000', 'ana@gmail.com', 3, 'ana', 'Activo', 10);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_cargo_usuario_id_cargo_seq"
OWNED BY "public"."psg_cargo_usuario"."id_cargo";
SELECT setval('"public"."psg_cargo_usuario_id_cargo_seq"', 12, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_entrada_id_entrada_seq"
OWNED BY "public"."psg_entrada"."id_entrada";
SELECT setval('"public"."psg_entrada_id_entrada_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_marca_material_id_marca_seq"
OWNED BY "public"."psg_marca_material"."id_marca";
SELECT setval('"public"."psg_marca_material_id_marca_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_material_id_material_seq"
OWNED BY "public"."psg_material"."id_material";
SELECT setval('"public"."psg_material_id_material_seq"', 47, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_movimiento_id_movimiento_seq"
OWNED BY "public"."psg_movimiento"."id_movimiento";
SELECT setval('"public"."psg_movimiento_id_movimiento_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_oficina_id_oficina_seq"
OWNED BY "public"."psg_oficina"."id_oficina";
SELECT setval('"public"."psg_oficina_id_oficina_seq"', 14, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_permiso_id_permiso_seq"
OWNED BY "public"."psg_permiso"."id_permiso";
SELECT setval('"public"."psg_permiso_id_permiso_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_proveedor_id_proveedor_seq"
OWNED BY "public"."psg_proveedor"."id_proveedor";
SELECT setval('"public"."psg_proveedor_id_proveedor_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_salida_id_salida_seq"
OWNED BY "public"."psg_salida"."id_salida";
SELECT setval('"public"."psg_salida_id_salida_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_tipo_material_id_tipo_material_seq"
OWNED BY "public"."psg_tipo_material"."id_tipo_material";
SELECT setval('"public"."psg_tipo_material_id_tipo_material_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."psg_usuario_id_usuario_seq"
OWNED BY "public"."psg_usuario"."id_usuario";
SELECT setval('"public"."psg_usuario_id_usuario_seq"', 12, true);

-- ----------------------------
-- Primary Key structure for table psg_almacen
-- ----------------------------
ALTER TABLE "public"."psg_almacen" ADD CONSTRAINT "psg_almacen_pkey" PRIMARY KEY ("id_material", "id_oficina");

-- ----------------------------
-- Primary Key structure for table psg_cargo_usuario
-- ----------------------------
ALTER TABLE "public"."psg_cargo_usuario" ADD CONSTRAINT "psg_cargo_usuario_pkey" PRIMARY KEY ("id_cargo");

-- ----------------------------
-- Primary Key structure for table psg_entrada
-- ----------------------------
ALTER TABLE "public"."psg_entrada" ADD CONSTRAINT "psg_entrada_pkey" PRIMARY KEY ("id_entrada");

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
-- Primary Key structure for table psg_salida
-- ----------------------------
ALTER TABLE "public"."psg_salida" ADD CONSTRAINT "psg_salida_pkey" PRIMARY KEY ("id_salida");

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
ALTER TABLE "public"."psg_movimiento" ADD CONSTRAINT "entrada" FOREIGN KEY ("id_entrada") REFERENCES "public"."psg_entrada" ("id_entrada") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_movimiento" ADD CONSTRAINT "material" FOREIGN KEY ("id_material") REFERENCES "public"."psg_material" ("id_material") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_movimiento" ADD CONSTRAINT "salida" FOREIGN KEY ("id_salida") REFERENCES "public"."psg_salida" ("id_salida") ON DELETE NO ACTION ON UPDATE NO ACTION;

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
