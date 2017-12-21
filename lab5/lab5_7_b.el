(defun modifica(lista)
  (cond
   ((null lista) nil)
   ((and (null (cdr lista)) (= 9 (car lista))) (list 0 1))
   ((< (car lista) 9) (append (list(+ 1 (car lista))) (cdr lista)))
   (t (append (list 0) (modifica (cdr lista))))
   )
  )

(defun succesor(lista)
  (setq lista (modifica (reverse lista)))
  (setq lista (reverse lista))
  )

(print "modifica")
(print (modifica ()))
(print (modifica '(1 2 3)))
(print (modifica '(1 2 9)))
(print (modifica '(1 2 9 9)))
(print (modifica '(9 9)))
(print (modifica '(9 9 4)))
(print (modifica '(9 9 9)))
(print "succesor")
(print (succesor '()))
(print (succesor '(1 2 3)))
(print (succesor '(9 9)))
(print (succesor '(4 9 9)))
