(define (dupls-removed x)
  (cond((empty? x) '())
      ((member? (first x) (bf x))
       (dupls-removed (bf x))) 
      (else 
        (sentence (first x)  (dupls-removed (bf x)) ))))
