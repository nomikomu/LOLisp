(defun length-list (list)
	(if list 
		(1+ (length-list (cdr list)))
		0))