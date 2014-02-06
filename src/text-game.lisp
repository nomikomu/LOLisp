; location nodes
(defparameter *nodes* '(
    (living-room (you are in the living-room.
                  a wizard is snoring loudly on the couch.))
    (garden      (you are in a beautiful garden.
                  there is a well in front of you.))
    (attic       (you are in the attic.
                  there is a giant welding torch in the corner.))))

; Paths - edges
(defparameter *edges* '(
    (living-room (garden west door)
                  (attic upstairs ladder))
    (garden      (living-room east door))
    (attic (living-room downstairs ladder))))

; assoc for finding correct item in list
(defun describe-location (location nodes)
    (cadr (assoc location nodes)))
; example usage:
;(describe-location 'living-room *nodes*)

(defun describe-path (edge) 
    '(there is a ,(caddr edge) going ,(cadr edge) from here.))
;example usage:
s;(describe-path '(garden west door))
