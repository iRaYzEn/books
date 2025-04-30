


;; 1.5
(define (p) (p))

(define (test x y)
    (if (= x 0) 0 y))

; applicative-order
(test 0 (p))
; loop for ever and ever

; normal-order
(test 0 (p))
; loop for ever and ever
