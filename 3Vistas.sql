-- VISTAS

use club_lanus;

-- DESCRCIPCION DE VISTA CON LA FUNCION

-- AQUI VAMOS A PODER VER EL NOMBRE Y EL APELLIDO DE LOS ENTRENADORES SE HACEN CARGO DE FUTBOL. (EL ID QUE IDENTIFICA A FUTBOL ES (1))
create or replace view vw_entrenador as  (
select nombre, apellido
from entrenador
where id_deportes = 1
);


-- select * from vw_entrenador; -- CUANDO EJECUTEMOS ESTE SELECT PODREMOS VERIFICAR SI LA VISTA SE REALIZO CORRECTAMENTE
-- SELECT* FROM ENTRENADOR; -- EJECUANDO ESTE SELECT PODREMOS VERIFICAR SI LA INFORMACION ES CORRECTA


-- AQUI VAMOS A PODER VER EL EMAIL DE LOS SOCIOS QUE COMIENZAN CON S
create or replace view vw_socio as  (
select email
from socio
where email like 's%'
);

-- select * from vw_socio; -- CUANDO EJECUTEMOS ESTE SELECT PODREMOS VERIFICAR SI LA VISTA SE REALIZO CORRECTAMENTE
-- SELECT* FROM SOCIO -- EJECUANDO ESTE SELECT PODREMOS VERIFICAR SI LA INFORMACION ES CORRECTA


-- AQUI VAMOS A PODER VER QUE JUGADORES ESTAN EN LA LINEA "B"
create or replace view vw_jugadores as  (
select id_jugador
from jugadores
where tipo_categoria like 'B'
);

-- select * from vw_jugadores;-- CUANDO EJECUTEMOS ESTE SELECT PODREMOS VERIFICAR SI LA VISTA SE REALIZO CORRECTAMENTE
-- SELECT* FROM JUGADORES; -- EJECUANDO ESTE SELECT PODREMOS VERIFICAR SI LA INFORMACION ES CORRECTA


-- AQUI VAMOS A PODER VER EL NUMERO DE IDENTIFICACION DE QUIENES CONFORMAN 
-- EL GRUPO DE SUBCOMISION QUE TIENEN QUE HACERSE CARGO DEL COORDINADOR NUMERO 3. ESTE NUMERO CORRESPONDE AL COORDINADOR DE VOLEY.
create or replace view vw_subcomision as  ( 
select ID_SUBCOMISION
from subcomision
where id_coordinador like '3'
);

-- select * from vw_subcomision;-- CUANDO EJECUTEMOS ESTE SELECT PODREMOS VERIFICAR SI LA VISTA SE REALIZO CORRECTAMENTE
-- SELECT* FROM SUBCOMISION; -- EJECUANDO ESTE SELECT PODREMOS VERIFICAR SI LA INFORMACION ES CORRECTA



-- AQUI VAMOS A PODER TODOS LOS DATOS DE LOS ENTRENADORES COMPLETOS
create view vw_Entrenador_completo as (
select entrenador.id_entrenador, entrenador.nombre, entrenador.apellido, entrenador.dni,  entrenador.telefono,
entrenador.email, entrenador.DIRECCION,
deportes.descripcion as 'descripción', jugadores.nombre as 'nombre jugador', 
jugadores.apellido as 'apellido jugador'
from entrenador
join jugadores on jugadores.id_jugador = entrenador.id_jugador
join deportes on entrenador.id_deportes =  deportes.id_deportes);

-- select * from vw_entrenador_completo; -- CUANDO EJECUTEMOS ESTE SELECT PODREMOS VERIFICAR SI LA VISTA SE REALIZO CORRECTAMENTE