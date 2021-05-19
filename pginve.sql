/*
 Navicat Premium Data Transfer

 Source Server         : pginve
 Source Server Type    : PostgreSQL
 Source Server Version : 110011
 Source Host           : localhost:5432
 Source Catalog        : pginve
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110011
 File Encoding         : 65001

 Date: 18/05/2021 09:00:23
*/


-- ----------------------------
-- Table structure for bodega
-- ----------------------------
DROP TABLE IF EXISTS "public"."bodega";
CREATE TABLE "public"."bodega" (
  "id_oficina" int2 NOT NULL,
  "id_producto" int2 NOT NULL,
  "cantidad_bodega" int2,
  "ultimo_movimiento_bodega" date
)
;
COMMENT ON COLUMN "public"."bodega"."cantidad_bodega" IS 'cantidad de articulos';
COMMENT ON COLUMN "public"."bodega"."ultimo_movimiento_bodega" IS 'decha de ultimo movimiento';

-- ----------------------------
-- Table structure for cargos
-- ----------------------------
DROP TABLE IF EXISTS "public"."cargos";
CREATE TABLE "public"."cargos" (
  "id_cargo" int2 NOT NULL,
  "nombre_cargo" varchar(255) COLLATE "pg_catalog"."default",
  "estado_cargo" varchar(16) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."cargos"."id_cargo" IS 'id del cargo';
COMMENT ON COLUMN "public"."cargos"."nombre_cargo" IS 'nombre del cargo';
COMMENT ON COLUMN "public"."cargos"."estado_cargo" IS 'estado del cargo';

-- ----------------------------
-- Table structure for movimiento_productos
-- ----------------------------
DROP TABLE IF EXISTS "public"."movimiento_productos";
CREATE TABLE "public"."movimiento_productos" (
  "id_mov_prod" int2 NOT NULL,
  "id_origen" int2,
  "nombre_origen" varchar(255) COLLATE "pg_catalog"."default",
  "id_destino" int2,
  "nombre_destino" varchar(255) COLLATE "pg_catalog"."default",
  "id_producto" int2,
  "cantidad" int2,
  "motivo_movimiento" varchar(45) COLLATE "pg_catalog"."default",
  "tipo_movimiento" varchar(45) COLLATE "pg_catalog"."default",
  "fecha_movimiento" date
)
;
COMMENT ON COLUMN "public"."movimiento_productos"."id_origen" IS 'id de oficina origen';
COMMENT ON COLUMN "public"."movimiento_productos"."nombre_origen" IS 'indica si proviene de un proveedor o una oficina';
COMMENT ON COLUMN "public"."movimiento_productos"."id_destino" IS 'id de oficina destino';
COMMENT ON COLUMN "public"."movimiento_productos"."nombre_destino" IS 'indica si envia a un proveedor o una oficina';
COMMENT ON COLUMN "public"."movimiento_productos"."id_producto" IS 'id del producto';
COMMENT ON COLUMN "public"."movimiento_productos"."cantidad" IS 'cantidad de productos';
COMMENT ON COLUMN "public"."movimiento_productos"."motivo_movimiento" IS 'razon del movimiento';
COMMENT ON COLUMN "public"."movimiento_productos"."tipo_movimiento" IS 'indica si se trata de un ingreso o egreso';
COMMENT ON COLUMN "public"."movimiento_productos"."fecha_movimiento" IS 'fecha en la que realiza el movimiento';

-- ----------------------------
-- Table structure for oficinas
-- ----------------------------
DROP TABLE IF EXISTS "public"."oficinas";
CREATE TABLE "public"."oficinas" (
  "desc_oficina" varchar(255) COLLATE "pg_catalog"."default",
  "dir_oficina" varchar(1000) COLLATE "pg_catalog"."default",
  "tel_oficina" varchar(45) COLLATE "pg_catalog"."default",
  "id_usuario" int2,
  "estado" varchar(16) COLLATE "pg_catalog"."default",
  "id_oficina" int2 NOT NULL
)
;
COMMENT ON COLUMN "public"."oficinas"."desc_oficina" IS 'descripcion de la oficina';
COMMENT ON COLUMN "public"."oficinas"."dir_oficina" IS 'direccion de la oficina';
COMMENT ON COLUMN "public"."oficinas"."tel_oficina" IS 'telefono de la oficina';
COMMENT ON COLUMN "public"."oficinas"."id_usuario" IS 'id del usuario encargado';
COMMENT ON COLUMN "public"."oficinas"."estado" IS 'estado de la sucursal';
COMMENT ON COLUMN "public"."oficinas"."id_oficina" IS ' ';

-- ----------------------------
-- Table structure for permisos
-- ----------------------------
DROP TABLE IF EXISTS "public"."permisos";
CREATE TABLE "public"."permisos" (
  "id_permiso" int2 NOT NULL,
  "nombre_permiso" varchar(50) COLLATE "pg_catalog"."default",
  "descripcion_permiso" varchar(255) COLLATE "pg_catalog"."default",
  "valor_defecto" varchar(45) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."permisos"."nombre_permiso" IS 'nombre del permiso';
COMMENT ON COLUMN "public"."permisos"."descripcion_permiso" IS 'estado del cargo';
COMMENT ON COLUMN "public"."permisos"."valor_defecto" IS 'identifica si el permiso esta habilitado o no';

-- ----------------------------
-- Table structure for permisos_cargo
-- ----------------------------
DROP TABLE IF EXISTS "public"."permisos_cargo";
CREATE TABLE "public"."permisos_cargo" (
  "id_cargo" int2 NOT NULL,
  "id_permiso" int2 NOT NULL,
  "valor" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."permisos_cargo"."id_cargo" IS 'id del cargo';
COMMENT ON COLUMN "public"."permisos_cargo"."id_permiso" IS 'id del permiso';
COMMENT ON COLUMN "public"."permisos_cargo"."valor" IS 'identifica si l asociacion se encuentra habilitada o no';

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS "public"."productos";
CREATE TABLE "public"."productos" (
  "id_producto" int2 NOT NULL,
  "tipo_producto" int2,
  "nombre_producto" varchar(255) COLLATE "pg_catalog"."default",
  "desc_producto" varchar(1000) COLLATE "pg_catalog"."default",
  "carac_producto" text COLLATE "pg_catalog"."default",
  "precio_venta_producto" numeric(10,3),
  "estado_producto" varchar(16) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."productos"."tipo_producto" IS 'indica la cateogira del producto';
COMMENT ON COLUMN "public"."productos"."nombre_producto" IS 'nombre del producto';
COMMENT ON COLUMN "public"."productos"."desc_producto" IS 'descripcion del producto';
COMMENT ON COLUMN "public"."productos"."carac_producto" IS 'detalle de principales caracteristicas tecniocas del producto';
COMMENT ON COLUMN "public"."productos"."precio_venta_producto" IS 'indica el costo del producto';
COMMENT ON COLUMN "public"."productos"."estado_producto" IS 'nombre del dueño de la cuenta';

-- ----------------------------
-- Table structure for productos_proveedores
-- ----------------------------
DROP TABLE IF EXISTS "public"."productos_proveedores";
CREATE TABLE "public"."productos_proveedores" (
  "id_producto" int2 NOT NULL,
  "precio_venta" numeric(10,3) NOT NULL,
  "id_proveedor" int2 NOT NULL
)
;
COMMENT ON COLUMN "public"."productos_proveedores"."precio_venta" IS 'costo del producto';

-- ----------------------------
-- Table structure for proveedores
-- ----------------------------
DROP TABLE IF EXISTS "public"."proveedores";
CREATE TABLE "public"."proveedores" (
  "id_prov" int2 NOT NULL,
  "nombre_prov" varchar(255) COLLATE "pg_catalog"."default",
  "apellido_prov" varchar(255) COLLATE "pg_catalog"."default",
  "ci_prov" varchar(45) COLLATE "pg_catalog"."default",
  "telefono_prov" varchar(45) COLLATE "pg_catalog"."default",
  "email_prov" varchar(255) COLLATE "pg_catalog"."default",
  "direccion" varchar(500) COLLATE "pg_catalog"."default",
  "estado" varchar(16) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."proveedores"."id_prov" IS 'id del proveedor';
COMMENT ON COLUMN "public"."proveedores"."nombre_prov" IS 'nombre o razon social del proveedor';
COMMENT ON COLUMN "public"."proveedores"."apellido_prov" IS 'apelido del proveedor';
COMMENT ON COLUMN "public"."proveedores"."ci_prov" IS 'cedula del proveedor';
COMMENT ON COLUMN "public"."proveedores"."telefono_prov" IS 'telefono del proveedor';
COMMENT ON COLUMN "public"."proveedores"."email_prov" IS 'correo del proveedor';
COMMENT ON COLUMN "public"."proveedores"."direccion" IS 'direccion del proveedor';
COMMENT ON COLUMN "public"."proveedores"."estado" IS 'estado del proveedor';

-- ----------------------------
-- Table structure for tipo_producto
-- ----------------------------
DROP TABLE IF EXISTS "public"."tipo_producto";
CREATE TABLE "public"."tipo_producto" (
  "nombre_tipo_producto" varchar(255) COLLATE "pg_catalog"."default",
  "desc_tipo_producto" varchar(1000) COLLATE "pg_catalog"."default",
  "id_tipo_producto" int2 NOT NULL
)
;
COMMENT ON COLUMN "public"."tipo_producto"."nombre_tipo_producto" IS 'nombre del tipo o categoria';
COMMENT ON COLUMN "public"."tipo_producto"."desc_tipo_producto" IS 'descripcion del tipo de producto';

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS "public"."usuarios";
CREATE TABLE "public"."usuarios" (
  "id_usuario" int2 NOT NULL,
  "nombre_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "apellido_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "telefono_usuario" varchar(45) COLLATE "pg_catalog"."default",
  "email_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "id_cargo" int2,
  "password" varchar(45) COLLATE "pg_catalog"."default",
  "estado_usuario" varchar(16) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."usuarios"."id_usuario" IS 'id del usuario';
COMMENT ON COLUMN "public"."usuarios"."nombre_usuario" IS 'nombre del usuario';
COMMENT ON COLUMN "public"."usuarios"."apellido_usuario" IS 'apellido del usuario';
COMMENT ON COLUMN "public"."usuarios"."telefono_usuario" IS 'telefono del usuario';
COMMENT ON COLUMN "public"."usuarios"."email_usuario" IS 'correo del usuario';
COMMENT ON COLUMN "public"."usuarios"."id_cargo" IS 'cargo del usuario';
COMMENT ON COLUMN "public"."usuarios"."password" IS 'contraseña del usuario';
COMMENT ON COLUMN "public"."usuarios"."estado_usuario" IS 'estado del usuario';

-- ----------------------------
-- Primary Key structure for table bodega
-- ----------------------------
ALTER TABLE "public"."bodega" ADD CONSTRAINT "bodega_pkey" PRIMARY KEY ("id_oficina", "id_producto");

-- ----------------------------
-- Primary Key structure for table cargos
-- ----------------------------
ALTER TABLE "public"."cargos" ADD CONSTRAINT "cargos_pkey" PRIMARY KEY ("id_cargo");

-- ----------------------------
-- Primary Key structure for table movimiento_productos
-- ----------------------------
ALTER TABLE "public"."movimiento_productos" ADD CONSTRAINT "movimiento_productos_pkey" PRIMARY KEY ("id_mov_prod");

-- ----------------------------
-- Primary Key structure for table oficinas
-- ----------------------------
ALTER TABLE "public"."oficinas" ADD CONSTRAINT "oficinas_pkey" PRIMARY KEY ("id_oficina");

-- ----------------------------
-- Primary Key structure for table permisos
-- ----------------------------
ALTER TABLE "public"."permisos" ADD CONSTRAINT "permisos_pkey" PRIMARY KEY ("id_permiso");

-- ----------------------------
-- Primary Key structure for table permisos_cargo
-- ----------------------------
ALTER TABLE "public"."permisos_cargo" ADD CONSTRAINT "permisos_cargo_pkey" PRIMARY KEY ("id_permiso", "id_cargo");

-- ----------------------------
-- Primary Key structure for table productos
-- ----------------------------
ALTER TABLE "public"."productos" ADD CONSTRAINT "activos_pkey" PRIMARY KEY ("id_producto");

-- ----------------------------
-- Primary Key structure for table productos_proveedores
-- ----------------------------
ALTER TABLE "public"."productos_proveedores" ADD CONSTRAINT "productos_proveedores_pkey" PRIMARY KEY ("id_producto", "id_proveedor");

-- ----------------------------
-- Primary Key structure for table proveedores
-- ----------------------------
ALTER TABLE "public"."proveedores" ADD CONSTRAINT "proveedores_pkey" PRIMARY KEY ("id_prov");

-- ----------------------------
-- Primary Key structure for table tipo_producto
-- ----------------------------
ALTER TABLE "public"."tipo_producto" ADD CONSTRAINT "tipo_producto_pkey" PRIMARY KEY ("id_tipo_producto");

-- ----------------------------
-- Primary Key structure for table usuarios
-- ----------------------------
ALTER TABLE "public"."usuarios" ADD CONSTRAINT "usuarios_pkey" PRIMARY KEY ("id_usuario");

-- ----------------------------
-- Foreign Keys structure for table bodega
-- ----------------------------
ALTER TABLE "public"."bodega" ADD CONSTRAINT "oficina" FOREIGN KEY ("id_oficina") REFERENCES "public"."oficinas" ("id_oficina") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."bodega" ADD CONSTRAINT "producto" FOREIGN KEY ("id_producto") REFERENCES "public"."productos" ("id_producto") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table movimiento_productos
-- ----------------------------
ALTER TABLE "public"."movimiento_productos" ADD CONSTRAINT "producto" FOREIGN KEY ("id_producto") REFERENCES "public"."productos" ("id_producto") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table oficinas
-- ----------------------------
ALTER TABLE "public"."oficinas" ADD CONSTRAINT "usuario" FOREIGN KEY ("id_usuario") REFERENCES "public"."usuarios" ("id_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table permisos_cargo
-- ----------------------------
ALTER TABLE "public"."permisos_cargo" ADD CONSTRAINT "cargo" FOREIGN KEY ("id_cargo") REFERENCES "public"."cargos" ("id_cargo") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."permisos_cargo" ADD CONSTRAINT "permiso" FOREIGN KEY ("id_permiso") REFERENCES "public"."permisos" ("id_permiso") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table productos
-- ----------------------------
ALTER TABLE "public"."productos" ADD CONSTRAINT "tipo_producto" FOREIGN KEY ("tipo_producto") REFERENCES "public"."tipo_producto" ("id_tipo_producto") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table productos_proveedores
-- ----------------------------
ALTER TABLE "public"."productos_proveedores" ADD CONSTRAINT "producto" FOREIGN KEY ("id_producto") REFERENCES "public"."productos" ("id_producto") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."productos_proveedores" ADD CONSTRAINT "proveedor" FOREIGN KEY ("id_proveedor") REFERENCES "public"."proveedores" ("id_prov") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table usuarios
-- ----------------------------
ALTER TABLE "public"."usuarios" ADD CONSTRAINT "cargo" FOREIGN KEY ("id_cargo") REFERENCES "public"."cargos" ("id_cargo") ON DELETE NO ACTION ON UPDATE NO ACTION;
