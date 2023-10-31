create table ctl_fuzzymembresia(
id serial PRIMARY KEY,
consecuencia integer not null,
antecedente integer not null,
tipo int not null,
nombre varchar not null,
rangomin float not null,
rangomax float not null,
rangofinal float not null,
fechacreacion timestamp not null default now(),
fechamodificacion timestamp not null default now(),
activo boolean not null default true,
FOREIGN KEY (tipo) REFERENCES cat_tipos_membresias(id)
);