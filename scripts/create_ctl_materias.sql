CREATE TABLE ctl_materias(
idu serial primary Key,
nivel integer not null default 1,
idu_alumno integer references cat_usuarios(pk_cat_usuarios),
idu_materia integer references cat_materias(idu),
fecha_modificacion timestamp without time zone NOT NULL default now()
)