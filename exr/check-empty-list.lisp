; (check-empty-list nil)
; THE-LIST-IS-EMPTY

; (check-empty-list '(a b))
; THE-LIST-ISNT-EMPTY

(defun check-empty-list (list)
	(if list
		'the-list-isnt-empty
		'the-list-is-empty))