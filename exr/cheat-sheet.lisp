;;;; Common Lisp - CHEAT SHEET
;   i i i i i i i       ooooo    o        ooooooo   ooooo   ooooo
;   I I I I I I I      8     8   8           8     8     o  8    8
;   I  \ `+' /  I      8         8           8     8        8    8
;    \  `-+-'  /       8         8           8      ooooo   8oooo
;     `-__|__-'        8         8           8           8  8
;         |            8     o   8           8     o     8  8
;   ------+------       ooooo    8oooooo  ooo8ooo   ooooo   8
;;;; *tips menora

;; define function:
(defun name (parameters)
    "Documentation for name."
    ())


;; define parameter (global variable):
(defparameter *name* value
    "Documentation for name.")


;; set the local variables
(let (variables)
    (...body...))


;; set the local function
(flet ((function_name (arguments)
        ...function body...))
...body...)
; example:
(flet ((a (n)
          (+ n 10))
       (b (n)
          (+ n 20))
       (c (n)
          (+ n 30)))
(a (b (c 5))))


;; binary search with two variables:
(ash (+ a b) -1)


;; setf - change variable 
(setf place value)


;; labels - makes functions available in defined functions
(labels ((a (n)
            (+ n 5))
         (b (n)
            (+ (a n) 6)))
(b 10))


;;;; cons,car,cdr

;; > cons
; In Lisp, a chain of cons cells and 
; a list are exactly the same thing.
;; cons with two symbols
(cons 'chicken 'cat)
; output: (CHICKEN . CAT)
;; cons with nil
(cons 'chicken 'nil)
(cons 'chicken ())
; output: (CHICKEN)
;; multiple lists
(cons 'pork '(beef chicken))
; output (PORK BEEF CHICKEN)
;; consing everything up
(cons 'pork (cons 'beef (cons 'chicken ())))
; output (PORK BEEF CHICKEN)

;; > car
(car '(pork beef chicken))
; output: PORK

;; > cdr
(cdr '(pork beef chicken))
; output: (BEEF CHICKEN)

;; > cadr
(car (cdr '(pork beef chicken)))
; output: BEEF
(cadr '(pork beef chicken))
; output: BEEF

;; LIST
(list 'pork 'beef 'chicken)
; output: (PORK BEEF CHICKEN)

