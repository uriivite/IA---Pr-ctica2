; Tue Dec 04 13:42:13 CET 2018
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot contraindicada
		(type INSTANCE)
;+		(allowed-classes Malaltia)
		(create-accessor read-write))
	(multislot escalfament
		(type INSTANCE)
;+		(allowed-classes Flexibilitat)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot exercicis
;+		(comment "Llista d'exercicis")
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Nom
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot repeticions
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Cronica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Duracio
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es+escalfament
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot part+del+cos
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nomEx
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Instruccions
;+		(comment "Alguna instrucció de com s'ha de realitzar l'exercici.")
		(type STRING)
		(create-accessor read-write))
	(multislot indicada
		(type INSTANCE)
;+		(allowed-classes Malaltia)
		(create-accessor read-write)))

(defclass Exercici "Identifica un exercici concret amb alguna instrucció/especificació."
	(is-a USER)
	(role concrete)
	(single-slot repeticions
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Duracio
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es+escalfament
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Instruccions
;+		(comment "Alguna instrucció de com s'ha de realitzar l'exercici.")
		(type STRING)
		(create-accessor read-write))
	(single-slot part+del+cos
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nomEx
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Musculatura
	(is-a Exercici)
	(role concrete))

(defclass Aixecar+bracos
	(is-a Musculatura)
	(role concrete))

(defclass Flexio+espatlles
	(is-a Musculatura)
	(role concrete))

(defclass Exercicis+biceps
	(is-a Musculatura)
	(role concrete))

(defclass Extensio+triceps
	(is-a Musculatura)
	(role concrete))

(defclass Aixecar-se+de+cadira
	(is-a Musculatura)
	(role concrete))

(defclass Resistencia
	(is-a Exercici)
	(role concrete))

(defclass Caminar
	(is-a Resistencia)
	(role concrete))

(defclass Dansa
	(is-a Resistencia)
	(role concrete))

(defclass Pujar+escales
	(is-a Resistencia)
	(role concrete))

(defclass Pedalejar
	(is-a Resistencia)
	(role concrete))

(defclass Padel
	(is-a Resistencia)
	(role concrete))

(defclass Flexibilitat
	(is-a Exercici)
	(role concrete))

(defclass Estirament+dels+tendons+cuixa
	(is-a Flexibilitat)
	(role concrete))

(defclass Estirament+del+panxell "(Pantorilla)"
	(is-a Flexibilitat)
	(role concrete))

(defclass Estirament+dels+turmells
	(is-a Flexibilitat)
	(role concrete))

(defclass Estirament+dels+triceps
	(is-a Flexibilitat)
	(role concrete))

(defclass Estiraments+del+canell
	(is-a Flexibilitat)
	(role concrete))

(defclass Rotacio+espatlles
	(is-a Flexibilitat)
	(role concrete))

(defclass Estirament+quadriceps
	(is-a Flexibilitat)
	(role concrete))

(defclass Rotaci%C3%B3+del+maluc
	(is-a Flexibilitat)
	(role concrete))

(defclass Equilibri
	(is-a Exercici)
	(role concrete))

(defclass Flexio+plantar
	(is-a Equilibri)
	(role concrete))

(defclass Flexio+del+genoll
	(is-a Equilibri)
	(role concrete))

(defclass Flexio+i+extensio+maluc
	(is-a Equilibri)
	(role concrete))

(defclass Aixecament+lateral+de+la+cama
	(is-a Equilibri)
	(role concrete))

(defclass Rutina "Classe genèrica que contindrà una sèrie d'exercicis que s'utilitzaran per fer una recomanació."
	(is-a USER)
	(role concrete)
	(multislot contraindicada
		(type INSTANCE)
;+		(allowed-classes Malaltia)
		(create-accessor read-write))
	(multislot escalfament
		(type INSTANCE)
;+		(allowed-classes Flexibilitat)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot exercicis
;+		(comment "Llista d'exercicis")
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot indicada
		(type INSTANCE)
;+		(allowed-classes Malaltia)
		(create-accessor read-write)))

(defclass Malaltia
	(is-a USER)
	(role concrete)
	(multislot Cronica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Nom
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))
		
(definstances holacocacola

([ontologia_v1_Class0] of  Dansa

	(Duracio 20)
	(nomEx "Dansa low"))

([ontologia_v1_Class1] of  Malaltia

	(Cronica TRUE)
	(Nom "Problemes respiratoris"))

([ontologia_v1_Class10000] of  Rutina

	(contraindicada
		[ontologia_v1_Class8]
		[ontologia_v1_Class3])
	(escalfament
		[ontologia_v1_Class20021]
		[ontologia_v1_Class10008]
		[ontologia_v1_Class10015])
	(exercicis
		[ontologia_v1_Class20002]
		[ontologia_v1_Class10047])
	(indicada [ontologia_v1_Class7]))

([ontologia_v1_Class10001] of  Caminar

	(Duracio 30)
	(es+escalfament TRUE)
	(nomEx "caminar low"))

([ontologia_v1_Class10002] of  Caminar

	(Duracio 45)
	(es+escalfament TRUE)
	(Instruccions "Afegeix alguna pujada a la teva ruta habitual")
	(nomEx "caminar high"))

([ontologia_v1_Class10005] of  Malaltia

	(Cronica FALSE)
	(Nom "Obesitat"))

([ontologia_v1_Class10007] of  Malaltia

	(Cronica FALSE)
	(Nom "Problemes cardiovasculars"))

([ontologia_v1_Class10008] of  Estirament+dels+tendons+cuixa

	(Duracio 10)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Sientese sobre una superficie sin respaldo.\""
		"2 - \"Estire una pierna sobre la superficie con lo dedos mirando hacia arriba.\""
		"3 - \"Comience a inclinarse hacia adelante flexionando las caderas, hasta que sienta un tiron por el estiramiento en la pierna.\""
		"4 - \"Aguante en esta posicion.\""
		"5 - \"Realice este ejercicio con la otra pierna.\"")
	(nomEx "Estirament tendons maluc low")
	(part+del+cos "Maluc")
	(repeticions 3))

([ontologia_v1_Class10009] of  Estirament+dels+tendons+cuixa

	(Duracio 30)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Sientese sobre una superficie sin respaldo.\""
		"2 - \"Estire una pierna sobre la superficie con lo dedos mirando hacia arriba.\""
		"3 - \"Comience a inclinarse hacia adelante flexionando las caderas, hasta que sienta un tiron por el estiramiento en la pierna.\""
		"4 - \"Aguante en esta posicion.\""
		"5 - \"Realice este ejercicio con la otra pierna.\"")
	(nomEx "Estirament tendons maluc high")
	(part+del+cos "Maluc")
	(repeticions 5))

([ontologia_v1_Class10010] of  Estirament+del+panxell

	(Duracio 10)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Coloquese de pie, con los brazos extendidos y con las palmas de las manos apoyadas en la pared.\""
		"2 - \"Ponga una pierna flexionada la otra unos pasos por detras,recta, con el pie extendido apoyado en el suelo.\""
		"3 - \"Permanezca en esta posicion tras notar un tiron durante 10-30 segundos.\""
		"4 - \"Doble la rodilla de la pierna que esta detras, manteniendo el pie sobre el suelo.\""
		"5 - \"Permanezca en esta posicion otros 10-30 segundos.\""
		"6 - \"Realice este ejercicio cambiando las posiciones de cada pierna.\"")
	(nomEx "Estirament panxell low")
	(part+del+cos "Panxell")
	(repeticions 3))

([ontologia_v1_Class10011] of  Estirament+del+panxell

	(Duracio 30)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Coloquese de pie, con los brazos extendidos y con las palmas de las manos apoyadas en la pared.\""
		"2 - \"Ponga una pierna flexionada la otra unos pasos por detras,recta, con el pie extendido apoyado en el suelo.\""
		"3 - \"Permanezca en esta posicion tras notar un tiron durante 10-30 segundos.\""
		"4 - \"Doble la rodilla de la pierna que esta detras, manteniendo el pie sobre el suelo.\""
		"5 - \"Permanezca en esta posicion otros 10-30 segundos.\""
		"6 - \"Realice este ejercicio cambiando las posiciones de cada pierna.\"")
	(nomEx "Estirament panxell high")
	(part+del+cos "Panxell")
	(repeticions 5))

([ontologia_v1_Class10012] of  Estirament+dels+turmells

	(Duracio 3)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Sientese en una silla y reclinese hacia atras.\""
		"2 - \"Extienda las piernas hacia el frente lo maximo que pueda.\""
		"3 - \"Doble los dedos de los pies mirando hacia usted.\""
		"4 - \"Doble los tobillos de forma que los pies se alejen de usted.\"")
	(nomEx "Estirament turmells low")
	(part+del+cos "Turmells")
	(repeticions 3))

([ontologia_v1_Class10013] of  Estirament+dels+turmells

	(Duracio 3)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Sientese en una silla y reclinese hacia atras.\""
		"2 - \"Extienda las piernas hacia el frente lo maximo que pueda.\""
		"3 - \"Doble los dedos de los pies mirando hacia usted.\" "
		"4 - \"Doble los tobillos de forma que los pies se alejen de usted.\"")
	(nomEx "Estirament turmells high")
	(part+del+cos "Turmells")
	(repeticions 5))

([ontologia_v1_Class10015] of  Estirament+dels+triceps

	(Duracio 3)
	(Instruccions
		"1 - \"Sostenga una toalla con una mano, levante ese brazo y doble el codo, de forma que la toalla se deslice hacia atras.\""
		"2 - \"Agarre el otro extremo de la toalla con su otra mano.\""
		"3 - \"Vaya ascendiendo progresivamente esta mano en la toalla, lo que tambien hara que el otro brazo tienda hacia abajo.\""
		"4 - \"Continuen con estos movimientos hasta que las manos lleguen a estar proximas.\""
		"5 - \"Intercambie las posiciones de los brazos y repita el ejercicio.\"")
	(nomEx "Estirament triceps")
	(part+del+cos "Triceps")
	(repeticions 5))

([ontologia_v1_Class10016] of  Estiraments+del+canell

	(Duracio 3)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Coloque las manos juntas como si estuviera rezando.\""
		"2 - \"Vaya elevando lentamente los codos hacia ambos lados, hasta que los brazos queden paralelos al suelo, presionando las manos una con la otra.\"")
	(nomEx "Estirament canell low")
	(part+del+cos "Canell")
	(repeticions 3))

([ontologia_v1_Class10028] of  Flexio+plantar

	(Duracio 3)
	(es+escalfament FALSE)
	(Instruccions
		"1 - \"Pongase de pie, detrás de una mesa o respaldo de una silla, con los pies ligeramente separados.\""
		"2 - \"Apoyese en la silla para mantener el equilibrio y posteriormente sueltese y permanezca sin agarrarse.\""
		"3 - \"Levante lentamente la pierna lo mas alto posible de puntillas hasta llegar a 12 o 20 cm del suelo.\""
		"4 - \"Permanezca en esta posición durante unos tres segundos.\""
		"5 - \"Vaya descendiendo lentamente la pierna, hasta llegar sus talones a apoyar nuevamente en el suelo.\""
		"6 - \"Haga el ejercicio apoyandose primero en una pierna, y luego con la otra de forma rotatoria.\""
		"7 - \"La espalda y ambas rodillas deben mantenerse rectas durante todo el ejercicio.\"")
	(nomEx "Flexio plantar low")
	(part+del+cos "Peu")
	(repeticions 8))

([ontologia_v1_Class10030] of  Flexio+del+genoll

	(Duracio 2)
	(Instruccions
		"1 - \"Pongase de pie, ante una mesa o respaldo de una silla. Inicialmente agarrese para mantener el equilibrio, después ira soltandose e incluso podra hacerlo con los ojos cerrados.\" "
		"2 - \"Doble lentamente la rodilla hacia atras y elevela lo mas alto posible hasta aproximarla al muslo.\" "
		"3 - \"Aguante en esta posicion.\" "
		"4 - \"Comience a bajar lentamente la pierna hasta su posicion inicial.\" "
		"5 - \"Repita lo mismo con la otra pierna.\" "
		"6 - \"A medida que progrese puede ir anadiendo modificaciones (pesas de tobillo, etc.).\" ")
	(nomEx "Flexio del genoll low")
	(part+del+cos "Genoll")
	(repeticions 8))

([ontologia_v1_Class10031] of  Flexio+i+extensio+maluc

	(Duracio 2)
	(Instruccions
		"1 - \"Pongase de pie, recto, sujetese inicialmente al respaldo de una silla o mesa.\" "
		"2 - \"Eleve lentamente la rodilla hacia el pecho, sin doblar la otra.\""
		"3 - \"Permanezca en esta posicion, recto.\""
		"4 - \"Baje lentamente la rodilla hasta llegar el pie en el suelo.\""
		"5 - \"Vaya doblando su cintura, e inclinese hacia la silla.\""
		"6 - \"Eleve la pierna hacia atras, estirada, lentamente.\""
		"7 - \"Vuelva lentamente hacia su posicion inicial.\"")
	(nomEx "Flexio i extensio maluc low")
	(part+del+cos "Maluc")
	(repeticions 8))

([ontologia_v1_Class10032] of  Flexio+plantar

	(Duracio 3)
	(Instruccions
		"1 - \"Pongase de pie, detrás de una mesa o respaldo de una silla, con los pies ligeramente separados.\""
		"2 - \"Apoyese en la silla para mantener el equilibrio y posteriormente sueltese y permanezca sin agarrarse.\""
		"3 - \"Levante lentamente la pierna lo mas alto posible de puntillas hasta llegar a 12 o 20 cm del suelo.\""
		"4 - \"Permanezca en esta posición durante unos tres segundos.\""
		"5 - \"Vaya descendiendo lentamente la pierna, hasta llegar sus talones a apoyar nuevamente en el suelo.\""
		"6 - \"Haga el ejercicio apoyandose primero en una pierna, y luego con la otra de forma rotatoria.\""
		"7 - \"La espalda y ambas rodillas deben mantenerse rectas durante todo el ejercicio.\"")
	(nomEx "Flexio plantar high")
	(part+del+cos "Peu")
	(repeticions 15))

([ontologia_v1_Class10033] of  Flexio+del+genoll

	(Duracio 2)
	(Instruccions
		"1 - \"Pongase de pie, ante una mesa o respaldo de una silla. Inicialmente agarrese para mantener el equilibrio, después ira soltandose e incluso podra hacerlo con los ojos cerrados.\" "
		"2 - \"Doble lentamente la rodilla hacia atras y elevela lo mas alto posible hasta aproximarla al muslo.\" "
		"3 - \"Aguante en esta posicion.\" "
		"4 - \"Comience a bajar lentamente la pierna hasta su posicion inicial.\" "
		"5 - \"Repita lo mismo con la otra pierna.\""
		"6 - \"A medida que progrese puede ir anadiendo modificaciones (pesas de tobillo, etc.).\" ")
	(nomEx "Flexio del genoll high")
	(part+del+cos "Genoll")
	(repeticions 15))

([ontologia_v1_Class10037] of  Flexio+i+extensio+maluc

	(Duracio 2)
	(Instruccions
		"1 - \"Pongase de pie, recto, sujetese inicialmente al respaldo de una silla o mesa.\" "
		"2 - \"Eleve lentamente la rodilla hacia el pecho, sin doblar la otra.\" "
		"3 - \"Permanezca en esta posicion, recto.\" "
		"4 - \"Baje lentamente la rodilla hasta llegar el pie en el suelo.\" "
		"5 - \"Vaya doblando su cintura, e inclinese hacia la silla.\" "
		"6 - \"Eleve la pierna hacia atras, estirada, lentamente.\""
		"7 - \"Vuelva lentamente hacia su posicion inicial.\"")
	(nomEx "Flexio i extensio maluc high")
	(part+del+cos "Maluc")
	(repeticions 15))

([ontologia_v1_Class10038] of  Aixecament+lateral+de+la+cama

	(Duracio 3)
	(Instruccions
		"1 - \"Pongase de pie, detras de una mesa o respaldo de una silla, con los pies ligeramente separados.\""
		"2 - \"Levante lentamente la pierna hacia el lateral hasta donde pueda.\""
		"3 - \"Aguante en esta postura.\""
		"4 - \"Baje lentamente la pierna hasta su posicion inicial.\""
		"5 - \"Repitelo con la otra pierna.\"")
	(nomEx "Aixecament lateral de la cama low")
	(part+del+cos "Cama")
	(repeticions 8))

([ontologia_v1_Class10039] of  Aixecament+lateral+de+la+cama

	(Duracio 3)
	(Instruccions
		"1 - \"Pongase de pie, detras de una mesa o respaldo de una silla, con los pies ligeramente separados.\""
		"2 - \"Levante lentamente la pierna hacia el lateral hasta donde pueda.\""
		"3 - \"Aguante en esta postura.\""
		"4 - \"Baje lentamente la pierna hasta su posicion inicial.\""
		"5 - \"Repitelo con la otra pierna.\"")
	(nomEx "Aixecament lateral de la cama high")
	(part+del+cos "Cama")
	(repeticions 15))

([ontologia_v1_Class10046] of  Aixecar+bracos

	(Duracio 2)
	(Instruccions
		"1 - \"Sientese en una silla con la esplda derecha y apoyada y sostenga las pesas con las palmas de la mano y mirando hacia el suelo.\""
		"2 - \"Mantenga los brazos drechos en ambos lados.\""
		"3 - \"Levante poco a poco los brazos hasta llegar a la altura de los hombros.\""
		"4 - \"Mantenga esta posicion.\""
		"5 - \"Baje lentamente los brazos.\"")
	(nomEx "Aixecar bracos high")
	(part+del+cos "Bracos")
	(repeticions 8))

([ontologia_v1_Class10047] of  Aixecar+bracos

	(Duracio 2)
	(Instruccions
		"1 - \"Sientese en una silla con la esplda derecha y apoyada y sostenga las pesas con las palmas de la mano y mirando hacia el suelo.\""
		"2 - \"Mantenga los brazos drechos en ambos lados.\""
		"3 - \"Levante poco a poco los brazos hasta llegar a la altura de los hombros.\""
		"4 - \"Mantenga esta posicion.\""
		"5 - \"Baje lentamente los brazos.\"")
	(nomEx "Aixecar bracos low")
	(part+del+cos "Bracos")
	(repeticions 15))

([ontologia_v1_Class10048] of  Flexio+espatlles

	(Duracio 2)
	(Instruccions
		"1 - \"Sientese en una silla con la esplda derecha y apoyada y sostenga las pesas con las palmas de la mano y mirando hacia el suelo.\""
		"2 - \"Suba los brazos al frente, gire las palmas de las manos hacia arriba, y termine de subir los brazos hasta la altura de los hombros.\""
		"3 - \"Mantenga esa posicion durante un breve momento y baje lentamente.\"")
	(nomEx "Flexio espatlles low")
	(part+del+cos "Espatlles")
	(repeticions 8))

([ontologia_v1_Class10049] of  Flexio+espatlles

	(Duracio 2)
	(Instruccions
		"1 - \"Sientese en una silla con la esplda derecha y apoyada y sostenga las pesas con las palmas de la mano y mirando hacia el suelo.\""
		"2 - \"Suba los brazos al frente, gire las palmas de las manos hacia arriba, y termine de subir los brazos hasta la altura de los hombros.\""
		"3 - \"Mantenga esa posicion durante un breve momento y baje lentamente.\"")
	(nomEx "Flexio espatlles high")
	(part+del+cos "Espatlles")
	(repeticions 15))

([ontologia_v1_Class10050] of  Exercicis+biceps

	(Duracio 2)
	(Instruccions
		"1 - \"Sientese en una silla con la esplda derecha y apoyada y sostenga las pesas con las palmas de la mano y mirando hacia adentro.\""
		"2 - \"Suba lentamente un brazo doblando el codo y con la palma que sostiene la pesa mirando hacia arriba.\""
		"3 - \"Baje lentamente.\""
		"4 - \"Alterne los dos brazos.\"")
	(nomEx "Exercicis biceps low")
	(part+del+cos "Biceps")
	(repeticions 8))

([ontologia_v1_Class10051] of  Exercicis+biceps

	(Duracio 2)
	(Instruccions
		"1 - \"Sientese en una silla con la esplda derecha y apoyada y sostenga las pesas con las palmas de la mano y mirando hacia adentro.\""
		"2 - \"Suba lentamente un brazo doblando el codo y con la palma que sostiene la pesa mirando hacia arriba.\""
		"3 - \"Baje lentamente.\""
		"4 - \"Alterne los dos brazos.\"")
	(nomEx "Exercici biceps high")
	(part+del+cos "Biceps")
	(repeticions 15))

([ontologia_v1_Class10052] of  Extensio+triceps

	(Duracio 2)
	(Instruccions
		"1 - \"Sientese en una silla con la esplda derecha y apoyada y sostenga una pesa en una mano y con la palma hacia adentro, levante ese brazo hacia el techo.\""
		"2 - \"Ayudese soportando ese brazo con la otra mano.\""
		"3 - \"Doble el brazo levantado hasta la altura del codo, llevando el peso de la mano hacia el mismo hombro.\""
		"4 - \"Enderece lentamente el brazo hacia el techo.\""
		"5 - \"Mantenga la posicion.\""
		"6 - \"Doble lentamente el brazo hacia el hombro otra vez.\"")
	(nomEx "Extensio triceps low")
	(part+del+cos "Triceps")
	(repeticions 8))

([ontologia_v1_Class10053] of  Extensio+triceps

	(Duracio 2)
	(Instruccions
		"1 - \"Sientese en una silla con la esplda derecha y apoyada y sostenga una pesa en una mano y con la palma hacia adentro, levante ese brazo hacia el techo.\""
		"2 - \"Ayudese soportando ese brazo con la otra mano.\""
		"3 - \"Doble el brazo levantado hasta la altura del codo, llevando el peso de la mano hacia el mismo hombro.\""
		"4 - \"Enderece lentamente el brazo hacia el techo.\""
		"5 - \"Mantenga la posicion.\""
		"6 - \"Doble lentamente el brazo hacia el hombro otra vez.\"")
	(nomEx "Extensio triceps high")
	(part+del+cos "Triceps")
	(repeticions 15))

([ontologia_v1_Class10054] of  Aixecar-se+de+cadira

	(Duracio 3)
	(nomEx "Aixecar-se de cadira low")
	(part+del+cos "Abdomen")
	(repeticions 8))

([ontologia_v1_Class10055] of  Aixecar-se+de+cadira

	(Duracio 3)
	(nomEx "Aixecar-se de cadira high")
	(part+del+cos "Abdomen")
	(repeticions 15))

([ontologia_v1_Class17] of  Malaltia

	(Cronica TRUE)
	(Nom "Problemes cardiovasculars cronics"))

([ontologia_v1_Class18] of  Malaltia

	(Cronica TRUE)
	(Nom "Diabetis"))

([ontologia_v1_Class2] of  Malaltia

	(Cronica TRUE)
	(Nom "Obesitat cronica"))

([ontologia_v1_Class20000] of  Rutina

	(contraindicada [ontologia_v1_Class5])
	(escalfament
		[ontologia_v1_Class20019]
		[ontologia_v1_Class20023])
	(exercicis
		[ontologia_v1_Class10031]
		[ontologia_v1_Class10030]
		[ontologia_v1_Class10048])
	(indicada
		[ontologia_v1_Class8]
		[ontologia_v1_Class3]))

([ontologia_v1_Class20001] of  Dansa

	(Duracio 30)
	(nomEx "Dansa high"))

([ontologia_v1_Class20002] of  Pedalejar

	(Duracio 20)
	(nomEx "Pedalejar low"))

([ontologia_v1_Class20003] of  Pedalejar

	(Duracio 30)
	(nomEx "Pedalejar high"))

([ontologia_v1_Class20004] of  Pujar+escales

	(Duracio 20)
	(nomEx "Pujar Escales low"))

([ontologia_v1_Class20005] of  Pujar+escales

	(Duracio 30)
	(nomEx "Pujar Escales high"))

([ontologia_v1_Class20008] of  Malaltia

	(Cronica TRUE)
	(Nom "Colesterol cronic"))

([ontologia_v1_Class20017] of  Estiraments+del+canell

	(Duracio 3)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Coloque las manos juntas como si estuviera rezando.\""
		"2 - \"Vaya elevando lentamente los codos hacia ambos lados, hasta que los brazos queden paralelos al suelo, presionando las manos una con la otra.\"")
	(nomEx "Estirament canell high")
	(part+del+cos "Canell")
	(repeticions 5))

([ontologia_v1_Class20018] of  Rotacio+espatlles

	(Duracio 3)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Tumbese en el suelo y mantenga los hombros pegados al suelo.\""
		"2 - \"Estire los brazos a los lados, sobre el suelo.\""
		"3 - \"Doble los codos y que las manos miren hacia el techo formando un angulo recto hacia arriba.\""
		"4 - \"Gire los brazos lentamente hacia atras desde el codo.\""
		"5 - \"Pare cuando sienta un tiron y permanezca en esta posicion.\"")
	(nomEx "Rotacio espatlles high")
	(part+del+cos "Espatlles")
	(repeticions 5))

([ontologia_v1_Class20019] of  Rotacio+espatlles

	(Duracio 3)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Tumbese en el suelo y mantenga los hombros pegados al suelo.\""
		"2 - \"Estire los brazos a los lados, sobre el suelo.\""
		"3 - \"Doble los codos y que las manos miren hacia el techo formando un angulo recto hacia arriba.\""
		"4 - \"Gire los brazos lentamente hacia atras desde el codo.\""
		"5 - \"Pare cuando sienta un tiron y permanezca en esta posicion.\"")
	(nomEx "Rotacio espatlles low")
	(part+del+cos "Espatlles")
	(repeticions 3))

([ontologia_v1_Class20020] of  Estirament+quadriceps

	(Duracio 30)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Tumbese hacia un lado.\""
		"2 - \"Doble la rodilla del lado contrario al que se ha tumbado.\""
		"3 - \"Cojase el tobillo de esa pierna con la mano del mismo lado.\""
		"4 - \"Vaya tirando suavemente de esa pierna hacia atras hasta que note un tiron en el muslo y permanezca en esta postura 10-30 segundos.\""
		"5 - \"Cambie de posicion y repitelo con la otra pierna.\"")
	(nomEx "Estirament quadriceps high")
	(part+del+cos "Quadriceps")
	(repeticions 5))

([ontologia_v1_Class20021] of  Estirament+quadriceps

	(Duracio 10)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Tumbese hacia un lado.\""
		"2 - \"Doble la rodilla del lado contrario al que se ha tumbado.\""
		"3 - \"Cojase el tobillo de esa pierna con la mano del mismo lado.\""
		"4 - \"Vaya tirando suavemente de esa pierna hacia atras hasta que note un tiron en el muslo y permanezca en esta postura 10-30 segundos.\""
		"5 - \"Cambie de posicion y repitelo con la otra pierna.\"")
	(nomEx "Estirament quadriceps low")
	(part+del+cos "Quadriceps")
	(repeticions 3))

([ontologia_v1_Class20022] of  Rotaci%C3%B3+del+maluc

	(Duracio 30)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Tumbese de espaldas en el suelo, con las rodillas flexionadas y los pies extendidos.\""
		"2 - \"Baje las rodillas lentamente, sin forzarlas, a un lado tanto como pueda.\""
		"3 - \"Permanezca en esta postura.\""
		"4 - \"Regrese a su posicion inicial.\""
		"5 - \"Haga el mismo ejercicio hacia el otro lado.\"")
	(nomEx "Rotacio maluc high")
	(part+del+cos "Maluc")
	(repeticions 5))

([ontologia_v1_Class20023] of  Rotaci%C3%B3+del+maluc

	(Duracio 10)
	(es+escalfament TRUE)
	(Instruccions
		"1 - \"Tumbese de espaldas en el suelo, con las rodillas flexionadas y los pies extendidos.\""
		"2 - \"Baje las rodillas lentamente, sin forzarlas, a un lado tanto como pueda.\""
		"3 - \"Permanezca en esta postura.\""
		"4 - \"Regrese a su posicion inicial.\""
		"5 - \"Haga el mismo ejercicio hacia el otro lado.\"")
	(nomEx "Rotacio maluc low")
	(part+del+cos "Maluc")
	(repeticions 3))

([ontologia_v1_Class3] of  Malaltia

	(Cronica FALSE)
	(Nom "Osteoporosis"))

([ontologia_v1_Class30001] of  Rutina

	(contraindicada [ontologia_v1_Class5])
	(escalfament
		[ontologia_v1_Class20019]
		[ontologia_v1_Class20023])
	(exercicis
		[ontologia_v1_Class10048]
		[ontologia_v1_Class10033]
		[ontologia_v1_Class10037])
	(indicada
		[ontologia_v1_Class8]
		[ontologia_v1_Class3]))

([ontologia_v1_Class30003] of  Rutina

	(contraindicada [ontologia_v1_Class5])
	(escalfament
		[ontologia_v1_Class20023]
		[ontologia_v1_Class20018])
	(exercicis
		[ontologia_v1_Class10037]
		[ontologia_v1_Class10039]
		[ontologia_v1_Class10030])
	(indicada
		[ontologia_v1_Class8]
		[ontologia_v1_Class3]))


([ontologia_v1_Class30007] of  Rutina

	(contraindicada [ontologia_v1_Class5])
	(escalfament
		[ontologia_v1_Class20018]
		[ontologia_v1_Class20021]
		[ontologia_v1_Class20022])
	(exercicis
		[ontologia_v1_Class10037]
		[ontologia_v1_Class10039]
		[ontologia_v1_Class10032])
	(indicada
		[ontologia_v1_Class8]
		[ontologia_v1_Class3]))


([ontologia_v1_Class30012] of  Rutina

	(contraindicada
		[ontologia_v1_Class3]
		[ontologia_v1_Class8]
		[ontologia_v1_Class5])
	(escalfament
		[ontologia_v1_Class20019]
		[ontologia_v1_Class10015])
	(exercicis
		[ontologia_v1_Class10047]
		[ontologia_v1_Class10050]
		[ontologia_v1_Class10052]
		[ontologia_v1_Class10048]
		[ontologia_v1_Class20002])
	(indicada
		[ontologia_v1_Class4]
		[ontologia_v1_Class20008]
		[ontologia_v1_Class10005]
		[ontologia_v1_Class2]
		[ontologia_v1_Class10007]
		[ontologia_v1_Class17]
		[ontologia_v1_Class6]
		[ontologia_v1_Class9]
		[ontologia_v1_Class7]))


([ontologia_v1_Class30014] of  Rutina

	(contraindicada
		[ontologia_v1_Class3]
		[ontologia_v1_Class8]
		[ontologia_v1_Class5])
	(escalfament
		[ontologia_v1_Class20019]
		[ontologia_v1_Class10015]
		[ontologia_v1_Class10010])
	(exercicis
		[ontologia_v1_Class10047]
		[ontologia_v1_Class10050]
		[ontologia_v1_Class10048]
		[ontologia_v1_Class10053]
		[ontologia_v1_Class20003])
	(indicada
		[ontologia_v1_Class4]
		[ontologia_v1_Class20008]
		[ontologia_v1_Class10005]
		[ontologia_v1_Class2]
		[ontologia_v1_Class10007]
		[ontologia_v1_Class17]
		[ontologia_v1_Class6]
		[ontologia_v1_Class9]
		[ontologia_v1_Class7]))

([ontologia_v1_Class30033] of  Rutina

	(contraindicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class8]
		[ontologia_v1_Class3])
	(escalfament
		[ontologia_v1_Class20020]
		[ontologia_v1_Class10013])
	(exercicis
		[ontologia_v1_Class10002]
		[ontologia_v1_Class20003])
	(indicada
		[ontologia_v1_Class10005]
		[ontologia_v1_Class2]
		[ontologia_v1_Class18]
		[ontologia_v1_Class10007]
		[ontologia_v1_Class17]
		[ontologia_v1_Class6]
		[ontologia_v1_Class9]
		[ontologia_v1_Class7]))

([ontologia_v1_Class30036] of  Rutina

	(contraindicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class8]
		[ontologia_v1_Class3])
	(escalfament
		[ontologia_v1_Class10012]
		[ontologia_v1_Class20021])
	(exercicis
		[ontologia_v1_Class10001]
		[ontologia_v1_Class20002])
	(indicada
		[ontologia_v1_Class10005]
		[ontologia_v1_Class2]
		[ontologia_v1_Class18]
		[ontologia_v1_Class10007]
		[ontologia_v1_Class17]
		[ontologia_v1_Class6]
		[ontologia_v1_Class9]
		[ontologia_v1_Class7]))

([ontologia_v1_Class30037] of  Rutina

	(contraindicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class8]
		[ontologia_v1_Class3])
	(escalfament
		[ontologia_v1_Class10012]
		[ontologia_v1_Class20021])
	(exercicis
		[ontologia_v1_Class20002]
		[ontologia_v1_Class10002])
	(indicada
		[ontologia_v1_Class10005]
		[ontologia_v1_Class2]
		[ontologia_v1_Class18]
		[ontologia_v1_Class10007]
		[ontologia_v1_Class17]
		[ontologia_v1_Class7]
		[ontologia_v1_Class6]
		[ontologia_v1_Class9]))

([ontologia_v1_Class30039] of  Rutina

	(contraindicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class8]
		[ontologia_v1_Class3])
	(escalfament
		[ontologia_v1_Class20020]
		[ontologia_v1_Class10013])
	(exercicis
		[ontologia_v1_Class10002]
		[ontologia_v1_Class20002])
	(indicada
		[ontologia_v1_Class10005]
		[ontologia_v1_Class2]
		[ontologia_v1_Class18]
		[ontologia_v1_Class10007]
		[ontologia_v1_Class17]
		[ontologia_v1_Class7]
		[ontologia_v1_Class6]
		[ontologia_v1_Class9]))

([ontologia_v1_Class30041] of  Rutina

	(contraindicada
		[ontologia_v1_Class3]
		[ontologia_v1_Class8]
		[ontologia_v1_Class5])
	(escalfament
		[ontologia_v1_Class10015]
		[ontologia_v1_Class10010]
		[ontologia_v1_Class20018])
	(exercicis
		[ontologia_v1_Class10050]
		[ontologia_v1_Class10053]
		[ontologia_v1_Class10001]
		[ontologia_v1_Class20002]
		[ontologia_v1_Class10054])
	(indicada
		[ontologia_v1_Class4]
		[ontologia_v1_Class20008]
		[ontologia_v1_Class10005]
		[ontologia_v1_Class2]
		[ontologia_v1_Class10007]
		[ontologia_v1_Class17]
		[ontologia_v1_Class6]
		[ontologia_v1_Class9]
		[ontologia_v1_Class7]))

([ontologia_v1_Class4] of  Malaltia

	(Cronica FALSE)
	(Nom "Colesterol"))


([ontologia_v1_Class40001] of  Malaltia

	(Cronica FALSE)
	(Nom "Hipertensio"))

([ontologia_v1_Class40003] of  Rutina

	(contraindicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class8]
		[ontologia_v1_Class1]
		[ontologia_v1_Class17])
	(escalfament
		[ontologia_v1_Class10015]
		[ontologia_v1_Class20020]
		[ontologia_v1_Class20022]
		[ontologia_v1_Class10009])
	(exercicis
		[ontologia_v1_Class10001]
		[ontologia_v1_Class10050])
	(indicada
		[ontologia_v1_Class40001]
		[ontologia_v1_Class10005]))

([ontologia_v1_Class40004] of  Rutina

	(contraindicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class8]
		[ontologia_v1_Class1]
		[ontologia_v1_Class17]
		[ontologia_v1_Class10005])
	(escalfament
		[ontologia_v1_Class10015]
		[ontologia_v1_Class20020]
		[ontologia_v1_Class20022]
		[ontologia_v1_Class10009])
	(exercicis
		[ontologia_v1_Class20003]
		[ontologia_v1_Class10050])
	(indicada [ontologia_v1_Class40001]))

([ontologia_v1_Class40007] of  Rutina

	(contraindicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class8]
		[ontologia_v1_Class1]
		[ontologia_v1_Class17])
	(escalfament
		[ontologia_v1_Class10015]
		[ontologia_v1_Class20020]
		[ontologia_v1_Class20022]
		[ontologia_v1_Class10009])
	(exercicis
		[ontologia_v1_Class20002]
		[ontologia_v1_Class10050])
	(indicada
		[ontologia_v1_Class40001]
		[ontologia_v1_Class10005]))

([ontologia_v1_Class40008] of  Rutina

	(contraindicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class8]
		[ontologia_v1_Class1]
		[ontologia_v1_Class17]
		[ontologia_v1_Class10005])
	(escalfament
		[ontologia_v1_Class10015]
		[ontologia_v1_Class20020]
		[ontologia_v1_Class20022]
		[ontologia_v1_Class10009])
	(exercicis
		[ontologia_v1_Class10002]
		[ontologia_v1_Class10050])
	(indicada [ontologia_v1_Class40001]))

([ontologia_v1_Class40009] of  Rutina

	(escalfament
		[ontologia_v1_Class10009]
		[ontologia_v1_Class20020]
		[ontologia_v1_Class20022])
	(exercicis
		[ontologia_v1_Class20003]
		[ontologia_v1_Class10046]
		[ontologia_v1_Class10049])
	(indicada [ontologia_v1_Class1]))


([ontologia_v1_Class40017] of  Rutina

	(contraindicada
		[ontologia_v1_Class3]
		[ontologia_v1_Class8]
		[ontologia_v1_Class5])
	(escalfament
		[ontologia_v1_Class10015]
		[ontologia_v1_Class10010]
		[ontologia_v1_Class20018])
	(exercicis
		[ontologia_v1_Class10046]
		[ontologia_v1_Class10053]
		[ontologia_v1_Class10055]
		[ontologia_v1_Class20002]
		[ontologia_v1_Class10002])
	(indicada
		[ontologia_v1_Class4]
		[ontologia_v1_Class20008]
		[ontologia_v1_Class10005]
		[ontologia_v1_Class2]
		[ontologia_v1_Class10007]
		[ontologia_v1_Class17]
		[ontologia_v1_Class6]
		[ontologia_v1_Class9]
		[ontologia_v1_Class7]))

([ontologia_v1_Class40019] of  Rutina

	(escalfament
		[ontologia_v1_Class10010]
		[ontologia_v1_Class10008]
		[ontologia_v1_Class10012])
	(exercicis
		[ontologia_v1_Class20002]
		[ontologia_v1_Class10048]
		[ontologia_v1_Class20019])
	(indicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class18]))

([ontologia_v1_Class40021] of  Rutina

	(escalfament
		[ontologia_v1_Class10010]
		[ontologia_v1_Class10008]
		[ontologia_v1_Class10013])
	(exercicis
		[ontologia_v1_Class20002]
		[ontologia_v1_Class20019]
		[ontologia_v1_Class10054]
		[ontologia_v1_Class10049])
	(indicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class18]))

([ontologia_v1_Class40023] of  Rutina

	(escalfament
		[ontologia_v1_Class10013]
		[ontologia_v1_Class20021]
		[ontologia_v1_Class10009])
	(exercicis
		[ontologia_v1_Class10054]
		[ontologia_v1_Class10049]
		[ontologia_v1_Class20003]
		[ontologia_v1_Class10030])
	(indicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class18]))

([ontologia_v1_Class40025] of  Rutina

	(escalfament
		[ontologia_v1_Class10013]
		[ontologia_v1_Class10009]
		[ontologia_v1_Class20020]
		[ontologia_v1_Class20018])
	(exercicis
		[ontologia_v1_Class10049]
		[ontologia_v1_Class20003]
		[ontologia_v1_Class10055]
		[ontologia_v1_Class10033])
	(indicada
		[ontologia_v1_Class5]
		[ontologia_v1_Class18]))

([ontologia_v1_Class5] of  Malaltia

	(Cronica FALSE)
	(Nom "Artrosis"))


([ontologia_v1_Class50004] of  Padel

	(Duracio 30)
	(nomEx "Padel low"))

([ontologia_v1_Class50005] of  Padel

	(Duracio 60)
	(nomEx "Padel high"))

([ontologia_v1_Class50008] of  Rutina

	(contraindicada
		[ontologia_v1_Class8]
		[ontologia_v1_Class3])
	(escalfament
		[ontologia_v1_Class20021]
		[ontologia_v1_Class10015]
		[ontologia_v1_Class10009])
	(exercicis
		[ontologia_v1_Class10047]
		[ontologia_v1_Class20003])
	(indicada [ontologia_v1_Class7]))

([ontologia_v1_Class50010] of  Rutina

	(contraindicada
		[ontologia_v1_Class8]
		[ontologia_v1_Class3])
	(escalfament
		[ontologia_v1_Class20021]
		[ontologia_v1_Class10015]
		[ontologia_v1_Class10009])
	(exercicis
		[ontologia_v1_Class50004]
		[ontologia_v1_Class10046]
		[ontologia_v1_Class10030])
	(indicada [ontologia_v1_Class7]))


([ontologia_v1_Class50012] of  Rutina

	(contraindicada
		[ontologia_v1_Class8]
		[ontologia_v1_Class3])
	(escalfament
		[ontologia_v1_Class10015]
		[ontologia_v1_Class10009]
		[ontologia_v1_Class20020])
	(exercicis
		[ontologia_v1_Class10046]
		[ontologia_v1_Class50005]
		[ontologia_v1_Class10033])
	(indicada [ontologia_v1_Class7]))

([ontologia_v1_Class6] of  Malaltia

	(Cronica TRUE)
	(Nom "Insuficiència renal crònica"))

([ontologia_v1_Class60001] of  Rutina

	(escalfament
		[ontologia_v1_Class10008]
		[ontologia_v1_Class20020]
		[ontologia_v1_Class20022])
	(exercicis
		[ontologia_v1_Class20002]
		[ontologia_v1_Class10046]
		[ontologia_v1_Class10048])
	(indicada [ontologia_v1_Class1]))

([ontologia_v1_Class60002] of  Rutina

	(escalfament
		[ontologia_v1_Class10008]
		[ontologia_v1_Class20021]
		[ontologia_v1_Class20022])
	(exercicis
		[ontologia_v1_Class20002]
		[ontologia_v1_Class10048]
		[ontologia_v1_Class10046])
	(indicada [ontologia_v1_Class1]))

([ontologia_v1_Class60003] of  Rutina

	(escalfament
		[ontologia_v1_Class10008]
		[ontologia_v1_Class20023]
		[ontologia_v1_Class20021])
	(exercicis
		[ontologia_v1_Class20002]
		[ontologia_v1_Class10047]
		[ontologia_v1_Class10048])
	(indicada [ontologia_v1_Class1]))


([ontologia_v1_Class7] of  Malaltia

	(Cronica FALSE)
	(Nom "Depressió"))


([ontologia_v1_Class8] of  Malaltia

	(Cronica FALSE)
	(Nom "Fragilitat"))

([ontologia_v1_Class9] of  Malaltia

	(Cronica FALSE)
	(Nom "Incontinència urinària"))
)

;;; --- REGLAS
(defmodule MAIN (export ?ALL))

 (deftemplate rutina-res
	(multislot Rutina)
 ) 


;;********************
;;* MESSAGE HANDLERS *
;;********************

(defmessage-handler Exercici print primary ()
	(printout t "--  " ?self:nomEx "." crlf)
	(printout t "    Duracio: " ?self:Duracio " min" )
	(printout t " i repeticions: " ?self:repeticions " vegades." crlf)
	(printout t "   " ?self:Instruccions "." crlf)
)

;;****************
;;* DEFFUNCTIONS *
;;****************

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer)
(deffunction si-o-no-p (?question)
  (bind ?response (ask-question ?question si no s n))
  (if (or (eq ?response si) (eq ?response s))
      then TRUE
      else FALSE))

;;****************
;;*    REGLAS    *
;;****************

(defrule presentacio "regla que presenta el sistema"
 (declare (salience 10))
  =>
  (printout t "------------------------------" crlf)
  (printout t "------ Sistema de recomanacio de -----" crlf)
  (printout t "------ rutines per a la gent gran -----" crlf)
  (printout t "------------------------------" crlf)
  (printout t crlf)
  (focus preguntes-inicials)
)
 (defrule imprimir1
   (declare(salience 9))
  (mes-75 No)
  =>
  (printout t crlf "Realitza les rutina/es seguents:" crlf)
 )

(defrule imprimir2
  (declare(salience 9))
  (mes-75 Si)
  =>
  (printout t crlf "Realitza una de les rutina/es seguents:" crlf)
 )

(defrule rutina-res "Output"
  (declare (salience 8))
  (rutina-res (Rutina ?r))
  =>
  (assert (no_buida))
  (printout t crlf "RUTINA" crlf crlf)
  (printout t "Escalfament: " crlf)
  (bind ?e 1)
    (while (<= ?e (length$(send ?r get-escalfament)))
	   do
	   (bind ?es (nth$ ?e (send ?r get-escalfament)))
	   (send ?es print)
	   (bind ?e (+ ?e 1))
    )
  (printout t "Exercicis: " crlf)
  (bind ?i 1)
    (while (<= ?i (length$(send ?r get-exercicis)))
	   do
	   (bind ?ex (nth$ ?i (send ?r get-exercicis)))
	   (send ?ex print)
	   (bind ?i (+ ?i 1))
    )
)

(defrule rutina-buida
  (declare (salience 7))
  (not(no_buida))
  =>
  (printout t "No s'han trobat rutines" crlf)
)


;;; ----- Modul Preguntes inicials
;;; Fa una serie de preguntes per determinar la dependencia de l'usuari
;;; i el seu estat de salut(edat,sedenterisme)
(defmodule preguntes-inicials "Modul de preguntes inicials"
  (import MAIN ?ALL)
  (export ?ALL))

;;;Determinem l'edat de l'usuari
(defrule mes-75
 (declare (salience 10))
=>
  (if (si-o-no-p "Te voste mes de 75 anys? (s/n)")
	then
	  (assert (mes-75 Si))
	else
	  (assert (mes-75 No))
  )
)

;;;Determinem la sedentariatat de l'usuari
(defrule sedentari
 (declare (salience 10))
=>
  (if (si-o-no-p "Considera que porta un estil de vida sedentari? (s/n)")
	then
	  (assert (sedentari Si))
	else
	  (assert (sedentari No))
  )
)

;;;Determinem si l'usuari ha patit alguna caiguda
(defrule caiguda
 (declare (salience 10))
=>
  (if (si-o-no-p "Ha caigut algun cop? (s/n)")
	then
	  (assert (caiguda Si))
	else
	  (assert (caiguda No))
  )
)

;;; Saltem al modul de preguntes de malalties
(defrule a-preguntes-malalties
 (declare (salience -1))
 =>
 (focus preguntes-malalties)
)

;;; ----- Modul Preguntes malalties
;;; Fa una serie de preguntes per determinar les malalties de l'usuari
(defmodule preguntes-malalties "Modul de preguntes de malalties"
 (import MAIN ?ALL)
 (export ?ALL))

 (defrule diabetis
  (declare (salience 10))
 =>
   (if (si-o-no-p "Te voste diabetis? (s/n)")
 	then
 	  (assert (diabetis Si))
 	else
 	  (assert (diabetis No))
   )
 )

;;;Determinem si l'usuari te obesitat
(defrule obes
 (declare (salience 10))
=>
  (if (si-o-no-p "Te voste algun problema de sobrepres? (s/n)")
	then
	  (assert (obes Si))
		(if (si-o-no-p "Es cronic? (s/n)")
		then
			(assert (obesitat-cronica))
		)
	else
	  (assert (obes No))
  )
)

;;;Determinem si l'usuari ha tingut problemes cardiovasculars
(defrule cardiovasculars
 (declare (salience 10))
=>
  (if (si-o-no-p "Te o ha tingut problemes cardiovasculars? (s/n) ")
    then
     (assert (cardiovasculars Si))
     (if (si-o-no-p "Tenen a veure amb el colesterol? (s/n) ")
      then
       (assert (colesterol))
       (if (si-o-no-p "Te colesterol cronic?(s/n)")
         then
          (assert(colesterol-cronic))
       )
     )
     (if (si-o-no-p "Tens hipertensio? (s/n)")
      then
       (assert (hipertensio))
     )
    else
    (assert (cardiovasculars No))
  )
)

(defrule respiratoris
 (declare (salience 10))
=>
  (if (si-o-no-p "Te voste problemes respiratoris? (s/n)")
	then
	  (assert (respiratoris Si))
	else
	  (assert (respiratoris No))
  )
)

(defrule ossi
 (declare (salience 10))
=>
  (if (si-o-no-p "Te voste algun problema ossi? (s/n)")
	then
	  (assert (ossi Si))
          (if (si-o-no-p "Te artrosis? (s/n) ")
            then
       	      (assert (artrosis))
          )
          (if (si-o-no-p "Te osteoporosis? (s/n)")
           then
              (assert (osteoporosis))
        )
	else
	  (assert (ossi No))
  )
)

(defrule depressio
 (declare (salience 10))
=>
  (if (si-o-no-p "Pateix voste depressio? (s/n)")
	then
	  (assert (depressio Si))
	else
	  (assert (depressio No))
  )
)

;;; Saltem al modul de preguntes de malalties
(defrule a-seleccio-rutines
 (declare (salience -1))
 =>
 (focus seleccio-rutines)
)

;;; ----- Modul Seleccio Rutines
;;; Donades totes les caracteristiques de l'usuari, determina quines Rutines
;;;	se li poden assignar
(defmodule seleccio-rutines "Modul de preguntes de malalties"
 (import MAIN ?ALL)
 (import preguntes-inicials ?ALL)
 (import preguntes-malalties ?ALL)
 (export ?ALL))
 

 (defrule circulacio-sanguinea1
	(mes-75 Si)(sedentari Si)(ossi No)
	(or (colesterol) (colesterol-cronic) (obes Si) (obesitat-cronica) (cardiovasculars Si) (depressio Si))
	 =>
	(bind ?exs (send [ontologia_v1_Class30012]  get-exercicis))
	(bind ?rutina (make-instance [r] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class30012]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule circulacio-sanguinea2
    ;(declare (salience 10))
    (mes-75 Si) (sedentari No) (ossi No)
	(or (colesterol) (colesterol-cronic)(obes Si) (obesitat-cronica) (cardiovasculars Si) (depressio Si))
 	=>
	(bind ?exs (send [ontologia_v1_Class30014]  get-exercicis))
	(bind ?rutina (make-instance [r] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class30014]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))	
 )

 (defrule circulacio-sanguinea3
    (mes-75 No) (sedentari Si) (ossi No)
    (or (colesterol)(colesterol-cronic)(obes Si)(obesitat-cronica)(cardiovasculars Si)(depressio Si))
	 =>
	(bind ?exs (send [ontologia_v1_Class30041]  get-exercicis))
	(bind ?rutina (make-instance [r] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class30041]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))	
 )

 (defrule circulacio-sanguinea4
   (mes-75 No) (sedentari No)(ossi No)
   (or (colesterol)(colesterol-cronic)(obes Si) (obesitat-cronica)(cardiovasculars Si)(depressio Si))
	 =>
    (bind ?exs (send [ontologia_v1_Class40017]  get-exercicis))
	(bind ?rutina (make-instance [r] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class40017]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule depressio1
    (mes-75 Si)(sedentari Si)(ossi No)(depressio Si)
 	=>
	(bind ?exs (send [ontologia_v1_Class10000]  get-exercicis))
	(bind ?rutina (make-instance [r1] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class10000]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)	
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule depressio2
    (mes-75 Si) (sedentari No) (ossi No)(depressio Si)
	 =>
	(bind ?exs (send [ontologia_v1_Class50008]  get-exercicis))
	(bind ?rutina (make-instance [r1] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class50008]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule depressio3
    (mes-75 No) (sedentari Si)(ossi No)(depressio Si)
	 =>
	(bind ?exs (send [ontologia_v1_Class50010]  get-exercicis))
	(bind ?rutina (make-instance [r1] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class50010]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule depressio4
    (mes-75 No)(sedentari No) (ossi No)(depressio Si)
	 =>
	(bind ?exs (send [ontologia_v1_Class50012]  get-exercicis))
	(bind ?rutina (make-instance [r1] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class50012]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule artrosis1
 (mes-75 Si) (sedentari Si)
 (or (ossi Si)(diabetis Si))
	 =>
	(bind ?exs (send [ontologia_v1_Class40019]  get-exercicis))
	(bind ?rutina (make-instance [r2] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class40019]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule artrosis2
    (mes-75 Si) (sedentari No)
    (or (ossi Si)(diabetis Si))
	=>
	(bind ?exs (send [ontologia_v1_Class40021]  get-exercicis))
	(bind ?rutina (make-instance [r2] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class40021]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule artrosis3
 (mes-75 No) (sedentari Si)
 (or (ossi Si)(diabetis Si))
	=>
	(bind ?exs (send [ontologia_v1_Class40023]  get-exercicis))
	(bind ?rutina (make-instance [r2] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class40023]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule artrosis4
  (mes-75 No) (sedentari No)
  ( or (ossi Si)(diabetis Si))
	=>
	(bind ?exs (send [ontologia_v1_Class40025]  get-exercicis))
	(bind ?rutina (make-instance [r2] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class40025]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule fragilitat1
    (mes-75 Si) (sedentari Si)(caiguda Si) (osteoporosis) (not (artrosis))
	=>
	(bind ?exs (send [ontologia_v1_Class20000]  get-exercicis))
	(bind ?rutina (make-instance [r3] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class20000]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule fragilitat2
    (mes-75 Si) (sedentari No) (caiguda Si) (osteoporosis) (not (artrosis))
 =>
	(bind ?exs (send [ontologia_v1_Class30001]  get-exercicis))
	(bind ?rutina (make-instance [r3] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class30001]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))	
 )

 (defrule fragilitat3
 (mes-75 No) (sedentari Si) (caiguda Si)(osteoporosis)(not (artrosis))
 =>
	(bind ?exs (send [ontologia_v1_Class30003]  get-exercicis))
	(bind ?rutina (make-instance [r3] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class30003]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule fragilitat4
 (mes-75 No)(sedentari No)(caiguda Si)(osteoporosis)(not (artrosis))
 =>
	(bind ?exs (send [ontologia_v1_Class30007]  get-exercicis))
	(bind ?rutina (make-instance [r3] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class30007]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule hipertensio1
 (mes-75 Si) (sedentari Si)(caiguda No) (ossi No)(respiratoris No)(cardiovasculars No)
 (hipertensio)(obes Si)
 =>
	(bind ?exs (send [ontologia_v1_Class40003]  get-exercicis))
	(bind ?rutina (make-instance [r4] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class40003]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule hipertensio2
 (mes-75 Si)(sedentari No) (caiguda No)(ossi No)(respiratoris No)(cardiovasculars No)
 (hipertensio)(obes Si)
 =>
	(bind ?exs (send [ontologia_v1_Class40007]  get-exercicis))
	(bind ?rutina (make-instance [r4] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class40007]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule hipertensio3
 (mes-75 No)(sedentari Si) (caiguda No)(ossi No)(respiratoris No)(cardiovasculars No)
 (hipertensio)
 =>
 	(bind ?exs (send [ontologia_v1_Class40008]  get-exercicis))
	(bind ?rutina (make-instance [r4] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class40008]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule hipertensio4
 (mes-75 No) (sedentari No) (caiguda No)(ossi No) (respiratoris No)(cardiovasculars No)
 (hipertensio)
 =>
	(bind ?exs (send [ontologia_v1_Class40004]  get-exercicis))
	(bind ?rutina (make-instance [r4] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class40004]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
    (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule respiratoris1
	 (mes-75 Si) (sedentari Si) (respiratoris Si)
	 =>
	 (bind ?exs (send [ontologia_v1_Class60003]  get-exercicis))
	 (bind ?rutina (make-instance [r5] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class60003]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	 (send ?rutina put-exercicis ?exs)
		 (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule respiratoris2
	(mes-75 Si) (sedentari No) (respiratoris Si)
	=>
	(bind ?exs (send [ontologia_v1_Class60002]  get-exercicis))
	(bind ?rutina (make-instance [r5] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class60002]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
		(assert(rutina-res(Rutina ?rutina)))
 )

 (defrule respiratoris3
	(mes-75 No) (sedentari Si) (respiratoris Si)
	=>
	(bind ?exs (send [ontologia_v1_Class60001]  get-exercicis))
	(bind ?rutina (make-instance [r5] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class60001]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
		(assert(rutina-res(Rutina ?rutina)))
 )

 (defrule respiratoris4
	(mes-75 No) (sedentari No) (respiratoris Si)
	=>
	(bind ?exs (send [ontologia_v1_Class40009]  get-exercicis))
	(bind ?rutina (make-instance [r5] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class40009]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
		(assert(rutina-res(Rutina ?rutina)))
 )

 (defrule cardiovasculars1
 	(mes-75 Si) (sedentari Si) (not (artrosis)) (caiguda No) (not (osteoporosis))
	(or (cardiovasculars Si) (obes Si) (obesitat-cronica) (diabetis Si) (depressio Si))
 	=>
	(bind ?exs (send [ontologia_v1_Class30036]  get-exercicis))
	(bind ?rutina (make-instance [r6] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class30036]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
		(assert(rutina-res(Rutina ?rutina)))
 )

 (defrule cardiovasculars2
	(mes-75 Si) (sedentari No) (not (artrosis)) (caiguda No) (not (osteoporosis))
	(or (cardiovasculars Si) (obes Si) (obesitat-cronica) (diabetis Si) (depressio Si))
	=>
	(bind ?exs (send [ontologia_v1_Class30037]  get-exercicis))
	(bind ?rutina (make-instance [r6] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class30037]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
	 (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule cardiovasculars3
	(mes-75 No) (sedentari Si) (not (artrosis)) (caiguda No) (not (osteoporosis))
	(or (cardiovasculars Si) (obes Si) (obesitat-cronica) (diabetis Si) (depressio Si))
	=>
	(bind ?exs (send [ontologia_v1_Class30039]  get-exercicis))
	(bind ?rutina (make-instance [r6] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class30039]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
	 (assert(rutina-res(Rutina ?rutina)))
 )

 (defrule cardiovasculars4
	(mes-75 No) (sedentari No) (not (artrosis)) (caiguda No) (not (osteoporosis))
	(or (cardiovasculars Si) (obes Si) (obesitat-cronica) (diabetis Si) (depressio Si))
   =>
	(bind ?exs (send [ontologia_v1_Class30033]  get-exercicis))
	(bind ?rutina (make-instance [r6] of Rutina))
	(bind ?escalfament (send [ontologia_v1_Class30033]  get-escalfament))
	(send ?rutina put-escalfament ?escalfament)
	(send ?rutina put-exercicis ?exs)
   	 (assert(rutina-res(Rutina ?rutina)))
 )
