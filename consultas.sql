-- obtener todos los campos de usuario_cargo_permiso
select u.*,c.nombre_cargo,p.nombre_permiso from public.psg_usuario as u join psg_cargo_usuario as c on c.id_cargo=u.id_cargo join psg_permiso_cargo as pc on pc.id_cargo=c.id_cargo join psg_permiso as p on p.id_permiso=pc.id_permiso order by id_usuario asc

-- insertar en materiales
insert into psg_material (nombre_material,id_tipo,fecha_compra,estado,descripcion_material,caracteristicas,id_oficina,id_usuario) values('cable UTP',5,'22-05-2021','nuevo','cable de red','Cable tipo 5, 6 metros',1,2)

--mostrar materiales con tipo
select * from psg_material as m join psg_tipo_material as tm on m.id_tipo=tm.id_tipo_material

--mostrar materiales con tipo y oficina
select * from psg_material as m join psg_tipo_material as tm on m.id_tipo=tm.id_tipo_material join psg_oficina as o on m.id_oficina=o.id_oficina

--agregar usuario
insert into psg_usuario(nombre_usuario,apellido_usuario,telefono_usuario,email_usuario,id_cargo,password,estado_usuario,id_oficina) values('adalid','m','11111','adalid@gmail.com',3,'adalid','activo',2)

--mostrar usuario con oficina y cargo
select * from psg_usuario as u join psg_oficina as o on u.id_oficina=o.id_oficina join psg_cargo_usuario as cu on u.id_cargo=cu.id_cargo order by id_usuario asc

--eliminar material
delete from psg_material where id_material=1