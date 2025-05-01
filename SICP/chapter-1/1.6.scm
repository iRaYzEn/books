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

; cond don't like recursion basically, more precisely the else clause don't like recursion


; a test where you can use recursion in cond in other normal cluase but not in the else clause like the example above
(define (new-thing x y) 
  (cond ((= x y) 
    x)
   (new-thing (+ x 1) (+ y 6))
  (else 2)))
; try (new-thing 1 2) 
