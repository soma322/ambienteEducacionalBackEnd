
INSERT INTO cat_preguntas (id_materia,nivel, pregunta)
VALUES (1,1, '¿Qué es la física?');

INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3)
VALUES (1, 'La física es el estudio de las propiedades y leyes que gobiernan la materia y la energía en el universo.', 'La física es el estudio de las relaciones interpersonales y la comunicación.', 'La física es la ciencia que se enfoca en la historia y el estudio de eventos pasados.', 'La física es el estudio de la música y la composición de canciones.');

INSERT INTO cat_ayuda (pregunta_id, ayuda)
VALUES (1, 'La respuesta correcta tiene que ver con cómo funciona el mundo y las leyes que rigen el universo, en lugar de temas sociales, históricos o artísticos.');
