
CREATE TABLE IF NOT EXISTS cat_materias(
idu serial not null primary key,
des_materia varchar not null,
activo boolean not null default true
)
insert into cat_materias (des_materia) values ('fisica');