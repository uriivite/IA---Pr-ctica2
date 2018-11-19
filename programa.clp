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
