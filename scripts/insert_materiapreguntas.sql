
INSERT INTO cat_preguntas (nivel, pregunta) VALUES (1, '¿Qué es la física?');


INSERT INTO cat_respuestas (id_materia, id_pregunta, respuesta, es_correcta) VALUES (1, 2, 'La fórmula para calcular la velocidad es Velocidad (v) = Distancia (d) / Tiempo (t).', true);
INSERT INTO cat_respuestas (id_materia, id_pregunta, respuesta, es_correcta) VALUES (1, 2, 'La fórmula para calcular la velocidad es Velocidad (v) = Aceleración (a) x Tiempo (t).', false);
INSERT INTO cat_respuestas (id_materia, id_pregunta, respuesta, es_correcta) VALUES (1, 2, 'La fórmula para calcular la velocidad es Velocidad (v) = Masa (m) / Aceleración (a).', false);
INSERT INTO cat_respuestas (id_materia, id_pregunta, respuesta, es_correcta) VALUES (1, 2, 'La fórmula para calcular la velocidad es Velocidad (v) = Energía Cinética (KE) / Masa (m).', false);

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (2, 'La respuesta correcta se relaciona con la relación entre la distancia recorrida y el tiempo que toma recorrer esa distancia.');

select * from cat_respuestas

select * from cat_ayuda
select * from cat_preguntas
--update cat_preguntas set id_materia = 1 where id = 2
-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia,nivel, pregunta) VALUES (1,1, '¿Cuál es la fórmula para calcular la velocidad?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1,incorrecta2,incorrecta3) VALUES 
( 2, 'La fórmula para calcular la velocidad es Velocidad (v) = Distancia (d) / Tiempo (t).',
 'La fórmula para calcular la velocidad es Velocidad (v) = Aceleración (a) x Tiempo (t).',
 'La fórmula para calcular la velocidad es Velocidad (v) = Masa (m) / Aceleración (a).'),
 'La fórmula para calcular la velocidad es Velocidad (v) = Energía Cinética (KE) / Masa (m).');
 
 INSERT INTO cat_preguntas (id_materia,nivel, pregunta) VALUES (1,1, '¿Cuál es la fórmula para calcular la velocidad?');
 INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(2, 'La fórmula para calcular la velocidad es Velocidad (v) = Distancia (d) / Tiempo (t).',
 'La fórmula para calcular la velocidad es Velocidad (v) = Aceleración (a) x Tiempo (t).',
 'La fórmula para calcular la velocidad es Velocidad (v) = Masa (m) / Aceleración (a).',
 'La fórmula para calcular la velocidad es Velocidad (v) = Energía Cinética (KE) / Masa (m).');

INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (2, 'La respuesta correcta se relaciona con la relación entre la distancia recorrida y el tiempo que toma recorrer esa distancia.');

INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 1, '¿Qué es la aceleración?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(3, 'La aceleración es la medida de la rapidez con la que un objeto se mueve en una dirección.',
 'La aceleración es la cantidad de movimiento de un objeto en reposo.',
 'La aceleración es la fuerza que actúa sobre un objeto para cambiar su velocidad.',
 'La aceleración es el cambio en la velocidad de un objeto en relación al tiempo. (Correcta)');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (3, 'La respuesta correcta tiene que ver con cómo cambia la velocidad de un objeto en función del tiempo.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 1, '¿Qué unidad se usa para medir la longitud?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(4, 'La unidad para medir la longitud es el metro. (Correcta)',
 'La unidad para medir la longitud es el litro.',
 'La unidad para medir la longitud es el gramo.',
 'La unidad para medir la longitud es el kelvin.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (4, 'La respuesta correcta se relaciona con una medida de distancia comúnmente utilizada en la vida cotidiana y la ciencia.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 1, '¿Cuál es la ley de la inercia de Newton?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(5, 'La ley de la inercia de Newton es una ley que establece que un objeto en movimiento tiende a permanecer en movimiento a una velocidad constante en línea recta, a menos que una fuerza externa actúe sobre él. (Correcta)',
 'La ley de la inercia de Newton es una ley que describe cómo la temperatura de un objeto cambia con el tiempo.',
 'La ley de la inercia de Newton es una teoría sobre la gravedad y cómo afecta a los objetos.',
 'La ley de la inercia de Newton es una ley que describe cómo la energía cinética de un objeto cambia con el tiempo.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (5, 'La respuesta correcta se relaciona con la idea de que un objeto en movimiento tiende a mantener su movimiento a menos que se aplique una fuerza externa.');

select * from cat_respuestas 

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 1, '¿Qué es un movimiento rectilíneo?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(6, 'Un movimiento rectilíneo es un término que se refiere a un movimiento en una línea recta, donde un objeto se desplaza en una sola dirección. (Correcta)',
 'Un movimiento rectilíneo es un tipo de baile popular en algunas culturas.',
 'Un movimiento rectilíneo es un término que describe un objeto que gira alrededor de un punto fijo.',
 'Un movimiento rectilíneo es un tipo de operación matemática en geometría.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (6, 'La respuesta correcta se refiere a cómo se mueve un objeto en una línea recta sin cambios de dirección.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 1, '¿Cómo se mide la temperatura en grados Celsius?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(7, 'La temperatura se mide en grados Celsius. (Correcta)',
 'La temperatura se mide en grados Fahrenheit.',
 'La temperatura se mide en grados Kelvin.',
 'La temperatura se mide en grados Newton.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (7, 'La respuesta correcta se refiere a una de las escalas de temperatura más comunes y ampliamente utilizadas en todo el mundo.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 1, '¿Qué es la masa atómica?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(8, 'La masa atómica es la masa promedio de los átomos de un elemento en relación con la unidad de masa atómica unificada (uma). (Correcta)',
 'La masa atómica es la cantidad total de átomos en una sustancia.',
 'La masa atómica es la masa total de un núcleo atómico.',
 'La masa atómica es la suma de los protones y electrones en un átomo.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (8, 'La respuesta correcta se relaciona con la forma en que se calcula la masa de los átomos de los elementos químicos.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 1, '¿Qué es la inercia?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(9, 'La inercia es la capacidad de un objeto para resistir cambios en su estado de reposo o movimiento. (Correcta)',
 'La inercia es la fuerza que actúa sobre un objeto en movimiento para cambiar su velocidad.',
 'La inercia es la fuerza gravitatoria que atrae dos objetos entre sí.',
 'La inercia es la cantidad de energía cinética que posee un objeto en movimiento.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (9, 'La respuesta correcta se refiere a la propiedad de los objetos que tienden a mantener su estado de reposo o movimiento a menos que una fuerza externa actúe sobre ellos.');

---

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 1, '¿Cuál es la tercera ley de Newton?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(10, 'La tercera ley de Newton establece que "por cada acción hay una reacción igual y opuesta". (Correcta)',
 'La tercera ley de Newton establece que "la fuerza es igual a la masa por la aceleración".',
 'La tercera ley de Newton establece que "todo objeto en movimiento tiende a permanecer en movimiento, y todo objeto en reposo tiende a permanecer en reposo".',
 'La tercera ley de Newton establece que "la energía de un sistema se conserva".');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (10, 'La respuesta correcta se refiere a cómo las fuerzas interactúan en un sistema y cómo actúan en pares.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 2, '¿Qué es la energía cinética?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(11, 'La energía cinética es la energía asociada al movimiento de un objeto. (Correcta)',
 'La energía cinética es la energía potencial almacenada en un objeto.',
 'La energía cinética es la energía térmica liberada durante una reacción química.',
 'La energía cinética es la energía electromagnética emitida por una fuente de luz.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (11, 'La respuesta correcta se refiere a la energía relacionada con el movimiento de un objeto.');




-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 2, '¿Cuál es la diferencia entre velocidad y velocidad media?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(12, 'La velocidad se refiere a la rapidez de un objeto en un instante específico, mientras que la velocidad media es el promedio de la velocidad a lo largo de un intervalo de tiempo. (Correcta)',
 'La velocidad es una cantidad escalar, mientras que la velocidad media es una cantidad vectorial.',
 'La velocidad se mide en kilómetros por hora, mientras que la velocidad media se mide en metros por segundo.',
 'La velocidad es la misma que la velocidad media, no hay diferencia entre ellas.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (12, 'La respuesta correcta se relaciona con la diferencia entre la medida de la velocidad en un punto específico en el tiempo y el promedio de velocidad a lo largo de un período de tiempo.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 2, '¿Qué es la fricción?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(13, 'La fricción es una propiedad que describe la resistencia de un objeto al movimiento cuando está sujeto a una fuerza externa. (Correcta)',
 'La fricción es una propiedad química de los materiales que describe su reactividad con otros elementos.',
 'La fricción es una medida de la masa de un objeto en relación con su volumen.',
 'La fricción es una medida de la velocidad de un objeto en movimiento.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (13, 'La respuesta correcta se refiere a una fuerza que se opone al movimiento de un objeto cuando este se desliza o rueda sobre una superficie.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 2, '¿Qué es la masa?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(14, 'La masa es la cantidad de materia en un objeto, y es una propiedad fundamental que no depende de la gravedad. (Correcta)',
 'La masa es la medida de la cantidad de energía que posee un objeto.',
 'La masa es la medida de la velocidad de un objeto en movimiento.',
 'La masa es la medida de la temperatura de un objeto.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (14, 'La respuesta correcta se relaciona con la cantidad de materia que un objeto contiene, y esta cantidad no cambia independientemente de su ubicación en el universo.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 2, '¿Qué es la masa?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(14, 'La masa es la cantidad de materia en un objeto, y es una propiedad fundamental que no depende de la gravedad. (Correcta)',
 'La masa es la medida de la cantidad de energía que posee un objeto.',
 'La masa es la medida de la velocidad de un objeto en movimiento.',
 'La masa es la medida de la temperatura de un objeto.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (14, 'La respuesta correcta se relaciona con la cantidad de materia que un objeto contiene, y esta cantidad no cambia independientemente de su ubicación en el universo.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 2, '¿Qué es la fuerza centrífuga?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(16, 'La fuerza centrífuga es una fuerza real que actúa hacia afuera desde el centro de rotación de un objeto en movimiento. (Correcta)',
 'La fuerza centrífuga es una fuerza que atrae los objetos hacia el centro de la Tierra.',
 'La fuerza centrífuga es una fuerza que actúa en el interior de un objeto giratorio para mantenerlo unido.',
 'La fuerza centrífuga es una ilusión aparente causada por la rotación de un objeto que parece empujar los objetos hacia afuera desde su centro.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (16, 'La respuesta correcta se relaciona con una aparente "fuerza" que se siente en objetos giratorios, aunque no es una verdadera fuerza, sino más bien una consecuencia de la inercia.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 2, '¿Qué es la energía potencial gravitatoria?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(17, 'La energía potencial gravitatoria es la energía almacenada en un objeto debido a su posición en un campo gravitatorio. (Correcta)',
 'La energía potencial gravitatoria es la energía asociada con la velocidad de un objeto en movimiento.',
 'La energía potencial gravitatoria es la energía liberada cuando un objeto es lanzado hacia arriba en el aire.',
 'La energía potencial gravitatoria es la energía generada por la rotación de la Tierra.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (17, 'La respuesta correcta se relaciona con la energía que un objeto adquiere debido a su posición en un campo gravitatorio, como cuando un objeto se encuentra a una cierta altura sobre la superficie de la Tierra.');

---

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 2, '¿Cuál es la diferencia entre velocidad y velocidad instantánea?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(18, 'La velocidad es una cantidad escalar que mide la rapidez en una dirección específica, mientras que la velocidad instantánea es una cantidad vectorial que se refiere a la rapidez y la dirección en un punto específico en el tiempo. (Correcta)',
 'La velocidad es la misma que la velocidad instantánea y no hay diferencia entre ellas.',
 'La velocidad se refiere a la rapidez de un objeto en movimiento en un momento específico, mientras que la velocidad instantánea se refiere a la rapidez promedio a lo largo de un intervalo de tiempo.',
 'La velocidad es una medida de la rapidez promedio en un intervalo de tiempo, mientras que la velocidad instantánea se refiere a la rapidez en un punto específico en el tiempo.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (18, 'La respuesta correcta se relaciona con la diferencia entre una medida de la velocidad en una dirección específica y la medida de la velocidad en un punto en el tiempo.');
---
-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 2, '¿Qué es un vector?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(19, 'Un vector es una cantidad que tiene tanto magnitud como dirección. (Correcta)',
 'Un vector es una cantidad escalar que solo tiene magnitud y no dirección.',
 'Un vector es una cantidad que solo tiene dirección y no magnitud.',
 'Un vector es una cantidad que solo se utiliza en física teórica y no tiene aplicaciones prácticas.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (19, 'La respuesta correcta se refiere a una cantidad que se caracteriza por tener tanto una magnitud (o tamaño) como una dirección específica en el espacio.');

----

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 2, '¿Cuál es la ecuación de la ley de Hooke?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(20, 'La ecuación de la ley de Hooke es F = -kx. (Correcta)',
 'La ecuación de la ley de Hooke es F = ma.',
 'La ecuación de la ley de Hooke es E = mc^2.',
 'La ecuación de la ley de Hooke es P = VI.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (20, 'La respuesta correcta se relaciona con la ley que describe la relación entre la fuerza aplicada a un resorte y la deformación que experimenta, donde "k" es una constante del resorte y "x" representa la deformación.');


-- select * from cat_preguntas
-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 3, '¿Qué es la fuerza gravitatoria?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(21, 'La fuerza gravitatoria es la fuerza de atracción que existe entre dos objetos debido a su masa. (Correcta)',
 'La fuerza gravitatoria es una fuerza que impulsa a los objetos en movimiento a una velocidad constante.',
 'La fuerza gravitatoria es una fuerza que actúa sobre los objetos en movimiento para cambiar su dirección.',
 'La fuerza gravitatoria es una fuerza que impide que los objetos se muevan en el espacio.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (21, 'La respuesta correcta se relaciona con la interacción entre objetos con masa y cómo se atraen entre sí debido a la gravedad.');

----
-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 3, '¿Cómo se calcula el trabajo mecánico?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(22, 'El trabajo mecánico se calcula como la fuerza aplicada a un objeto multiplicada por la distancia a lo largo de la cual se aplica la fuerza en la misma dirección de la fuerza. (Correcta)',
 'El trabajo mecánico se calcula como la suma de las energías cinética y potencial de un objeto.',
 'El trabajo mecánico se calcula como la aceleración de un objeto dividida por su masa.',
 'El trabajo mecánico se calcula como la velocidad de un objeto multiplicada por su tiempo de movimiento.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (22, 'La respuesta correcta se relaciona con la forma en que se cuantifica la cantidad de trabajo realizado cuando una fuerza actúa sobre un objeto y se desplaza a lo largo de una distancia.');

---

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 3, '¿Qué es el principio de la palanca?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(23, 'El principio de la palanca es un principio de la física que describe cómo se equilibran las fuerzas alrededor de un punto de apoyo o pivote. (Correcta)',
 'El principio de la palanca es una teoría sobre la velocidad de las partículas subatómicas.',
 'El principio de la palanca es un concepto relacionado con la transferencia de calor en objetos sólidos.',
 'El principio de la palanca es una teoría que describe la relación entre la presión y el volumen de un gas ideal.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (23, 'La respuesta correcta se refiere a un concepto importante en la mecánica que se relaciona con cómo se equilibran las fuerzas y los momentos alrededor de un punto fijo.');


----
-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 3, '¿Cuál es la ecuación de la segunda ley de Newton?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(24, 'La ecuación de la segunda ley de Newton es F = ma. (Correcta)',
 'La ecuación de la segunda ley de Newton es F = mg.',
 'La ecuación de la segunda ley de Newton es F = G(m1*m2/r^2).',
 'La ecuación de la segunda ley de Newton es F = kx.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (24, 'La respuesta correcta se relaciona con cómo la fuerza aplicada a un objeto está relacionada con su aceleración y su masa.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 3, '¿Qué es la teoría de la relatividad de Einstein?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(25, 'La teoría de la relatividad de Einstein es una teoría que explica cómo la luz se comporta en diferentes sistemas de referencia y cómo el espacio y el tiempo están interrelacionados. (Correcta)',
 'La teoría de la relatividad de Einstein es una teoría que describe cómo los objetos caen debido a la gravedad.',
 'La teoría de la relatividad de Einstein es una teoría sobre cómo funcionan los imanes y cómo se generan los campos magnéticos.',
 'La teoría de la relatividad de Einstein es una teoría que describe cómo los objetos se mueven en el espacio sin la influencia de ninguna fuerza.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (25, 'La respuesta correcta se relaciona con cómo la teoría de la relatividad de Einstein cambió nuestra comprensión de la física al abordar la relación entre el espacio, el tiempo y la luz.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 3, '¿Cuál es la ley de Pascal?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(26, 'La ley de Pascal es una ley que establece que un cambio en la presión aplicado en un punto de un fluido incompresible se transmite por igual en todas las direcciones. (Correcta)',
 'La ley de Pascal es una ley que describe cómo los objetos se mueven en un fluido.',
 'La ley de Pascal es una ley que describe cómo los objetos cambian de forma cuando se someten a una fuerza.',
 'La ley de Pascal es una ley que describe cómo los objetos se comportan en un campo magnético.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (26, 'La respuesta correcta se refiere a cómo la presión en un fluido incompresible se propaga uniformemente en todas las direcciones cuando se aplica una fuerza.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 3, '¿Qué es el momento de inercia?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(27, 'El momento de inercia es una medida de la resistencia de un objeto a cambiar su estado de rotación. (Correcta)',
 'El momento de inercia es una medida de la cantidad de movimiento de un objeto en movimiento.',
 'El momento de inercia es una medida de la rapidez con la que un objeto se mueve en una dirección específica.',
 'El momento de inercia es una medida de la cantidad de energía cinética de un objeto.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (27, 'La respuesta correcta se relaciona con cómo un objeto resiste los cambios en su estado de rotación, similar a cómo la masa se relaciona con la resistencia a los cambios en el movimiento lineal.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 3, '¿Cómo se calcula la aceleración debida a la gravedad en la Tierra?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(28, 'La aceleración debida a la gravedad en la Tierra se calcula como 9.8 m/s^2. (Correcta)',
 'La aceleración debida a la gravedad en la Tierra se calcula como 10 m/s^2.',
 'La aceleración debida a la gravedad en la Tierra se calcula como 1,000 cm/s^2.',
 'La aceleración debida a la gravedad en la Tierra se calcula como 100 ft/s^2.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (28, 'La respuesta correcta se relaciona con el valor estándar de la aceleración debida a la gravedad en la superficie de la Tierra, que es ampliamente utilizado en física.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 3, '¿Qué es un péndulo simple?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(29, 'Un péndulo simple es un dispositivo que consiste en una masa suspendida en un hilo inextensible y sin peso que oscila en un plano vertical bajo la influencia de la gravedad. (Correcta)',
 'Un péndulo simple es un dispositivo que mide la velocidad del viento en meteorología.',
 'Un péndulo simple es un dispositivo que se utiliza para medir la temperatura en laboratorios científicos.',
 'Un péndulo simple es un dispositivo utilizado en la aviación para medir la altitud de una aeronave.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (29, 'La respuesta correcta se relaciona con un dispositivo que consiste en una masa que cuelga de un hilo y oscila en un plano vertical, que se utiliza en física para estudiar el movimiento oscilatorio.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 3, '¿Cuál es el principio de conservación de la cantidad de movimiento?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(30, 'El principio de conservación de la cantidad de movimiento establece que la cantidad total de movimiento en un sistema aislado se mantiene constante, a menos que actúe una fuerza externa. (Correcta)',
 'El principio de conservación de la cantidad de movimiento establece que la cantidad de movimiento de un sistema se incrementa con el tiempo.',
 'El principio de conservación de la cantidad de movimiento establece que la cantidad de movimiento de un sistema se reduce con el tiempo.',
 'El principio de conservación de la cantidad de movimiento establece que la cantidad de movimiento de un objeto está relacionada con su velocidad y masa.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (30, 'La respuesta correcta se relaciona con la idea de que la cantidad total de movimiento en un sistema cerrado se mantiene sin cambios a menos que haya una influencia externa.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 4, '¿Qué es la óptica geométrica?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(31, 'La óptica geométrica es una rama de la óptica que se enfoca en el estudio de la propagación de la luz y la visión, tratando la luz como rayos que se propagan en línea recta y se reflejan o refractan en superficies. (Correcta)',
 'La óptica geométrica es una rama de las matemáticas que estudia las formas y las figuras geométricas.',
 'La óptica geométrica es una teoría de la relatividad de Einstein que se centra en la geometría del espacio-tiempo.',
 'La óptica geométrica es una rama de la química que se ocupa de la geometría molecular de las sustancias.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (31, 'La respuesta correcta se relaciona con la forma en que la óptica geométrica simplifica la descripción del comportamiento de la luz al tratarla como rayos que se propagan en línea recta y se reflejan o refractan en superficies.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 4, '¿Cuál es la fórmula de la ley de la gravitación universal de Newton?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(32, 'La fórmula de la ley de la gravitación universal de Newton es F = G(m1*m2/r^2). (Correcta)',
 'La fórmula de la ley de la gravitación universal de Newton es F = ma.',
 'La fórmula de la ley de la gravitación universal de Newton es E = mc^2.',
 'La fórmula de la ley de la gravitación universal de Newton es P = VI.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (32, 'La respuesta correcta se relaciona con la fórmula que describe cómo dos objetos con masas diferentes se atraen gravitacionalmente entre sí y depende de la distancia que los separa.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 4, '¿Qué es la energía potencial?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(33, 'La energía potencial es la energía que un objeto tiene debido a su posición o configuración en un campo de fuerza, como la gravedad. (Correcta)',
 'La energía potencial es la energía que un objeto tiene debido a su movimiento.',
 'La energía potencial es la energía que un objeto tiene debido a su temperatura.',
 'La energía potencial es la energía que un objeto tiene debido a su velocidad.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (33, 'La respuesta correcta se relaciona con la energía que un objeto posee debido a su posición o configuración en relación con una fuerza, como la gravedad.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 4, '¿Cuál es la ecuación de la ley de Ohm?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(34, 'La ecuación de la ley de Ohm es V = IR. (Correcta)',
 'La ecuación de la ley de Ohm es P = IV.',
 'La ecuación de la ley de Ohm es F = ma.',
 'La ecuación de la ley de Ohm es E = mc^2.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (34, 'La respuesta correcta se relaciona con la relación entre la tensión (V), la corriente (I) y la resistencia (R) en un circuito eléctrico, y es una de las leyes fundamentales de la electrónica.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 4, '¿Qué es un campo eléctrico?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(35, 'Un campo eléctrico es una región en el espacio que rodea un objeto cargado eléctricamente y ejerce fuerzas eléctricas sobre otras partículas cargadas en su proximidad. (Correcta)',
 'Un campo eléctrico es un dispositivo que genera electricidad.',
 'Un campo eléctrico es una unidad de medida de la energía eléctrica.',
 'Un campo eléctrico es un tipo de batería utilizada en la electrónica.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (35, 'La respuesta correcta se relaciona con una región en el espacio donde la presencia de una carga eléctrica genera influencias eléctricas sobre otras partículas cargadas en esa región.');
-- Insertar la nueva pregunta en la tabla cat_preguntas

INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 4, '¿Qué es la presión atmosférica?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(36, 'La presión atmosférica es la presión ejercida por los objetos en la atmósfera sobre la superficie terrestre. (Correcta)',
 'La presión atmosférica es la presión ejercida por los océanos de la Tierra en la atmósfera.',
 'La presión atmosférica es la presión que se genera en la atmósfera de la Tierra debido a la combustión de combustibles fósiles.',
 'La presión atmosférica es la presión ejercida por la atmósfera de la Tierra sobre objetos en la superficie terrestre.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (36, 'La respuesta correcta se relaciona con la presión ejercida por la atmósfera de la Tierra sobre la superficie terrestre y es una medida importante en meteorología y ciencias ambientales.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 4, '¿Cuál es la diferencia entre conductores y aislantes eléctricos?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(37, 'Los conductores eléctricos son materiales que permiten que la electricidad fluya a través de ellos con facilidad, mientras que los aislantes eléctricos son materiales que no permiten que la electricidad fluya. (Correcta)',
 'Los conductores eléctricos son materiales que no permiten que la electricidad fluya a través de ellos, mientras que los aislantes eléctricos son materiales que permiten que la electricidad fluya fácilmente.',
 'Los conductores eléctricos son materiales que no permiten que la electricidad fluya a través de ellos, mientras que los aislantes eléctricos son materiales que permiten que la electricidad fluya libremente.',
 'Los conductores eléctricos son materiales que no están relacionados con la electricidad, mientras que los aislantes eléctricos son materiales utilizados en la generación de energía eléctrica.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (37, 'La respuesta correcta se relaciona con la capacidad de un material para permitir o evitar el flujo de electricidad, y cómo los conductores permiten que la electricidad fluya, mientras que los aislantes la bloquean.');



-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 4, '¿Qué es un transformador eléctrico?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(38, 'Un transformador eléctrico es un dispositivo que aumenta o disminuye el voltaje de una corriente eléctrica alterna (CA) sin cambiar la frecuencia. (Correcta)',
 'Un transformador eléctrico es un dispositivo que convierte energía mecánica en energía eléctrica.',
 'Un transformador eléctrico es un dispositivo que almacena energía eléctrica en forma de carga eléctrica.',
 'Un transformador eléctrico es un dispositivo que genera electricidad a partir de la energía térmica.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (38, 'La respuesta correcta se relaciona con un dispositivo que se utiliza para ajustar el voltaje de una corriente eléctrica alterna, lo que es importante en la distribución de energía eléctrica y la reducción de pérdidas de energía.');


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 4, '¿Qué es un espejo cóncavo?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(39, 'Un espejo cóncavo es un espejo cuya superficie reflejante es curva hacia adentro, lo que provoca que los rayos de luz converjan en un punto focal. (Correcta)',
 'Un espejo que refleja la luz de manera difusa.',
 'Un espejo que aumenta el tamaño de los objetos reflejados.',
 'Un espejo que solo refleja la luz en una dirección.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (39, 'La respuesta correcta se relaciona con la forma de la superficie del espejo y cómo esta afecta la reflexión de la luz.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 4, '¿Cuál es la ecuación de la ley de Ampere?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(40, 'La ecuación de la ley de Ampère es B = μ₀ * J, donde B representa el campo magnético, μ₀ es la permeabilidad del vacío y J es la densidad de corriente. (Correcta)',
 'La ecuación de la ley de Ampère es E = mc^2.',
 'La ecuación de la ley de Ampère es F = ma.',
 'La ecuación de la ley de Ampère es P = VI.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (40, 'La respuesta correcta se relaciona con la relación entre el campo magnético y la densidad de corriente eléctrica, y utiliza la permeabilidad del vacío como una constante fundamental.');

---------**

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 5, '¿Qué es un circuito en serie?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(41, 'Un circuito en el que los dispositivos eléctricos están conectados de manera que la corriente fluye a través de ellos en una sola trayectoria. (Correcta)',
 'Un circuito en el que los dispositivos eléctricos están conectados en paralelo.',
 'Un circuito en el que los dispositivos eléctricos están conectados de manera que la corriente se divide en múltiples caminos.',
 'Un circuito que no permite el flujo de electricidad.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (41, 'La respuesta correcta se relaciona con cómo están conectados los dispositivos en un circuito, lo que afecta la forma en que fluye la corriente.');

-- Insertar la segunda nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 5, '¿Cuál es la ley de Faraday de la inducción electromagnética?');

-- Insertar respuestas para la segunda nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(42, 'La ley de Faraday de la inducción electromagnética se expresa como ε = -dΦ/dt, donde ε representa la fem (fuerza electromotriz), Φ es el flujo magnético y dt es el cambio en el tiempo. (Correcta)',
 'La ley de Faraday de la inducción electromagnética se expresa como F = ma.',
 'La ley de Faraday de la inducción electromagnética se expresa como P = VI.',
 'La ley de Faraday de la inducción electromagnética se expresa como E = mc^2.');

-- Insertar el consejo de ayuda para la segunda nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (42, 'La respuesta correcta se relaciona con cómo cambia la fem o corriente inducida en un circuito debido a un cambio en el flujo magnético a través de ese circuito. La ecuación ε = -dΦ/dt es fundamental en la ley de Faraday de la inducción electromagnética.');

-- Insertar la tercera nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 5, '¿Qué es un semiconductor?');

-- Insertar respuestas para la tercera nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(43, 'Un material que tiene una conductividad eléctrica intermedia entre un conductor y un aislante y puede variar su conductividad según las condiciones. (Correcta)',
 'Un material que permite el flujo libre de corriente eléctrica en una sola dirección.',
 'Un material que no conduce electricidad en ninguna circunstancia.',
 'Un material que tiene una conductividad eléctrica constante en un rango amplio de temperaturas y condiciones.');

-- Insertar el consejo de ayuda para la tercera nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (43, 'La respuesta correcta se relaciona con la propiedad de los semiconductores de tener una conductividad eléctrica que está entre la de los conductores y los aislantes, y su capacidad de variar su conductividad bajo diferentes condiciones. Los semiconductores son fundamentales en la electrónica y la tecnología de los transistores.');



----------***

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 5, '¿Cuál es la ecuación de la ley de Coulomb?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(44, 'La ecuación de la ley de Coulomb es F = k * (q1 * q2) / r^2, donde F representa la fuerza eléctrica entre dos cargas (q1 y q2), r es la distancia entre ellas y k es la constante electrostática. (Correcta)',
 'La ecuación de la ley de Coulomb es V = IR.',
 'La ecuación de la ley de Coulomb es E = mc^2.',
 'La ecuación de la ley de Coulomb es F = ma.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (44, 'La respuesta correcta se relaciona con la forma en que se calcula la fuerza eléctrica entre dos cargas puntuales utilizando la ley de Coulomb, que depende de las magnitudes de las cargas y la distancia entre ellas.');

-- Insertar la segunda nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 5, '¿Qué es un fotón?');

-- Insertar respuestas para la segunda nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(45, 'Una partícula subatómica que es la unidad básica de la luz y otras formas de radiación electromagnética. (Correcta)',
 'Una partícula subatómica con carga eléctrica negativa.',
 'Una partícula subatómica con carga eléctrica positiva.',
 'Una partícula subatómica sin carga eléctrica y sin masa.');

-- Insertar el consejo de ayuda para la segunda nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (45, 'La respuesta correcta se relaciona con la naturaleza de un fotón como la partícula básica de la luz y otras formas de radiación electromagnética, y no tiene carga eléctrica ni masa en reposo.');

-- Insertar la tercera nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 5, '¿Qué es un circuito en paralelo?');

-- Insertar respuestas para la tercera nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(46, 'Un circuito en el que los dispositivos eléctricos están conectados de manera que la corriente se divide en múltiples caminos. (Correcta)',
 'Un circuito en el que los dispositivos eléctricos están conectados de manera que la corriente fluye a través de ellos en una sola trayectoria.',
 'Un circuito en el que los dispositivos eléctricos están conectados de manera que la tensión es la misma en todos los componentes.',
 'Un circuito que no permite el flujo de electricidad.');

-- Insertar el consejo de ayuda para la tercera nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (46, 'La respuesta correcta se relaciona con la forma en que están conectados los dispositivos en un circuito en paralelo, lo que permite que la corriente se divida en múltiples caminos.');



----*

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 5, '¿Cuál es la ley de Lenz?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(47, 'La ley de Lenz establece que en un circuito eléctrico, la corriente inducida en respuesta a un cambio en el flujo magnético siempre se opone al cambio que la produce. (Correcta)',
 'La ley de Lenz establece que la energía se conserva en un sistema aislado.',
 'La ley de Lenz establece que la fuerza ejercida por un resorte es directamente proporcional a la deformación.',
 'La ley de Lenz establece que la velocidad de un objeto en movimiento es constante a menos que actúe una fuerza externa.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (47, 'La respuesta correcta se relaciona con cómo se comporta la corriente inducida en un circuito en respuesta a un cambio en el flujo magnético, y es una parte fundamental de la ley de la inducción electromagnética de Faraday.');

-- Insertar la segunda nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 5, '¿Qué es el efecto fotoeléctrico?');

-- Insertar respuestas para la segunda nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(48, 'El efecto de la luz que provoca la emisión de electrones de una superficie cuando incide sobre ella. (Correcta)',
 'El efecto de la luz sobre el crecimiento de las plantas.',
 'El efecto de la luz sobre la velocidad de las partículas en un gas.',
 'El efecto de la luz sobre la refracción de los objetos.');

-- Insertar el consejo de ayuda para la segunda nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (48, 'La respuesta correcta se relaciona con el fenómeno en el cual la luz incide en una superficie y causa la liberación de electrones de esa superficie, lo que es un fenómeno fundamental en la física cuántica.');

-- Insertar la tercera nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 5, '¿Cuál es la diferencia entre energía cinética y energía potencial?');

-- Insertar respuestas para la tercera nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(49, 'La energía cinética es la energía de movimiento de un objeto debido a su velocidad, mientras que la energía potencial es la energía asociada con la posición de un objeto en un campo de fuerza, como la gravedad. (Correcta)',
 'La energía cinética es la energía almacenada en un objeto debido a su forma o estructura, mientras que la energía potencial es la energía generada por una fuente de calor.',
 'La energía cinética es la energía almacenada en un sistema debido a su posición o configuración, mientras que la energía potencial es la energía de movimiento de un objeto.',
 'La energía cinética es la energía de una partícula en reposo, mientras que la energía potencial es la energía de una partícula en movimiento.');

-- Insertar el consejo de ayuda para la tercera nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (49, 'La respuesta correcta se relaciona con cómo se diferencia la energía cinética, que se refiere a la energía de movimiento, de la energía potencial, que se relaciona con la posición o configuración de un objeto.');

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 5, '¿Qué es la constante de Planck?');

-- Insertar respuestas para la nueva pregunta
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(50, 'La constante de Planck, representada como "h," es una constante fundamental en la física cuántica que relaciona la energía de una partícula con la frecuencia de su onda asociada, y es esencial en la descripción de la mecánica cuántica. (Correcta)',
 'Una constante matemática que se utiliza en ecuaciones trigonométricas.',
 'Una constante que describe la velocidad de la luz en el vacío.',
 'Una constante que indica la cantidad de materia en un objeto.');

-- Insertar el consejo de ayuda para la nueva pregunta
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (50, 'La respuesta correcta se relaciona con su uso en la mecánica cuántica y su relación con la energía y la frecuencia de partículas subatómicas.');

----*
-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 6, '¿Cuál es el principio de la conservación del momento angular?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 6, '¿Qué es la teoría cuántica?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 6, '¿Cómo se calcula la frecuencia de un oscilador armónico simple?');

-- Insertar respuestas para las nuevas preguntas
-- Pregunta 1
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(51, 'El principio de la conservación del momento angular afirma que el momento angular total de un sistema aislado se mantiene constante si no actúa ningún momento externo sobre él. (Correcta)',
 'El momento angular de un sistema cambia con el tiempo independientemente de las fuerzas externas.',
 'El momento angular de un sistema aislado disminuye a medida que aumenta su velocidad de rotación.',
 'El momento angular de un sistema está relacionado con su masa total.');

-- Pregunta 2
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(52, 'La teoría cuántica aborda el comportamiento de las partículas subatómicas y la naturaleza de la radiación electromagnética. (Correcta)',
 'Una teoría que describe el comportamiento de los cuerpos en movimiento.',
 'Una teoría que se enfoca en el estudio de las interacciones gravitacionales.',
 'Una teoría que se centra en la termodinámica y la transferencia de calor.');

-- Pregunta 3
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(53, 'La frecuencia se calcula como la raíz cuadrada de la constante elástica dividida por la masa del oscilador. (Correcta)',
 'La frecuencia se calcula como la inversa de la amplitud del oscilador.',
 'La frecuencia se calcula como el cociente entre la masa del oscilador y su velocidad.',
 'La frecuencia se calcula como el cociente entre la constante elástica del oscilador y la amplitud de la oscilación.');

-- Insertar los consejos de ayuda para las nuevas preguntas
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (51, 'La respuesta correcta se relaciona con la idea de que, en ausencia de fuerzas externas, el momento angular de un sistema se conserva, lo que es una importante ley de la física.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (52, 'La respuesta correcta se relaciona con el ámbito de estudio de la teoría cuántica, que se enfoca en las partículas subatómicas y la naturaleza de la radiación electromagnética, y es fundamental en la física moderna.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (53, 'La respuesta correcta se relaciona con la relación entre la constante elástica, la masa y la frecuencia en un oscilador armónico simple, y cómo se calcula la frecuencia en función de estos parámetros.');


----*

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 6, '¿Cuál es el principio de la tercera ley de Kepler?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 6, '¿Qué es la teoría de cuerdas?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 6, '¿Qué es la radiactividad?');

-- Insertar respuestas para las nuevas preguntas
-- Pregunta 1
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(54, 'El cuadrado del período de revolución de un planeta es directamente proporcional al cubo del semieje mayor de su órbita elíptica. (Correcta)',
 'Los planetas se mueven en órbitas elípticas con el Sol en uno de los focos.',
 'Los planetas se mueven más rápido en sus órbitas cuando están más lejos del Sol.',
 'Los planetas siguen trayectorias rectilíneas a menos que sean perturbados por otras fuerzas.');

-- Pregunta 2
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(55, 'Una teoría en física teórica que propone que las partículas fundamentales son en realidad cuerdas unidimensionales en lugar de partículas puntuales. (Correcta)',
 'Una teoría que se centra en el estudio de las propiedades mecánicas de cuerdas y cables.',
 'Una teoría que busca entender la naturaleza de las ondas sonoras.',
 'Una teoría que se enfoca en la propagación de ondas en medios elásticos.');

-- Pregunta 3
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(56, 'La capacidad de un material para emitir partículas subatómicas o radiación electromagnética debido a la desintegración nuclear. (Correcta)',
 'La capacidad de un material para emitir luz.',
 'La capacidad de un material para cambiar su forma física bajo presión.',
 'La capacidad de un material para almacenar energía térmica.');

-- Insertar los consejos de ayuda para las nuevas preguntas
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (54, 'La respuesta correcta se relaciona con cómo se establece la relación entre el período de revolución de un planeta y las características de su órbita elíptica, lo que es fundamental en la ley de Kepler.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (55, 'La respuesta correcta se relaciona con la propuesta fundamental de la teoría de cuerdas, que sugiere que las partículas subatómicas no son partículas puntuales, sino cuerdas unidimensionales.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (56, 'La respuesta correcta se relaciona con la emisión de partículas subatómicas o radiación electromagnética que ocurre debido a la desintegración nuclear en ciertos materiales, lo que es característico de la radiactividad.');

----*

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 6, '¿Cómo se calcula la frecuencia de resonancia de un tubo de órgano?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 6, '¿Qué es la energía oscura?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 6, '¿Cuál es el principio de la relatividad especial?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 6, '¿Qué es un quark?');

-- Insertar respuestas para las nuevas preguntas
-- Pregunta 1
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(57, 'La frecuencia de resonancia se calcula como el cociente de la velocidad del sonido en el aire y el doble de la longitud del tubo. (Correcta)',
 'La frecuencia de resonancia se calcula como la inversa de la longitud del tubo.',
 'La frecuencia de resonancia se calcula como la inversa de la velocidad del sonido en el aire.',
 'La frecuencia de resonancia se calcula como la mitad de la longitud del tubo.');

-- Pregunta 2
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(58, 'Una misteriosa forma de energía que se cree que está acelerando la expansión del universo. (Correcta)',
 'Un tipo de energía generada por la combustión de materia orgánica.',
 'Una forma de energía utilizada en la generación de electricidad a partir de fuentes renovables.',
 'Una forma de energía utilizada para iluminar objetos en la oscuridad.');

-- Pregunta 3
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(59, 'La respuesta correcta es (b). El principio de la relatividad especial postula que la velocidad de la luz en el vacío es constante y es la misma para todos los observadores, sin importar su velocidad relativa.',
 'La respuesta correcta es (a). Todas las leyes de la física son las mismas en cualquier sistema de referencia inercial.',
 'La respuesta correcta es (c). El tiempo fluye de la misma manera para todos los observadores, independientemente de su velocidad relativa.',
 'La respuesta correcta es (d). El espacio se deforma debido a la influencia de la gravedad.');

-- Pregunta 4
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(60, 'La respuesta correcta es (d). Un quark es un tipo de partícula elemental que es un constituyente fundamental de la materia y se combina para formar hadrones como protones y neutrones.',
 'La respuesta correcta es (a). Un quark es un tipo de partícula subatómica que se encuentra en el núcleo de un átomo.',
 'La respuesta correcta es (b). Un quark es un tipo de partícula que compone los electrones.',
 'La respuesta correcta es (c). Un quark es un tipo de partícula subatómica que nunca ha sido observada experimentalmente.');

-- Insertar los consejos de ayuda para las nuevas preguntas
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (57, 'La respuesta correcta se relaciona con cómo se calcula la frecuencia de resonancia en un tubo de órgano, y se basa en la velocidad del sonido en el aire y la longitud del tubo.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (58, 'La respuesta correcta se relaciona con la idea de una forma misteriosa de energía que se cree que está causando la expansión acelerada del universo, lo que es un tema importante en la cosmología y la física teórica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (59, 'La respuesta correcta se relaciona con la invariancia de la velocidad de la luz en todos los sistemas de referencia, como postuló Albert Einstein en su teoría de la relatividad especial.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (60, 'La respuesta correcta se relaciona con la naturaleza de los quarks como partículas elementales fundamentales que son un componente esencial de los hadrones y, por lo tanto, de la materia en el nivel subatómico.');


-----**
-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 7, '¿Qué es un agujero negro?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 7, '¿Cuál es el principio de incertidumbre de Heisenberg?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 7, '¿Qué es la teoría de la relatividad general?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 7, '¿Cuál es el concepto de entropía en la termodinámica?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 7, '¿Cómo se define la carga eléctrica?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 7, '¿Qué es la teoría de cuerdas?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 7, '¿Cómo funciona un acelerador de partículas?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 7, '¿Cuál es la teoría de la gran unificación?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 7, '¿Qué es la paradoja de la información en los agujeros negros?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 7, '¿Qué es la teoría de las cuerdas vibrantes?');

-- Insertar respuestas para las nuevas preguntas
-- Pregunta 1
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(61, 'Una región del espacio donde la gravedad es tan intensa que nada, ni siquiera la luz, puede escapar de su atracción. (Correcta)',
 'Una región del espacio donde la gravedad es inexistente.',
 'Un objeto estelar extremadamente brillante que emite mucha luz.',
 'Un punto en el espacio donde la velocidad de la luz es infinita.');

-- Pregunta 2
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(62, 'La respuesta correcta es (c). No es posible conocer con precisión simultáneamente la posición y la velocidad de una partícula subatómica; cuanto más precisamente se conoce una de ellas, menos precisa será la otra. (Correcta)',
 'La respuesta correcta es (a). La posición y la velocidad de una partícula subatómica se pueden conocer con precisión infinita al mismo tiempo.',
 'La respuesta correcta es (b). La posición y la velocidad de una partícula subatómica son propiedades bien definidas que no cambian.',
 'La respuesta correcta es (d). La posición y la velocidad de una partícula subatómica son independientes y no tienen relación entre sí.');

-- Pregunta 3
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(63, 'La respuesta correcta es (c). Una teoría en física teórica que propone que las partículas fundamentales son en realidad cuerdas unidimensionales que vibran a diferentes frecuencias. (Correcta)',
 'Una teoría que se enfoca en el estudio de las propiedades mecánicas de cuerdas y cables.',
 'Una teoría que busca entender las ondas sonoras producidas por cuerdas vibrantes.',
 'Una teoría que describe las propiedades de las sogas utilizadas en la industria.');

-- Pregunta 4
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(64, 'La respuesta correcta es (c). Una teoría en física teórica que describe cómo la gravedad es una manifestación de la curvatura del espacio-tiempo debido a la presencia de masa y energía. (Correcta)',
 'Una teoría que se enfoca en describir las relaciones de parentesco entre los individuos en una sociedad.',
 'Una teoría que busca entender las interacciones entre la gravedad y la luz.',
 'Una teoría que estudia la relación entre la velocidad y la energía en partículas subatómicas.');

-- Pregunta 5
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(65, 'La respuesta correcta es (c). La medida de la cantidad de desorden o caos en un sistema termodinámico. (Correcta)',
 'La medida de la cantidad de calor en un sistema termodinámico.',
 'La medida de la cantidad de energía mecánica en un sistema.',
 'La medida de la cantidad de trabajo realizado por un sistema.');

-- Pregunta 6
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(66, 'La respuesta correcta es (c). Una propiedad fundamental de la materia que puede ser positiva o negativa y que es responsable de las interacciones eléctricas. (Correcta)',
 'La cantidad de electrones presentes en un objeto.',
 'La energía potencial eléctrica de un objeto.',
 'La velocidad de los electrones en un conductor.');

-- Pregunta 7
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(67, 'La respuesta correcta es (c). Una teoría en física teórica que propone que las partículas fundamentales son en realidad cuerdas unidimensionales en lugar de partículas puntuales. (Correcta)',
 'Una teoría que se enfoca en el estudio de las propiedades mecánicas de cuerdas y cables.',
 'Una teoría que busca entender las ondas sonoras producidas por cuerdas vibrantes.',
 'Una teoría que describe las propiedades de las sogas utilizadas en la industria.');

-- Pregunta 8
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(68, 'La respuesta correcta es (c). Aumentando la velocidad de las partículas mediante campos eléctricos y magnéticos en estructuras cilíndricas llamadas tubos de vacío. (Correcta)',
 'Aumentando la velocidad de las partículas al enfriarlas a temperaturas extremadamente bajas.',
 'Aumentando la velocidad de las partículas al someterlas a altas presiones.',
 'Aumentando la velocidad de las partículas mediante explosiones controladas.');

-- Pregunta 9
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(69, 'La respuesta correcta es (c). Una teoría en física teórica que busca unificar las fuerzas fundamentales de la naturaleza, como la fuerza electromagnética y la fuerza nuclear fuerte. (Correcta)',
 'Una teoría que busca unificar todas las teorías científicas en una sola teoría.',
 'Una teoría que se enfoca en unificar las leyes de la relatividad general y la mecánica cuántica.',
 'Una teoría que busca explicar la expansión del universo.');

-- Pregunta 10
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(70, 'La respuesta correcta es (b). La paradoja de la información en los agujeros negros se refiere a la aparente contradicción entre la teoría de la relatividad general y la mecánica cuántica en el contexto de los agujeros negros, especialmente en lo que respecta a la información que cae en un agujero negro y si se conserva o se pierde. (Correcta)',
 'Una contradicción en la forma en que se forman los agujeros negros en el espacio.',
 'Una contradicción en las observaciones de agujeros negros en diferentes partes del universo.',
 'Una contradicción en la teoría de la gravedad en relación con los agujeros negros.');

-- Insertar los consejos de ayuda para las nuevas preguntas
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (61, 'La respuesta correcta se relaciona con la descripción de un agujero negro como una región del espacio donde la gravedad es tan intensa que nada puede escapar de su atracción, incluida la luz, lo que los hace muy singulares en el universo.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (62, 'La respuesta correcta se relaciona con la imposibilidad de conocer con precisión simultáneamente tanto la posición como la velocidad de una partícula subatómica, lo que es una parte fundamental del principio de incertidumbre de Heisenberg en la mecánica cuántica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (63, 'La respuesta correcta se relaciona con la idea de que las partículas fundamentales son cuerdas unidimensionales que vibran a diferentes frecuencias, lo que es una característica esencial de la teoría de cuerdas en la física teórica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (64, 'La respuesta correcta se relaciona con la descripción de la gravedad como una manifestación de la curvatura del espacio-tiempo debido a la presencia de masa y energía, que es la idea central de la teoría de la relatividad general formulada por Albert Einstein.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (65, 'La respuesta correcta se relaciona con la idea de la entropía como una medida del desorden o caos en un sistema termodinámico, lo que es fundamental en la segunda ley de la termodinámica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (66, 'La respuesta correcta se relaciona con la definición de la carga eléctrica como una propiedad fundamental de la materia que puede ser positiva o negativa y que es responsable de las interacciones eléctricas.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (67, 'La respuesta correcta se relaciona con la idea de que las partículas fundamentales no son partículas puntuales, sino cuerdas unidimensionales, lo que es una característica esencial de la teoría de cuerdas en la física teórica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (68, 'La respuesta correcta se relaciona con el método principal de funcionamiento de los aceleradores de partículas, que involucra campos eléctricos y magnéticos en tubos de vacío para acelerar las partículas.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (69, 'La respuesta correcta se relaciona con el objetivo de unificar las fuerzas fundamentales de la naturaleza en una sola teoría, lo que es característico de la teoría de la gran unificación en la física teórica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (70, 'La respuesta correcta se relaciona con una contradicción entre dos teorías fundamentales de la física en relación con los agujeros negros, lo que es un problema no resuelto en la física teórica.');


-----------*

-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 8, '¿Cuál es la estructura del átomo?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 8, '¿Qué es la radiación electromagnética?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 8, '¿Cuál es la ecuación de Schrödinger?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 8, '¿Qué es la teoría de la supercuerda?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 8, '¿Cuál es la teoría del big bang?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 8, '¿Cuál es la teoría del todo?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 8, '¿Qué es el bosón de Higgs?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 8, '¿Cómo se relaciona la relatividad general con la teoría cuántica?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 8, '¿Qué es la teoría del multiverso?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 8, '¿Qué es la supersimetría?');

-- Insertar respuestas para las nuevas preguntas
-- Pregunta 1
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(71, 'Un núcleo compuesto por protones y neutrones, rodeado por electrones que orbitan en órbitas fijas alrededor del núcleo. (Correcta)',
 'Un núcleo compuesto solo por electrones, rodeado por protones y neutrones que orbitan alrededor del núcleo.',
 'Un núcleo formado por electrones, protones y neutrones que se encuentran en un estado caótico.',
 'Un núcleo compuesto por electrones y protones, sin la presencia de neutrones.');

-- Pregunta 2
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(72, 'Una forma de radiación que se propaga en forma de ondas electromagnéticas, como la luz visible, las microondas y los rayos X. (Correcta)',
 'Una forma de radiación nuclear producida por reacciones nucleares en el núcleo de los átomos.',
 'Una forma de radiación producida por la emisión de electrones de un material.',
 'Una forma de radiación térmica producida por la energía interna de un objeto.');

-- Pregunta 3
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(73, 'Una ecuación fundamental en la mecánica cuántica que describe la evolución temporal de una función de onda, que se utiliza para predecir el comportamiento de partículas subatómicas. (Correcta)',
 'Una ecuación que describe el comportamiento de las partículas subatómicas en campos magnéticos.',
 'Una ecuación que describe la relación entre la masa y la energía de una partícula en movimiento.',
 'Una ecuación que describe la relación entre la posición y la velocidad de una partícula en movimiento.');

-- Pregunta 4
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(74, 'Una teoría en física teórica que propone que las partículas fundamentales son en realidad cuerdas unidimensionales, pero con la adición de la supersimetría, una simetría que relaciona partículas de diferentes espines. (Correcta)',
 'Una teoría que se enfoca en el simetría de los objetos en el espacio tridimensional.',
 'Una teoría que busca entender la física de las ondas sonoras en cuerdas musicales.',
 'Una teoría que se centra en el estudio de cuerdas utilizadas en deportes y actividades recreativas.');

-- Pregunta 5
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(75, 'Una teoría en cosmología que describe el origen del universo a partir de una explosión primordial hace aproximadamente 13.8 mil millones de años. (Correcta)',
 'Una teoría que busca explicar el origen de los agujeros negros en el universo.',
 'Una teoría que se enfoca en la formación de las galaxias en el espacio.',
 'Una teoría que se centra en el estudio de la expansión del universo.');

-- Pregunta 6
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(76, 'Una teoría en física teórica que busca unificar todas las fuerzas fundamentales de la naturaleza en una única descripción matemática. (Correcta)',
 'Una teoría que busca explicar todos los aspectos de la vida en la Tierra.',
 'Una teoría que se enfoca en unificar todas las religiones y filosofías del mundo.',
 'Una teoría que se centra en la comprensión de la mente y la conciencia.');

-- Pregunta 7
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(77, 'Una partícula subatómica predicha por la teoría del Modelo Estándar en física de partículas, que confiere masa a otras partículas mediante su interacción con el campo de Higgs. (Correcta)',
 'Una partícula fundamental que se encuentra en el núcleo de los átomos y tiene una carga eléctrica positiva.',
 'Un tipo de partícula subatómica que forma parte de los electrones y protones en los átomos.',
 'Una partícula que se encuentra en los núcleos de los átomos y que emite radiación gamma.');

-- Pregunta 8
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(78, 'La relatividad general y la teoría cuántica son incompatibles y no se pueden unificar en una única teoría coherente. (Correcta)',
 'La relatividad general y la teoría cuántica son dos teorías completamente independientes y no tienen ninguna relación entre sí.',
 'La relatividad general y la teoría cuántica son dos teorías que se complementan entre sí y proporcionan una descripción completa de la física en todas las escalas, desde la cosmología hasta las partículas subatómicas.',
 'La relatividad general y la teoría cuántica son idénticas y representan dos enfoques diferentes para describir el mismo fenómeno físico.');

-- Pregunta 9
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(79, 'Una teoría que propone la existencia de múltiples universos o realidades paralelas, donde cada uno puede tener diferentes leyes físicas y condiciones iniciales. (Correcta)',
 'Una teoría que afirma que existe solo un universo en el que vivimos.',
 'Una teoría que busca explicar la expansión del universo a través de la inflación cósmica.',
 'Una teoría que se enfoca en la búsqueda de vida extraterrestre en otros planetas.');

-- Pregunta 10
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(80, 'Una teoría en física teórica que propone la existencia de partículas supersimétricas, que son partículas compañeras para las partículas conocidas en el Modelo Estándar, y que pueden ayudar a resolver problemas en la física de partículas. (Correcta)',
 'Una teoría que busca unificar la mecánica cuántica y la teoría de la relatividad.',
 'Una teoría que se enfoca en la simetría de los cristales en la materia sólida.',
 'Una teoría que se centra en la simetría de los objetos en el espacio tridimensional.');

-- Insertar consejos de ayuda para las nuevas preguntas
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (71, 'La respuesta correcta se relaciona con la estructura típica de un átomo, que consta de un núcleo compuesto por protones y neutrones, rodeado por electrones que orbitan en órbitas fijas alrededor del núcleo.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (72, 'La respuesta correcta se relaciona con la descripción de la radiación electromagnética, que se propaga en forma de ondas electromagnéticas, incluyendo la luz visible, las microondas y los rayos X.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (73, 'La respuesta correcta se relaciona con la ecuación de Schrödinger, que es una ecuación fundamental en la mecánica cuántica utilizada para predecir el comportamiento de partículas subatómicas.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (74, 'La respuesta correcta se relaciona con la teoría de la supercuerda, que propone que las partículas fundamentales son cuerdas unidimensionales, con la adición de la supersimetría, una simetría que relaciona partículas de diferentes espines.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (75, 'La respuesta correcta se relaciona con la teoría del Big Bang, que describe el origen del universo a partir de una explosión primordial hace aproximadamente 13.8 mil millones de años.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (76, 'La respuesta correcta se relaciona con la teoría del todo, que busca unificar todas las fuerzas fundamentales de la naturaleza en una única descripción matemática, un objetivo importante en la física teórica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (77, 'La respuesta correcta se relaciona con la descripción del bosón de Higgs como una partícula subatómica predicha por el Modelo Estándar que confiere masa a otras partículas.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (78, 'La respuesta correcta se relaciona con la relación entre la relatividad general y la teoría cuántica, que actualmente son teorías incompatibles y no se han unificado en una única teoría coherente.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (79, 'La respuesta correcta se relaciona con la teoría del multiverso, que propone la existencia de múltiples universos o realidades paralelas con diferentes leyes físicas y condiciones iniciales.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (80, 'La respuesta correcta se relaciona con la supersimetría, que propone la existencia de partículas supersimétricas, compañeras de las partículas conocidas en el Modelo Estándar, y que puede ayudar a resolver problemas en la física de partículas.');

----*


-- Insertar la nueva pregunta en la tabla cat_preguntas
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 9, '¿Qué es la materia oscura?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 9, '¿Cómo funciona un acelerador de partículas?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 9, '¿Qué es la teoría de las cuerdas?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 9, '¿Cuál es la hipótesis del multiverso?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 9, '¿Qué es la teoría de la gran unificación?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 9, '¿Qué es la teoría de la inflación en cosmología?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 9, '¿Qué es la teoría del multiverso cuántico?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 9, '¿Cuál es la paradoja de los gemelos en la relatividad?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 9, 'Explique el concepto de la teoría M en la física de partículas.');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 9, '¿Qué son las partículas elementales?');

-- Insertar respuestas para las nuevas preguntas
-- Pregunta 11
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(81, 'Una forma de materia que no emite, absorbe ni refleja luz, y no es directamente observable, pero se cree que constituye la mayor parte de la masa del universo y afecta la gravedad y la estructura del cosmos. (Correcta)',
 'Una forma de materia que emite luz y es visible a simple vista.',
 'Una teoría que postula la existencia de una materia oculta que se encuentra en el centro de la Tierra.',
 'Una forma de materia que se encuentra solo en la superficie de objetos astronómicos.');

-- Pregunta 12
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(82, 'Un dispositivo científico que acelera partículas subatómicas a velocidades cercanas a la velocidad de la luz y las hace colisionar, lo que permite estudiar la física de partículas y descubrir nuevas partículas y fenómenos. (Correcta)',
 'Un dispositivo que se utiliza para crear agujeros negros artificiales en el laboratorio.',
 'Un dispositivo que se utiliza para comunicarse con civilizaciones extraterrestres.',
 'Un dispositivo que permite viajar en el tiempo.');

-- Pregunta 13
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(83, 'Una teoría en física teórica que postula que las partículas subatómicas son en realidad cuerdas unidimensionales que vibran a diferentes frecuencias, y que esta vibración determina sus propiedades. (Correcta)',
 'Una teoría que se enfoca en el estudio de cuerdas utilizadas en deportes y actividades recreativas.',
 'Una teoría que busca entender la física de las ondas sonoras en cuerdas musicales.',
 'Una teoría que se centra en la fabricación de cuerdas para instrumentos musicales.');

-- Pregunta 14
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(84, 'Una idea que sugiere que hay múltiples universos paralelos, cada uno con leyes físicas diferentes y condiciones iniciales únicas. (Correcta)',
 'Una idea que postula que solo existe un universo en todo el cosmos.',
 'Una idea que propone que todos los planetas en el universo son similares a la Tierra.',
 'Una idea que busca explicar la expansión del universo a través de la inflación cósmica.');

-- Pregunta 15
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(85, 'Una teoría en física teórica que busca unificar tres de las cuatro fuerzas fundamentales de la naturaleza: la fuerza electromagnética, la fuerza nuclear fuerte y la fuerza nuclear débil, en una única descripción matemática. (Correcta)',
 'Una teoría que busca unificar todas las religiones y creencias espirituales en una sola.',
 'Una teoría que se enfoca en la unión de las diferentes corrientes filosóficas en una sola.',
 'Una teoría que se centra en la unificación de las diferentes ramas de la ciencia en una única disciplina.');

-- Pregunta 16
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(86, 'Una teoría en cosmología que postula que el universo experimentó una expansión extremadamente rápida en sus primeros momentos, lo que ayuda a resolver varios problemas en la cosmología estándar. (Correcta)',
 'Una teoría que sostiene que el universo no ha experimentado ningún cambio desde su creación.',
 'Una teoría que busca explicar la expansión del universo mediante la inflación monetaria.',
 'Una teoría que se enfoca en la inflación de los precios en la economía.');

-- Pregunta 17
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(87, 'Una teoría que propone la existencia de múltiples universos paralelos, cada uno con leyes físicas diferentes y condiciones iniciales únicas. (Correcta)',
 'Una teoría que sostiene que todas las partículas subatómicas son, en realidad, pequeños universos en miniatura.',
 'Una teoría que busca unificar las leyes de la física en una única descripción matemática.',
 'Una teoría que se enfoca en la relación entre la masa y la energía en el universo.');

-- Pregunta 18
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(88, 'Una paradoja que afirma que los gemelos idénticos que viajan a velocidades cercanas a la velocidad de la luz envejecen a diferentes velocidades, con el gemelo que viaja más rápido envejeciendo más lentamente. (Correcta)',
 'Una paradoja que sugiere que los gemelos idénticos envejecen a la misma velocidad, incluso si uno de ellos viaja a velocidades cercanas a la velocidad de la luz.',
 'Una paradoja que se refiere a la idea de que los gemelos idénticos tienen el mismo aspecto durante toda su vida.',
 'Una paradoja que sostiene que los gemelos idénticos tienen personalidades y experiencias completamente diferentes.');

-- Pregunta 19
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(89, 'Una teoría en física teórica que intenta unificar las diferentes versiones de la teoría de cuerdas en una única estructura coherente. (Correcta)',
 'Una teoría que busca unificar todas las fuerzas fundamentales de la naturaleza en una única teoría matemática.',
 'Una teoría que postula la existencia de partículas llamadas "M-púas" que son fundamentales para la física de partículas.',
 'Una teoría que se enfoca en la relación entre la masa y la energía en el universo.');

-- Pregunta 20
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(90, 'Partículas subatómicas que se consideran indivisibles y no están compuestas por otras partículas más pequeñas. (Correcta)',
 'Partículas subatómicas que tienen estructura interna y están compuestas por otras partículas más pequeñas.',
 'Partículas subatómicas que se encuentran en la superficie de objetos materiales.',
 'Partículas subatómicas que constituyen los núcleos de los átomos.');

-- Insertar consejos de ayuda para las nuevas preguntas
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (81, 'La respuesta correcta se relaciona con la idea de que la materia oscura es una forma de materia que no emite luz y no es directamente observable, pero se cree que constituye la mayor parte de la masa del universo y afecta la gravedad y la estructura del cosmos, lo que es una idea fundamental en la cosmología y la astrofísica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (82, 'La respuesta correcta se relaciona con la descripción de un acelerador de partículas como un dispositivo científico que acelera partículas subatómicas a velocidades cercanas a la velocidad de la luz y las hace colisionar, lo que permite estudiar la física de partículas y descubrir nuevas partículas y fenómenos.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (83, 'La respuesta correcta se relaciona con la teoría de las cuerdas, que postula que las partículas subatómicas son cuerdas unidimensionales que vibran a diferentes frecuencias, lo que es una idea fundamental en la física teórica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (84, 'La respuesta correcta se relaciona con la idea de que la hipótesis del multiverso sugiere la existencia de múltiples universos paralelos, cada uno con leyes físicas diferentes y condiciones iniciales únicas, lo que es una idea en la cosmología y la física teórica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (85, 'La respuesta correcta se relaciona con la teoría de la gran unificación, que busca unificar tres de las cuatro fuerzas fundamentales de la naturaleza en una única descripción matemática, lo que es un objetivo importante en la física teórica.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (86, 'La respuesta correcta se relaciona con la teoría de la inflación en cosmología, que postula que el universo experimentó una expansión extremadamente rápida en sus primeros momentos, lo que ayuda a resolver varios problemas en la cosmología estándar.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (87, 'La respuesta correcta se relaciona con la idea de que la teoría del multiverso cuántico postula que, en la física cuántica, en cada evento de medición cuántica, el universo se bifurca en múltiples realidades, creando un multiverso de posibilidades.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (88, 'La respuesta correcta se relaciona con la paradoja de los gemelos en la relatividad, que plantea que los gemelos idénticos que viajan a velocidades cercanas a la velocidad de la luz envejecen a diferentes velocidades, lo que es un concepto fundamental en la teoría de la relatividad especial de Einstein.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (89, 'La respuesta correcta se relaciona con la teoría M en la física de partículas, que intenta unificar las diferentes versiones de la teoría de cuerdas en una única estructura coherente, lo que es una idea importante en la física teórica y la búsqueda de una teoría unificada de todas las fuerzas fundamentales de la naturaleza.');
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (90, 'La respuesta correcta se relaciona con la idea de que las partículas elementales se consideran indivisibles, es decir, no están compuestas por otras partículas más pequeñas, lo que es un concepto fundamental en la física de partículas.');


----*


-- Insertar la nueva pregunta en la tabla cat_preguntas

INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, '¿Cuál es la fórmula para calcular la velocidad?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, 'Explique la teoría de la relatividad de Einstein en detalle.');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, 'Describa el experimento de la doble rendija y su implicación en la mecánica cuántica.');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, '¿Qué es la paradoja del gato de Schrödinger?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, 'Explique el concepto de la teoría M en la física de partículas.');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, '¿Cuáles son los desafíos actuales en la física teórica?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, 'Explique la teoría de cuerdas en detalle.');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, 'Describa el concepto de gravedad cuántica.');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, '¿Qué es la paradoja del horizonte en la física de agujeros negros?');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, 'Explique el principio holográfico.');
INSERT INTO cat_preguntas (id_materia, nivel, pregunta) VALUES (1, 10, '¿Cuáles son las implicaciones de la teoría de cuerdas para la física moderna?');

-- Insertar respuestas para las nuevas preguntas
-- Pregunta 21
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(91, 'La fórmula para calcular la velocidad es Velocidad (v) = Distancia (d) / Tiempo (t). (Correcta)',
 'La fórmula para calcular la velocidad es Velocidad (v) = Aceleración (a) x Tiempo (t).',
 'La fórmula para calcular la velocidad es Velocidad (v) = Masa (m) / Aceleración (a).',
 'La fórmula para calcular la velocidad es Velocidad (v) = Energía Cinética (KE) / Masa (m).');

-- Pregunta 22
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(92, 'La teoría de la relatividad de Einstein es una teoría que postula dos aspectos: la relatividad especial, que se enfoca en observadores en movimiento relativo uniforme, y la relatividad general, que considera la influencia de la gravedad en el espacio y el tiempo. (Correcta)',
 'La teoría de la relatividad de Einstein es una teoría que se centra en la relación entre la relatividad y la velocidad de la luz.',
 'La teoría de la relatividad de Einstein es una teoría que sugiere que el tiempo es absoluto y no depende de la velocidad de un observador.',
 'La teoría de la relatividad de Einstein es una teoría que busca unificar todas las fuerzas fundamentales de la naturaleza.');

-- Pregunta 23
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(93, 'El experimento de la doble rendija involucra el paso de partículas, como electrones o fotones, a través de dos rendijas y su comportamiento cuando son detectadas en una pantalla detrás de las rendijas. Este experimento muestra un patrón de interferencia cuando se utiliza una fuente de partículas, lo que sugiere la naturaleza dual de partícula-onda en la mecánica cuántica. (Correcta)',
 'El experimento de la doble rendija es un experimento que demuestra la naturaleza ondulatoria de la luz.',
 'El experimento de la doble rendija investiga la relación entre la velocidad de una partícula y su energía.',
 'El experimento de la doble rendija demuestra la relatividad especial de Einstein.');

-- Pregunta 24
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(94, 'La paradoja del gato de Schrödinger involucra la observación de un gato en un estado de superposición cuántica, en el cual está vivo y muerto al mismo tiempo, lo que plantea cuestiones fundamentales sobre la mecánica cuántica y la observación. (Correcta)',
 'La paradoja del gato de Schrödinger se refiere a la observación de agujeros negros en el horizonte del espacio exterior.',
 'La paradoja del gato de Schrödinger se centra en la teoría de la relatividad de Einstein.',
 'La paradoja del gato de Schrödinger se refiere a la paradoja de los gemelos en la relatividad.');

-- Pregunta 25
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(95, 'La teoría M en la física de partículas intenta unificar las diferentes versiones de la teoría de cuerdas en una única estructura coherente. (Correcta)',
 'La teoría M en la física de partículas busca unificar todas las fuerzas fundamentales de la naturaleza en una única teoría matemática.',
 'La teoría M en la física de partículas postula la existencia de partículas llamadas "M-púas" que son fundamentales para la física de partículas.',
 'La teoría M en la física de partículas se enfoca en la relación entre la masa y la energía en el universo.');

-- Pregunta 26
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(96, 'El desafío actual en la física teórica es desarrollar una teoría que describa la inflación cósmica y la expansión del universo, lo cual es un área activa de investigación en cosmología y física teórica. (Correcta)',
 'El desafío actual en la física teórica es la falta de teorías unificadas que expliquen todas las fuerzas fundamentales de la naturaleza.',
 'El desafío actual en la física teórica es la dificultad para entender la naturaleza de la materia oscura y la energía oscura en el universo.',
 'El desafío actual en la física teórica es la falta de avances en la comprensión de la relatividad general y la mecánica cuántica.');

-- Pregunta 27
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(97, 'La teoría de cuerdas postula la existencia de partículas subatómicas en forma de cuerdas vibrantes, en lugar de partículas puntuales, como electrones y quarks. Estas cuerdas vibran a diferentes frecuencias y modos, lo que da lugar a diferentes partículas y fuerzas en el universo. (Correcta)',
 'La teoría de cuerdas describe las propiedades de las cuerdas utilizadas en instrumentos musicales.',
 'La teoría de cuerdas busca unificar todas las fuerzas fundamentales de la naturaleza en una única teoría matemática.',
 'La teoría de cuerdas se enfoca en la teoría de la relatividad de Einstein.');

-- Pregunta 28
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(98, 'La gravedad cuántica es una teoría que unifica la gravedad de la relatividad general de Einstein con los principios de la mecánica cuántica, buscando comprender cómo funciona la gravedad a escalas subatómicas. (Correcta)',
 'La gravedad cuántica busca explicar la relación entre la gravedad y la masa de los objetos en el universo.',
 'La gravedad cuántica se enfoca en la gravedad de la Tierra y su influencia en la superficie.',
 'La gravedad cuántica busca entender la relación entre la gravedad y la velocidad de la luz.');

-- Pregunta 29
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(99, 'La paradoja del horizonte se refiere a las predicciones contradictorias entre la relatividad general y la mecánica cuántica sobre lo que sucede en el horizonte de sucesos de un agujero negro, lo que es un tema de debate importante en la física teórica. (Correcta)',
 'La paradoja del horizonte se refiere a la observación de agujeros negros en el horizonte del espacio exterior.',
 'La paradoja del horizonte plantea cuestiones sobre la relación entre la velocidad de la luz y la gravedad en las cercanías de un agujero negro.',
 'La paradoja del horizonte plantea interrogantes sobre la relación entre la temperatura y la distancia en el espacio.');

-- Pregunta 30
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(100, 'El principio holográfico postula que toda la información contenida en un volumen tridimensional puede ser representada de manera equivalente en una superficie bidimensional, lo que es un concepto clave en la física teórica y la gravedad cuántica. (Correcta)',
 'El principio holográfico es un principio de la óptica que describe cómo se crean las imágenes tridimensionales en una placa fotográfica.',
 'El principio holográfico postula la existencia de hologramas en el espacio-tiempo.',
 'El principio holográfico se relaciona con la teoría de la relatividad de Einstein.');

-- Pregunta 31
INSERT INTO cat_respuestas (id_pregunta, respuesta, incorrecta1, incorrecta2, incorrecta3) VALUES 
(101, 'Las implicaciones de la teoría de cuerdas para la física moderna incluyen la posibilidad de dimensiones extras y una comprensión más profunda de la realidad a escalas subatómicas. La teoría de cuerdas no ha resuelto todos los problemas fundamentales y sigue siendo un área de investigación activa en la física teórica. (Correcta)',
 'La teoría de cuerdas ha revolucionado la física moderna y ha resuelto todos los problemas fundamentales en la física teórica.',
 'La teoría de cuerdas ha proporcionado una explicación completa de la gravedad cuántica y ha unificado todas las fuerzas fundamentales de la naturaleza en una única teoría matemática.',
 'La teoría de cuerdas ha demostrado que la mecánica cuántica y la relatividad general son incompatibles y no pueden ser unificadas.');

-- Insertar consejos de ayuda para las nuevas preguntas
-- Consejo de ayuda para la pregunta 21
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (91, 'La respuesta correcta se relaciona con la idea de que la fórmula para calcular la velocidad se basa en la relación entre la distancia recorrida y el tiempo que toma recorrer esa distancia.');

-- Consejo de ayuda para la pregunta 22
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (92, 'La respuesta correcta se relaciona con la teoría de la relatividad de Einstein, que se divide en dos aspectos principales: la relatividad especial y la relatividad general. Se enfoca en la relación entre espacio, tiempo y gravedad.');

-- Consejo de ayuda para la pregunta 23
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (93, 'La respuesta correcta se relaciona con el experimento de la doble rendija, que implica el comportamiento de partículas a nivel cuántico y su naturaleza dual de partícula-onda. Esto tiene implicaciones fundamentales en la mecánica cuántica.');

-- Consejo de ayuda para la pregunta 24
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (94, 'La respuesta correcta se relaciona con la paradoja del gato de Schrödinger, que involucra la observación de un gato en un estado de superposición cuántica, lo que plantea cuestiones fundamentales sobre la mecánica cuántica y la observación.');

-- Consejo de ayuda para la pregunta 25
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (95, 'La respuesta correcta se relaciona con la teoría M en la física de partículas, que busca unificar las diferentes versiones de la teoría de cuerdas en una única estructura coherente.');

-- Consejo de ayuda para la pregunta 26
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (96, 'La respuesta correcta se relaciona con el desafío actual en la física teórica de desarrollar una teoría que describa la inflación cósmica y la expansión del universo, lo cual es un área activa de investigación.');

-- Consejo de ayuda para la pregunta 27
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (97, 'La respuesta correcta se relaciona con la teoría de cuerdas, que postula que las partículas subatómicas son en realidad cuerdas vibrantes, un concepto fundamental en esta teoría.');

-- Consejo de ayuda para la pregunta 28
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (98, 'La respuesta correcta se relaciona con el concepto de gravedad cuántica, que busca unificar la gravedad de la relatividad general y los principios de la mecánica cuántica.');

-- Consejo de ayuda para la pregunta 29
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (99, 'La respuesta correcta se relaciona con la paradoja del horizonte en la física de agujeros negros, que plantea cuestiones sobre las predicciones contradictorias entre la relatividad general y la mecánica cuántica en el horizonte de sucesos.');

-- Consejo de ayuda para la pregunta 30
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (100, 'La respuesta correcta se relaciona con el principio holográfico, que postula que toda la información en un volumen tridimensional puede representarse de manera equivalente en una superficie bidimensional.');

-- Consejo de ayuda para la pregunta 31
INSERT INTO cat_ayuda (pregunta_id, ayuda) VALUES (101, 'La respuesta correcta se relaciona con las implicaciones de la teoría de cuerdas en la física moderna, que incluyen desafíos y preguntas abiertas, como la posibilidad de dimensiones extras y una comprensión más profunda de la realidad a escalas subatómicas.');
