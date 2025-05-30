(define (a-plus-abs-b a b) 
    ((if (> b 0) + -) a b))

(a-plus-abs-b 1 2)
((if (> 2 0) + -) 1 2))
((if (#t) + - )1 2); i don't think that i need this but i will put it anyway for now
(+ 1 2)
3
