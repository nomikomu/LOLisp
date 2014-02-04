;;;; Common Lisp - CHEAT SHEET

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

;; labels - makes functions available in defined functions
(labels ((a (n)
            (+ n 5))
         (b (n)
            (+ (a n) 6)))
(b 10))