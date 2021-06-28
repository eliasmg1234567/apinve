-- obtener todos los campos de usuario_cargo_permiso
select u.*,c.nombre_cargo,p.nombre_permiso from public.psg_usuario as u join psg_cargo_usuario as c on c.id_cargo=u.id_cargo join psg_permiso_cargo as pc on pc.id_cargo=c.id_cargo join psg_permiso as p on p.id_permiso=pc.id_permiso order by id_usuario asc

-- insertar en materiales
insert into psg_material (nombre_material,id_tipo,fecha_compra,estado,descripcion_material,caracteristicas,id_oficina,id_usuario) values('cable UTP',5,'22-05-2021','nuevo','cable de red','Cable tipo 5, 6 metros',1,2)

--mostrar materiales con tipo
select * from psg_material as m join psg_tipo_material as tm on m.id_tipo=tm.id_tipo_material

--mostrar materiales con tipo y oficina
select * from psg_material as m join psg_tipo_material as tm on m.id_tipo=tm.id_tipo_material join psg_oficina as o on m.id_oficina=o.id_oficina

--eliminar material
delete from psg_material where id_material=1

--seleccionar material
select * from psg_material where id_material=3

--editar material
update psg_material set nombre_material='cable HDMI',estado='nuevo',descripcion_material='4k 2metro-Snowkids',fecha_compra='2021-10-02',id_tipo=5,caracteristicas='Cable HDMI' where id_material=6

--agregar usuario
insert into psg_usuario(nombre_usuario,apellido_usuario,telefono_usuario,email_usuario,id_cargo,password,estado_usuario,id_oficina) values('adalid','m','11111','adalid@gmail.com',3,'adalid','activo',2)

--mostrar usuario con oficina y cargo
select * from psg_usuario as u join psg_oficina as o on u.id_oficina=o.id_oficina join psg_cargo_usuario as cu o    n u.id_cargo=cu.id_cargo order by id_usuario asc

--obtener oficina especifica con usuarios
select * from psg_oficina as o join psg_usuario as u on u.id_oficina=o.id_oficina where o.id_oficina=1

--obtener oficina especifica con usuarios y cargos
select * from psg_oficina as o join psg_usuario as u on u.id_oficina=o.id_oficina join psg_cargo_usuario as cu on u.id_cargo=cu.id_cargo where o.id_oficina=1

--Editar oficina
update psg_oficina set nombre_oficina='central' where id_oficina=1

--Agregar Oficina
insert into psg_oficina (nombre_oficina,telefono_oficina) values('of_9','99999')
--------------ALMACEN---------------
--mostrar almacen mas material y oficina
select * from psg_almacen as a join psg_material as m on a.id_material=m.id_material join psg_oficina as o on o.id_oficina=a.id_oficina

-- seleccionar oficina de almacen con materiales
select * from psg_almacen as a join psg_material as m on a.id_material=m.id_material where id_oficina=1

----------INGRESO MATERIAL----------
INSERT INTO psg_almacen (id_material,id_oficina,cantidad,fecha) VALUES(46,9,3,'2021-05-07')