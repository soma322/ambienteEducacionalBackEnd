create table ctl_fuzzymembresia(
id serial PRIMARY KEY,
consecuencia integer not null,
antecedente integer not null,
tipo int not null,
nombre varchar not null,
rango1 float not null,
rango2 float not null,
rango3 float not null,
rango4 float not null,
fechacreacion timestamp not null default now(),
fechamodificacion timestamp not null default now(),
activo boolean not null default true,
FOREIGN KEY (tipo) REFERENCES cat_tipos_membresias(id)
);