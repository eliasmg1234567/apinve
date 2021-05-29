/*
 Navicat Premium Data Transfer

 Source Server         : POSTGRES
 Source Server Type    : PostgreSQL
 Source Server Version : 110011
 Source Host           : localhost:5432
 Source Catalog        : psg_inv
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110011
 File Encoding         : 65001

 Date: 28/05/2021 21:45:42
*/


-- ----------------------------
-- Table structure for psg_cargo_usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_cargo_usuario";
CREATE TABLE "public"."psg_cargo_usuario" (
  "id_cargo" int2 NOT NULL,
  "nombre_cargo" varchar(255) COLLATE "pg_catalog"."default",
  "estado_cargo" varchar(16) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_cargo_usuario
-- ----------------------------
INSERT INTO "public"."psg_cargo_usuario" VALUES (1, 'administrador', 'activo');
INSERT INTO "public"."psg_cargo_usuario" VALUES (2, 'asesor', 'activo');

-- ----------------------------
-- Table structure for psg_entrada
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_entrada";
CREATE TABLE "public"."psg_entrada" (
  "id_entrada" int2 NOT NULL,
  "fecha_entrada" date,
  "id_tipo_mov" int2,
  "cantidad_entrada" varchar(255) COLLATE "pg_catalog"."default",
  "id_oficina" int2,
  "id_material" int2
)
;

-- ----------------------------
-- Records of psg_entrada
-- ----------------------------

-- ----------------------------
-- Table structure for psg_inventario
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_inventario";
CREATE TABLE "public"."psg_inventario" (
  "id_inventario" int2 NOT NULL,
  "id_movimiento_material" int2,
  "fecha_inventario" date
)
;

-- ----------------------------
-- Records of psg_inventario
-- ----------------------------

-- ----------------------------
-- Table structure for psg_marca_material
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_marca_material";
CREATE TABLE "public"."psg_marca_material" (
  "id_marca" int2 NOT NULL,
  "nom_marca" varchar(255) COLLATE "pg_catalog"."default",
  "desc_marca" varchar(255) COLLATE "pg_catalog"."default",
  "email_soporte_marca" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_marca_material
-- ----------------------------

-- ----------------------------
-- Table structure for psg_material
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_material";
CREATE TABLE "public"."psg_material" (
  "id_material" int2 NOT NULL,
  "id_tipo" int2,
  "fecha_compra" date,
  "estado" varchar(45) COLLATE "pg_catalog"."default",
  "id_marca" int2,
  "id_usuario" int2,
  "id_oficina" int2
)
;

-- ----------------------------
-- Records of psg_material
-- ----------------------------

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
-- Table structure for psg_movimiento_material
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_movimiento_material";
CREATE TABLE "public"."psg_movimiento_material" (
  "id_movimiento_material" int2 NOT NULL,
  "id_entrada" int2,
  "id_salida" int2,
  "fecha_movimiento" date
)
;

-- ----------------------------
-- Records of psg_movimiento_material
-- ----------------------------

-- ----------------------------
-- Table structure for psg_oficina
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_oficina";
CREATE TABLE "public"."psg_oficina" (
  "id_oficina" int2 NOT NULL,
  "nombre_oficina" varchar(255) COLLATE "pg_catalog"."default",
  "id_usuario" int2
)
;

-- ----------------------------
-- Records of psg_oficina
-- ----------------------------

-- ----------------------------
-- Table structure for psg_permiso
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_permiso";
CREATE TABLE "public"."psg_permiso" (
  "id_permiso" int2 NOT NULL,
  "nombre_permiso" varchar(45) COLLATE "pg_catalog"."default",
  "descripcion_permiso" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_permiso
-- ----------------------------
INSERT INTO "public"."psg_permiso" VALUES (3, 'Acceder a la configuracion de proveedores', 'puede asignar nuevos proveedores');
INSERT INTO "public"."psg_permiso" VALUES (2, 'Acceder a la configuracionde cargos', 'puede asignar nuevos cargos');
INSERT INTO "public"."psg_permiso" VALUES (1, 'Acceder a la configuracion de usuarios', 'puede añadir eliminar usuarios');
INSERT INTO "public"."psg_permiso" VALUES (4, 'Consultar reporte de almacen', 'puede generar reporte de almacenamiento');
INSERT INTO "public"."psg_permiso" VALUES (5, 'Consultar reporte de movimientos', 'puede generar reposrte de los movimientos');
INSERT INTO "public"."psg_permiso" VALUES (6, 'Registra entrada de materiales', 'puede registrar reportes de entrada de materiales');
INSERT INTO "public"."psg_permiso" VALUES (7, 'Registra salida de materiales', 'puede registrar reporte de las salidas de materiales');

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

-- ----------------------------
-- Table structure for psg_proveedor
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_proveedor";
CREATE TABLE "public"."psg_proveedor" (
  "id_proveedor" int2 NOT NULL,
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
  "id_salida" int2 NOT NULL,
  "fecha_salida" date,
  "id_tipo_mov" int2,
  "cantidad_salida" varchar(255) COLLATE "pg_catalog"."default",
  "id_oficina" int2,
  "id_material" int2
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
  "id_tipo_material" int2 NOT NULL,
  "desc_tipo_material" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_tipo_material
-- ----------------------------

-- ----------------------------
-- Table structure for psg_tipo_movimiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_tipo_movimiento";
CREATE TABLE "public"."psg_tipo_movimiento" (
  "id_tipo_mov" int2 NOT NULL,
  "desc_tipo_mov" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_tipo_movimiento
-- ----------------------------

-- ----------------------------
-- Table structure for psg_usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."psg_usuario";
CREATE TABLE "public"."psg_usuario" (
  "id_usuario" int2 NOT NULL,
  "nombre_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "apellido_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "telefono_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "email_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "id_cargo" int2,
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "estado_usuario" varchar(16) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of psg_usuario
-- ----------------------------
INSERT INTO "public"."psg_usuario" VALUES (1, 'walter', 'paco', '12345678', 'walter@gmail.com', 1, 'walter', 'activo');
INSERT INTO "public"."psg_usuario" VALUES (2, 'brayan', 'mamani', '1234', 'brayan@gmail.com', 2, 'brayan', 'activo');
INSERT INTO "public"."psg_usuario" VALUES (3, 'adalid', 'perez', '12', 'adalid@gmail.com', 2, 'adalid', 'inactivo');

-- ----------------------------
-- Primary Key structure for table psg_cargo_usuario
-- ----------------------------
ALTER TABLE "public"."psg_cargo_usuario" ADD CONSTRAINT "psg_cargo_usuario_pkey" PRIMARY KEY ("id_cargo");

-- ----------------------------
-- Primary Key structure for table psg_entrada
-- ----------------------------
ALTER TABLE "public"."psg_entrada" ADD CONSTRAINT "psg_entrada_pkey" PRIMARY KEY ("id_entrada");

-- ----------------------------
-- Primary Key structure for table psg_inventario
-- ----------------------------
ALTER TABLE "public"."psg_inventario" ADD CONSTRAINT "psg_inventario_pkey" PRIMARY KEY ("id_inventario");

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
-- Primary Key structure for table psg_movimiento_material
-- ----------------------------
ALTER TABLE "public"."psg_movimiento_material" ADD CONSTRAINT "psg_movimiento_material_pkey" PRIMARY KEY ("id_movimiento_material");

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
-- Primary Key structure for table psg_tipo_movimiento
-- ----------------------------
ALTER TABLE "public"."psg_tipo_movimiento" ADD CONSTRAINT "psg_tipo_movimiento_pkey" PRIMARY KEY ("id_tipo_mov");

-- ----------------------------
-- Primary Key structure for table psg_usuario
-- ----------------------------
ALTER TABLE "public"."psg_usuario" ADD CONSTRAINT "psg_usuario_pkey" PRIMARY KEY ("id_usuario");

-- ----------------------------
-- Foreign Keys structure for table psg_entrada
-- ----------------------------
ALTER TABLE "public"."psg_entrada" ADD CONSTRAINT "material" FOREIGN KEY ("id_material") REFERENCES "public"."psg_material" ("id_material") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_entrada" ADD CONSTRAINT "oficina" FOREIGN KEY ("id_oficina") REFERENCES "public"."psg_oficina" ("id_oficina") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_entrada" ADD CONSTRAINT "tipo_movimiento" FOREIGN KEY ("id_tipo_mov") REFERENCES "public"."psg_tipo_movimiento" ("id_tipo_mov") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_inventario
-- ----------------------------
ALTER TABLE "public"."psg_inventario" ADD CONSTRAINT "movimiento_material" FOREIGN KEY ("id_movimiento_material") REFERENCES "public"."psg_movimiento_material" ("id_movimiento_material") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_material
-- ----------------------------
ALTER TABLE "public"."psg_material" ADD CONSTRAINT "marca" FOREIGN KEY ("id_marca") REFERENCES "public"."psg_marca_material" ("id_marca") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_material" ADD CONSTRAINT "oficina" FOREIGN KEY ("id_oficina") REFERENCES "public"."psg_oficina" ("id_oficina") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_material" ADD CONSTRAINT "tipo" FOREIGN KEY ("id_tipo") REFERENCES "public"."psg_tipo_material" ("id_tipo_material") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_material" ADD CONSTRAINT "usuario" FOREIGN KEY ("id_usuario") REFERENCES "public"."psg_usuario" ("id_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_material_proveedor
-- ----------------------------
ALTER TABLE "public"."psg_material_proveedor" ADD CONSTRAINT "material" FOREIGN KEY ("id_material") REFERENCES "public"."psg_material" ("id_material") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_material_proveedor" ADD CONSTRAINT "proveedor" FOREIGN KEY ("id_proveedor") REFERENCES "public"."psg_proveedor" ("id_proveedor") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_movimiento_material
-- ----------------------------
ALTER TABLE "public"."psg_movimiento_material" ADD CONSTRAINT "entrada" FOREIGN KEY ("id_entrada") REFERENCES "public"."psg_entrada" ("id_entrada") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_movimiento_material" ADD CONSTRAINT "salida" FOREIGN KEY ("id_salida") REFERENCES "public"."psg_salida" ("id_salida") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_oficina
-- ----------------------------
ALTER TABLE "public"."psg_oficina" ADD CONSTRAINT "usuario" FOREIGN KEY ("id_usuario") REFERENCES "public"."psg_usuario" ("id_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_permiso_cargo
-- ----------------------------
ALTER TABLE "public"."psg_permiso_cargo" ADD CONSTRAINT "cargo" FOREIGN KEY ("id_cargo") REFERENCES "public"."psg_cargo_usuario" ("id_cargo") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_permiso_cargo" ADD CONSTRAINT "permiso" FOREIGN KEY ("id_permiso") REFERENCES "public"."psg_permiso" ("id_permiso") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_salida
-- ----------------------------
ALTER TABLE "public"."psg_salida" ADD CONSTRAINT "material" FOREIGN KEY ("id_material") REFERENCES "public"."psg_material" ("id_material") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_salida" ADD CONSTRAINT "oficina" FOREIGN KEY ("id_oficina") REFERENCES "public"."psg_oficina" ("id_oficina") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."psg_salida" ADD CONSTRAINT "tipo_movimiento" FOREIGN KEY ("id_tipo_mov") REFERENCES "public"."psg_tipo_movimiento" ("id_tipo_mov") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table psg_usuario
-- ----------------------------
ALTER TABLE "public"."psg_usuario" ADD CONSTRAINT "cargo" FOREIGN KEY ("id_cargo") REFERENCES "public"."psg_cargo_usuario" ("id_cargo") ON DELETE NO ACTION ON UPDATE NO ACTION;
