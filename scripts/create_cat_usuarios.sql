CREATE TABLE IF NOT EXISTS cat_usuarios(
pk_cat_usuarios serial NOT NULL,
nombre varchar NOT NULL,
apellido_paterno varchar not null,
apellido_materno varchar not null,
fec_creacion timestamp without time zone NOT NULL DEFAULT now(),
fec_modificacion timestamp without time zone NOT NULL DEFAULT now(),
opc_activo boolean NOT NULL DEFAULT true,
CONSTRAINT cat_usuarios_pkey PRIMARY KEY (pk_cat_usuarios)
);


insert into cat_usuarios (nombre,apellido_paterno,apellido_materno) values ('Fernando','Vazquez','Cota')
insert into cat_usuarios (nombre,apellido_paterno,apellido_materno) values ('admin','admin','admin')