#lang sicp


(define (!= a b)
  (not (= a b))
)

(!= 2 3)
(!= 1 1)

(define (max a b c)
(cond 
    ((and (> a c) (> a b)) a)
    ((and (> b c) (> b a)) b)
    ((and (> c a) (> c b)) c)
))
(define (min a b c)
(cond 
    ((and (< a c) (< a b)) a)
    ((and (< b c) (< b a)) b)
    ((and (< c a) (< c b)) c)
))

(define (mid a b c)
(cond 
    ((and (!= a (max a b c)) (!= a (min a b c))) a)
    ((and (!= b (max a b c)) (!= b (min a b c))) b)
    ((and (!= c (max a b c)) (!= c (min a b c))) c)
))


(max 1 2 3)
(min 1 2 3)
(mid 1 2 3)

(define (sq x) (* x x))
(sq 2)

(define (sm_sq x y) (+ (sq x) (sq y)))
(sm_sq 2 4)

(define (sm_sq_mid_max a b c) (sm_sq (mid a b c) (max a b c)))

(sm_sq_mid_max 0 1 2)
(sm_sq_mid_max 0 2 1)
(sm_sq_mid_max 2 1 0)





