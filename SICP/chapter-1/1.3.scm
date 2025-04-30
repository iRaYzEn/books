; I can't figure something smarter then this for now.
(define (sum_of_squares x y z) (if (> x y) (if (> y z) (+ (* x x) (* y y)) (+ (* x x) (* z z))) (if (> x z) (+ (* x x) (* y y)) (+ (* z z) (* y y))) ) )

; better i think
(define (better x y z) (if (= (min x y z) x) (+ (* y) (* z)) (if (= (min x y z) y) (+ (* x) (* z)) (if (= (min x y z) z) (+ (* x) (* y)) 'no ))))
