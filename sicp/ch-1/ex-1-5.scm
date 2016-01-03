; Exercise 1.5
; Ben Bitdiddle has invented a test to determine whether the
; interpreter he is faced with is using applicative-order evaluation
; or normal-order evalutation. He defines the following two
; procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; Then he evaluates the expression

(test 0 (p))

; What behavior will Ben observe with an interpreter that uses
; applicative-order evaluation?  What behavior will Ben observe with
; an interpreter that uses normal-order evaluation? Explain your
; answer (Assume that the evaluation rule for the special form "if" is
; the same whether the interpreter is using normal or applicative
; order: The predicate expression is evaluated first, and the result
; determines whether to evaluate the consequent or the alternative
; expression.)

; With applicative-order evaluation, arguments are evaluated before
; the body of the compound combination is invoked. In this particular
; instance, invoking `test` results in the procedure hanging while
; repeatedly evaluating "p"

; With normal-order evaluation, arguments are not evaluated until
; needed. This is also called "lazy" evaluation. With an intepreter
; employing a normal-order evaluation strategy, `(test 0 (p))` would
; return 0 because the second argument of the invocation is never
; evaluated

