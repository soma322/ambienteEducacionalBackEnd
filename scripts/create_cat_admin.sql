CREATE TABLE IF NOT EXISTS cat_admin
(
    pk_cat_admin serial NOT NULL ,
    usuario character varying  NOT NULL DEFAULT ''::character varying,
    contrasena character varying NOT NULL DEFAULT ''::character varying,
	info_usuario integer not null,
    rol_usuario integer NOT NULL DEFAULT 0,
    fec_creacion timestamp without time zone NOT NULL DEFAULT now(),
    fec_modificacion timestamp without time zone NOT NULL DEFAULT now(),
    opc_activo boolean NOT NULL DEFAULT true,
    CONSTRAINT cat_admin_pkey PRIMARY KEY (pk_cat_admin),
    CONSTRAINT cat_admin_rol_usuario_fkey FOREIGN KEY (rol_usuario) REFERENCES cat_admintipos (pk_cat_admintipos),
	CONSTRAINT cat_admin_info_usuario_fkey FOREIGN KEY (info_usuario) REFERENCES cat_usuarios (pk_cat_usuarios)
);

insert into cat_admin (usuario,contrasena,rol_usuario,info_usuario) values ('admin','admin',1,1);
insert into cat_admin (usuario,contrasena,rol_usuario,info_usuario) values ('profesor','admin',2,2);
insert into cat_admin (usuario,contrasena,rol_usuario,info_usuario) values ('alumno','admin',3,3);