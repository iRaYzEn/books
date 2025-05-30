(define (plural wd)
  (if (and (equal? (last wd) 'y) (not (member? (last (bl wd)) '(i o u e a))))
      (word (bl wd) 'ies)
      (word wd 's)))
