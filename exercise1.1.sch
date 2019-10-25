#lang sicp
; I add 2 errors in this test. 8/10 are correct.
10
(+ 5 3 4) ; 12
(- 9 1) ; 8
(/ 6 2); 3
(+ (* 2 4) (- 4 6)) ; 8 + 2 = 10 ; fix 8 + -2
(define a 3) ; a is 3
(define b (+ a 1)) ; b is 4
(+ a b (* a b)) ; 3 + 4 + 12 = 15 + 4 = 19
(= a b) ; #f
(if (and (> b a) (< b (* a b)))
b
a
) ; 4
(cond ((= a 4) 6)
((= b 4) (+ 6 7 a))
(else 25)
) ; 6+7+3 = 16

(+ 2 (if (> b a) b a)) ; 6

(* (cond ((> a b) a)
    ((< a b) b)
    (else -1)
    )
    (+ a 1)
) ; 4 * 5 = 20 ; 4 * 4 = 16
