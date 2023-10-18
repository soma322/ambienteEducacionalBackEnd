create table ctl_fuzzyantecedentes(
id serial PRIMARY KEY,
consecuencia integer not null default 0,
membresias integer not null default 0,
nombre varchar not null,
rangomin float not null,
rangomax float not null,
incremental float not null,
fechacreacion timestamp not null,
fechamodificacion timestamp not null,
activo boolean not null default true,
FOREIGN KEY (consecuencia) REFERENCES ctl_fuzzyconsecuencias(id)

);