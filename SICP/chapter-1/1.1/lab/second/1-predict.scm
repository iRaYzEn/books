(define a 3)
; nothign
(define b (+ a 1))
; nothing 
(+ a b (* a b))
; 19
(= a b)
; #f
(if (and (> b a) (< b (* a b)))
    b
    a)
; 4
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;16
(+ 2 (if (> b a) b a))
;6
(* (cond ((> a b) a)
        ((< a b) b)
        (else -1))
    (+ a 1))
; 16
((if (< a b) + -) a b)
; 7
