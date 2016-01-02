; Exercise 1.3
; Define a procedure that takes three numbers as
; arguments and returns the sum of the square of the two larger
; numbers

(define (two-largest-sum-of-squares a b c)
  (sum-of-squares (largest a b) (largest b c)))

(define (largest a b)
  (if (> a b) a b))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (square a)
  (* a a))
