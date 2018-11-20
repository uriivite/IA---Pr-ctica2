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
(deffunction yes-or-no-p (?question)
  (bind ?response (ask-question ?question yes no y n))
  (if (or (eq ?response yes) (eq ?response y))
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
  (focus preguntas-determinar-usuario )
)

;;; ----- Modul Preguntes inicials
;;; Fa una serie de preguntes per determinar la dependencia de l'usuari
;;; i el seu estat de salut(edat,sedenterisme,malalties...)
(defmodule preguntas-determinar-usuario "Modul de preguntes inicials"
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

;;; Saltamos al modulo de preguntas comunes
(defrule a-preguntas-comunes
 (declare (salience -1))
 =>
 (focus preguntas-comunes)
)

;;; ----- Modul Preguntes inicials
;;; Fa una serie de preguntes per determinar la dependencia de l'usuari
;;; i el seu estat de salut(edat,sedenterisme,malalties...)
(defmodule preguntas-determinar-usuario "Modul de preguntes inicials"


;;;Determinem si l'usuari te obesitat
(defrule obes
 (declare (salience 10))
=>
  (if (si-o-no-p "Te voste algun problema de sobrepres? (s/n)")
	then
	  (assert (obes Si))
	else
	  (assert (obes No))
  )
)




	  
