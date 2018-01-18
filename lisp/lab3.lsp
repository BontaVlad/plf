;; L3.P3
(setf lista '(a (b (c)) (d) (e (f))))
(setf n1 'b)
(setf n2 'g)

;; (defun apar(l n)
;;  (cond
;; 	((equal l n) t)
;; 	(t (apply 'and  (t (mapcar #'(lambda (l) (apar l n)) l) )))
;;   ;; (t (apply 'and (t (mapcar #'(lambda (l) (apar l n)) l))))
;;   ;; (t (mapcar #'(lambda (l) (apar l n)) l))
;;  )
;; )
;; (defun apar(l n)
;;   (cond
;;    ((equal l n) t)
;;    (t (apply 'and  (t (mapcar 'apar(cdr l n))) l))
;;    )
;;   )


;; (defun apare(l e)
;;  (cond
;; 	((equal l e) t)
;; 	;; (t (apply 'or (mapcan #'(lambda (l) (apare l e)) l)))
;;   ;; (t (mapcar #'(lambda (x) (and (apare x e) t) l))
;;   (t (apply 'and (mapcar 'apare(cdr l))))
;;  )
;; ))


;; (defun tree-member (tree e)
;;   (if (atom tree) ; alternatively: (not (consp tree))
;;       (equal tree e)
;;     (or (tree-member (car tree) e)
;;         (tree-member (cdr tree) e))))

;; (defun foo (tree node)
;;   (if (atom tree)
;;       (equal tree node)
;;     (mapcan #'(lambda (x) (or (foo x node) nil)) tree)
;;   )
;; )

(defun tree-member (tree node)
  (if (atom tree)
      (equal tree node)
    (mapcan #'(lambda (x) (and (foo x node) (list t))) tree)
  )
)

;; (defun adancime (l)
;;   (cond
;;    ((null (cdr l)) 0)
;;    (t (+ 1 (apply 'max (mapcar 'adancime (cdr l)))))
;;    )
;; )
