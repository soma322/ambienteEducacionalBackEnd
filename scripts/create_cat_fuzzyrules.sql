create table cat_fuzzyrules(
id serial PRIMARY KEY,
consecuenta_id integer not null,
condiciones varchar not null,
consecuencia varchar not null,
fechacreacion timestamp not null,
fechamodificacion timestamp not null,
activo boolean not null default true,
FOREIGN KEY(consecuenta_id) REFERENCES ctl_fuzzyconsecuencias(id)
);