#lang sicp

"1.1.6 Conditiona Expressions and Predictes."

"cond"
(define (abs x)
(
    cond ((>  x 0) x )
        ((= x 0) 0)
        ((< x 0) (- x))
))

(abs 1)
(abs -1)
(abs 0)
"else"
(define (abs1 x) 
( 
    cond ( (< x 0) ( - x)) 
    (else x)

))


(abs1 1)
(abs1 -1)
(abs1 0)