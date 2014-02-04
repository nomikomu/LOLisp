(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-number ()
    (ash (+ *small* *big*) -1))

(defun smaller ()
    (setf *big* (1- (guess-number)))
    (guess-number))
(defun bigger ()
    (setf *small* (1+ (guess-number)))
    (guess-number))

(defun start-over ()
    (defparameter *small* 1)
    (defparameter *big* 100)
    (guess-number))