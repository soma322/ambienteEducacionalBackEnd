CREATE TABLE cat_preguntas (
    id serial PRIMARY KEY,
	id_materia integer REFERENCES cat_materias(idu),
	nivel int NOT NULL,
    pregunta text NOT NULL,
	activo boolean default true
);