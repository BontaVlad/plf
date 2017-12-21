(defun multime(l)
  (cond
   ((null l) t) ;lista vida e multime
   ((member (car l) (cdr l)) nil)
   (t (multime(cdr l)))
   )
)

(print (multime (list 1 2 3 3)))
