USE club_lanus;
SHOW tables;
select* from mysql.user;

-- crear un usuario nuevo
create user if not exists micaelasfs@localhost identified by 'toby';
alter user micaelasfs@localhost  identified by 'nuevacontraseña';

-- crea permisos para ver tablas a usuario;

grant select on deportes to micaelasfs@localhost;
grant select on subcomision to micaelasfs@localhost;       
grant select on coordinadores to micaelasfs@localhost;  
grant select on socio to micaelasfs@localhost;   
grant select on jugadores to micaelasfs@localhost;              
select * from user;

-- consulta permisos de usuario; 

show grants for micaelasfs@localhost;

-- crea nuevo usuario;

create user if not exists santidzapico@localhost identified by 'toby2020' ;

-- asigna permisos de ver, crear y actualizar;

grant delete, select, update (id_socio,id_pagos) on socio to santidzapico@localhost;
grant delete, select, update (descripcion,monto) on pagos to santidzapico@localhost;
grant update (id_entrenador) on entrenador to santidzapico@localhost;
grant select, update (nombre) on coordinadores to santidzapico@localhost;
grant delete, select, update (apellido,tipo_categoria) on jugadores to santidzapico@localhost;


-- mostrar permisos de segundo usuario;
show grants for santidzapico@localhost;



