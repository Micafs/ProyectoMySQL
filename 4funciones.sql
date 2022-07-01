-- FUNCIONES

use club_lanus

-- DESCRIPCION DE LAS FUNCION

delimiter //
create function FN_entrenador (D int) -- CREAMOS UNA FUNCION CON NOMBRE Y LA DECLARAMOS
returns varchar (100)
deterministic
begin
declare consulta varchar (100);
set consulta =( select (apellido ) from entrenador where D = id_entrenador); -- EN ESTA FUNCION VAMOS A CONSULATR
																			-- EL APELLIDO DEL ENTRENADOR CUYO ID SEA 5
return consulta;
end//
DELIMITER;

-- Select fn_entrenador  (5) as 'apellido del entrenador'; -- EN ESTE SELECT DECLARAMOS EL NUMERO DEL ENTRENADOR QUE VAMOS A BUSCAR
-- Y TAMBIEN ESTAMOS GENERANDO UN ALIAS LLAMADO "APELLIDO DEL ENTRENADOR" 
-- EL CUAL VA A APARECER COMO TITULO EN LA RESPUESTA A MI CONSULTA


-- FUNCION N2

DELIMITER &&
CREATE FUNCTION total_entrenadors () -- CREAMOS UNA FUNCION CON NOMBRE 
RETURNS INT 
DETERMINISTIC 
BEGIN 
DECLARE  TOTAL_TABLA INT;
SELECT COUNT(id_entrenador) INTO TOTAL_TABLA FROM entrenador; -- EN ESTA FUNCION VAMOS A CONTAR A TRAVES DE LOS ID EL NUMERO
															-- DE ENTRENADORES QUE TENEMOS EN TOTAL EN TODOS LOS DEPORTES
RETURN TOTAL_TABLA;
END&&
DELIMITER ; 

-- SELECT total_entrenadors (); -- CUANDO EJECUTEMOS ESTE SELECT PODREMOS VERIFICAR SI FUNCION SE EJECUTO CORRECTAMENTE