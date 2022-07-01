-- TRIGGERS


use club_lanus;


-- DESCRCIPCION DE VISTA CON LA FUNCION

CREATE TABLE reg_pagos(
ANTERIOR_ID_PAGOS INT ,
ANTERIOR_DESCRIPCION VARCHAR (40),
ANTERIOR_MONTO INT,
NUEVO_ID_PAGOS INT ,
NUEVO_DESCRIPCION VARCHAR (40),
NUEVO_MONTO INT,
USUARIO VARCHAR (15), 
F_MODIFICACION DATE
);

drop trigger if exists ACT_PRECIOS_BU;
delimiter !!

CREATE TRIGGER ACT_PRECIOS_BU BEFORE UPDATE ON PAGOS
FOR EACH ROW
begin
INSERT INTO reg_pagos (ANTERIOR_ID_PAGOS, ANTERIOR_DESCRIPCION, ANTERIOR_MONTO, NUEVO_ID_PAGOS, NUEVO_DESCRIPCION, NUEVO_MONTO, USUARIO, F_MODIFICACION)
VALUES 
(OLD.ID_PAGOS, OLD.DESCRIPCION, OLD.MONTO, NEW.ID_PAGOS, NEW.DESCRIPCION, NEW.MONTO, CURRENT_USER(), NOW());
end !!

delimiter ;

UPDATE PAGOS SET MONTO=MONTO+20
WHERE  ID_PAGOS = 1;

-- SELECT* FROM PAGOS;
-- SELECT* FROM reg_pagos;






create table reg_entrenadores2 ( 
ID_ENTRENADOR INT ,
ID_DEPORTES INT,
ID_JUGADOR INT,
ID_AYUDANTE INT,
ID_COORDINADOR INT,
NOMBRE VARCHAR (40),
APELLIDO VARCHAR (40),
DNI VARCHAR (40),
TELEFONO VARCHAR (40),
EMAIL VARCHAR (50),
DIRECCION VARCHAR (50),
insertado datetime
);

drop trigger if exists ENTRENADOR_AI2;
delimiter ##

create trigger ENTRENADOR_AI2
after insert on entrenador 
for each row 
begin
insert into reg_entrenadores2 (id_entrenador, ID_DEPORTES, id_jugador,  id_ayudante, id_coordinador, nombre, apellido, dni, telefono, email, direccion, insertado)
values (NEW.id_entrenador, NEW.id_deportes,  NEW.id_jugador,  NEW.id_ayudante,  NEW.id_coordinador, NEW.nombre, NEW.apellido, NEW.dni, NEW.telefono,  NEW.email, NEW.direccion, now());
end ##
delimiter ;

insert into entrenador (id_entrenador, ID_DEPORTES, id_jugador,  id_ayudante, id_coordinador, nombre, apellido, dni, telefono, email, direccion)
values (328, 1, 50, 12, 3, 'camila', 'zapi', 67543896, 2276543988, 'papicam@hotmail.com', 'españa 2409');


-- select * from reg_entrenadores2; 
-- select * from entrenador;