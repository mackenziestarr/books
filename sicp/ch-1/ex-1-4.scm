; Exercise 1.4
; Observe that our model of evaluation allows for combinations whose
; operators are compound expressions. Use this observation to describe
; the behavior of the following procedure

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; when this compound procedure is invoked the "if" special form is
; evaluated and yields the operator used in the outer compound
; combination body

