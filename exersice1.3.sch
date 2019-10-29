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
(cond ((and (>= a b) (>= a c)) a)
    ((and (>= b a) (>= b c)) b)
    ((and (>= c a) (>= c b)) c)
    (else a)
))

(define (min a b c)
(cond ((and (<= a b) (<= a c)) a)
    ((and (<= b a) (<= b c)) b)
    ((and (<= c a) (<= c b)) c)
    (else a)
))







