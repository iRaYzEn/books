;3. Write a procedure switch that takes a sentence as its argument and returns a sentence
;in which every instance of the words I or me is replaced by you, while every instance of
;you is replaced by me except at the beginning of the sentence, where it’s replaced by I.
;(Don’t worry about capitalization of letters.) Example:
;> (switch ’(You told me that I should wake you up))
;(i told you that you should wake me up)

(define (switch s)
(cond ((empty? s) '())
    (else (se 
            (if (or (equal? (first s) 'I) (equal? (first s) 'me)) 
              'you 
              (if (equal? (first s) 'You) 
                'I 
                (if (equal? (first s) 'you) 
                  'me 
                  (first s))
                ))
    (switch (bf s))))))



; second solution better readability

;(define (switch wd) 
;  (if (empty? wd) '() 
;    (se (opposite (first wd)) (switch (bf wd)))
;    )
;  )
;
;(define (opposite wd)
;(cond ((equal? wd 'I) 'you)
;((equal? wd 'me) 'you)
;((equal? wd 'You) 'i)
;((equal? wd 'you) 'me)
;(else wd) ))
