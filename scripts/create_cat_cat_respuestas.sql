CREATE TABLE cat_respuestas (
    id serial PRIMARY KEY,
    id_pregunta integer REFERENCES cat_preguntas (id),
    respuesta text NOT NULL,
    incorrecta1 text not null,
	incorrecta2 text not null,
	incorrecta3 text not null
);