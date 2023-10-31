create table cat_tipos_membresias(
id SERIAL PRIMARY KEY not null,
nombre varchar not null,
activo boolean not null default true
);
