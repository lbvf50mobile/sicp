#lang sicp

(define (>= a b)
  (not (< a b))
)
(define (<= a b)
  (not (> a b))
)
(define (!= a b)
  (not (= a b))
)


(define (max a b c)
(cond ((and (> a b) (> a c)) a)
    ((and (> b a) (> b c)) b)
    ((and (> c a) (> c b)) c)
    (else a)
))

(define (min a b c)
(cond ((and (< a b) (< a c)) a)
    ((and (< b a) (< b c)) b)
    ((and (< c a) (< c b)) c)
    (else a)
))

(define (mid a b c)
(cond ((and (!= a max(a b c)) (!= a min(a b c))) a)
    ((and (!= b max(a b c)) (!= b min(a b c))) b)
    ((and (!= c max(a b c)) (!= c min(a b c)))) c)
    (else a)
))

(define (sqr x)
    (* x x)
)

(define (sm_sqr x y)
    (+ (sqr x) (sqr y))
)

(define (sm_min_max_sqr a b c)
    (sm_sqr (max a b c) (mid a b c) )
)

(sm_min_max_sqr 0 1 2)







