;; 7.a Write a function to eliminate the n-th element of a linear list.

(defun remove-nth (n list)
  (nconc (subseq list 0 n) (nthcdr (1+ n) list)))

(defparameter *test* (list 0 1 2 3 4 5 6))
(print (remove-nth 3 *test*))
