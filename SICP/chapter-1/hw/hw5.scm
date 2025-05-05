;5. Write a procedure ends-e that takes a sentence as its argument and returns a sentence
;containing only those words of the argument whose last letter is E:

;> (ends-e ’(please put the salami above the blue elephant))
;(please the above the blue)

(define (ends-e wd) 
  (cond ((empty? wd) '())
        ((not (equal? (last (first wd)) 'e)) (ends-e (bf wd)))
        (else (se (first wd) (ends-e (bf wd))))
        )
  )
