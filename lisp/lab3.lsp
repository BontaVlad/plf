;; L3.P3
(setf lista '(a (b (c)) (d) (e (f))))
(setf n1 'b)
(setf n2 'g)


(defun tree-member (tree node)
  (if (atom tree)
      (equal tree node)
    (mapcan #'(lambda (x) (and (tree-member x node) (list t)) tree)
  )
)

