CREATE TABLE cat_ayuda(
	id serial PRIMARY KEY,
	pregunta_id integer REFERENCES cat_preguntas (id),
	ayuda text not null
);