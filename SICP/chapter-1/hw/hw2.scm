(define (squares x) 
  (cond ((empty? x) '())
          (else (sentence (square (first x)) (squares (bf x))))
        )
  )

(define (square x) (* x x))

