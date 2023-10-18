create table ctl_fuzzyconsecuencias(
id serial PRIMARY KEY,
nombre varchar not null,
rangomin float not null,
rangomax float not null,
incremental float not null,
fechacreacion timestamp not null,
fechamodificacion timestamp not null,
activo boolean not null default true,
CONSTRAINT grupo_antecedentes UNIQUE (id)
);