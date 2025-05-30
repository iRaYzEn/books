;Write a predicate ordered? that takes a sentence of numbers as its argument and
;returns a true value if the numbers are in ascending order, or a false value otherwise.

(define (ordered? x)
  (cond ((empty? x) 'true)
        ((equal? (first x) (min  x)) (ordered? (bf x)))
        (else 'false)
        )
  )
; how to de sentence something 
