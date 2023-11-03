CREATE TABLE IF NOT EXISTS cat_admintipos
(
    pk_cat_admintipos serial NOT NULL ,
    des_tipo character varying NOT NULL DEFAULT ''::character varying,
    privilegio integer NOT NULL DEFAULT 0,
    fec_creacion timestamp without time zone NOT NULL DEFAULT now(),
    fec_modificacion timestamp without time zone NOT NULL DEFAULT now(),
    opc_activo boolean NOT NULL DEFAULT true,
    CONSTRAINT cat_admintipos_pkey PRIMARY KEY (pk_cat_admintipos)
);



insert into cat_admintipos (des_tipo,privilegio) values ('admin',1,);
insert into cat_admintipos (des_tipo,privilegio) values ('profesor',2);
insert into cat_admintipos (des_tipo,privilegio) values ('alumno',3);