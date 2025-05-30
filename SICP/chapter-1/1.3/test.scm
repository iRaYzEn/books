;(define (sum term a next b) 
;  (if (> a b) 
;    0
;    (+ (term a)
;       (sum term (next a) next b))))
;
;(define (inc a) 
;  (+ a 1))
;
;(define (sum-cubs a b) 
;  (sum cube a inc b))
;
;(define (cube x) (* x x x))
;
;(define (indentity x) x)
;
;(define (sum-integers a b)
;  (sum indentity a inc b))

;(lambda (x) (+ x 4))

(define (sumsquare a b) 
  (if (> a b) 
    0
    (+ (* a a) (sumsquare (+ a 1) b))))


(define (sumcube a b) 
  (if (> a b) 
    0
    (+ (* a a a) (sumcube (+ a 1) b )) ))


(define (sum fw a b)
  (if (> a b) 
    0
    (+ (fw a) (sum fw (+ a 1) b))))

(define (square x) (* x x))
