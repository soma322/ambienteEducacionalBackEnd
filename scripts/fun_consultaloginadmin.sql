-- FUNCTION: fun_consultaloginadmin(character varying, character varying)

-- DROP FUNCTION IF EXISTS fun_consultaloginadmin(character varying, character varying);

CREATE OR REPLACE FUNCTION fun_consultaloginadmin(
	_usuario character varying,
	_contrasena character varying,
	OUT nombre character varying,
	OUT apellido_paterno character varying,
	OUT apellido_materno character varying,
	OUT descripcion character varying,
	OUT rol integer,
	OUT privilegio integer,
	OUT idu integer)
    RETURNS SETOF record 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE SECURITY DEFINER PARALLEL UNSAFE
    ROWS 1000

AS $BODY$

DECLARE
reg RECORD;
		
	BEGIN
	--select * from cat_usuarios
		
		
		FOR reg IN (
			SELECT c.nombre,c.apellido_paterno, c.apellido_materno,b.des_tipo,a.rol_usuario, b.privilegio,c.pk_cat_usuarios as id from cat_admin a
			inner join cat_admintipos b
			ON a.rol_usuario = b.pk_cat_admintipos
			inner join cat_usuarios c
			ON a.info_usuario = c.pk_cat_usuarios
			WHERE usuario = _usuario and contrasena = _contrasena)
		LOOP 
				nombre			:= reg.nombre;
				apellido_paterno:= reg.apellido_paterno;
				apellido_materno:= reg.apellido_materno;
				descripcion		:= reg.des_tipo;
				rol	:= reg.rol_usuario;
				privilegio 		:= reg.privilegio;
				idu				:= reg.id;
				RETURN NEXT;
			
		END LOOP;	
	END;

$BODY$;
