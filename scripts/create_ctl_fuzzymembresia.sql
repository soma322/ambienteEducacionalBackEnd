create table ctl_fuzzymembresia(
id serial PRIMARY KEY,
antecedente integer not null,
nombre varchar not null,
rangomin float not null,
rangomax float not null,
rangofinal float not null,
fechacreacion timestamp not null default now(),
fechamodificacion timestamp not null default now(),
activo boolean not null default true
);
