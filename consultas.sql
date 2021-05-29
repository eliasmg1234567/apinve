-- obtener todos los campos de usuario_cargo_permiso
select u.*,c.nombre_cargo,p.nombre_permiso from public.psg_usuario as u join psg_cargo_usuario as c on c.id_cargo=u.id_cargo join psg_permiso_cargo as pc on pc.id_cargo=c.id_cargo join psg_permiso as p on p.id_permiso=pc.id_permiso order by id_usuario asc

