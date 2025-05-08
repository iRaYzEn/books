(define (sqrt-iter guess x) 
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess))) ; (/ x guess) is the quotient

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x) 
  (sqrt-iter 1.0 x))

(define (square x)
  (* x x ))

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; new-if is just an procedure which is going to evaluate all it's arguments first which is going to cause infinte loop
