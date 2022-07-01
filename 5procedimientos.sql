-- PROCEDIMIENTOS



use club_lanus



DELIMITER !!
CREATE PROCEDURE entrenadores (letras varchar (90))
BEGIN                    
		select*
        from entrenador
        where nombre like concat('%',letras,'%');
END!! 
DELIMITER ;

call entrenadores ('j');



 drop procedure valida_query
DELIMITER !!
CREATE PROCEDURE valida_query (consulta varchar(100))
BEGIN                    
    
        if consulta like '%A%' then
            select "jugadores de categoria A" as result;
        ELSEif consulta like '%B%' then
            select "jugadores de categoria B" as result;
        ELSEif consulta like '%C%' then
            select "jugadores de categoria c" as result;
        else
            select * from jugadores;
        end if;

END !!
DELIMITER ;

call valida_query('A');
call valida_query('B');
call valida_query('C');
-- select* from jugadores






delimiter $$
create procedure SP_Editar_coordinadores (
in id int,
in NOM varchar(40),
in APE varchar(40), 
in DNI varchar(40), 
in TEL varchar(40) 
)
begin
update coordinadores
set  id_coordinador = id,
 NOMBRE = NOM,
 APELLIDO = APE,
 DNI = DNI, 
 TELEFONO = TEL
where id_coordinador = id;

end $$

call SP_Editar_coordinadores (3,'ANALIA','PEREZ',34987640 ,8876403422);
-- SELECT* FROM COORDINADORES
