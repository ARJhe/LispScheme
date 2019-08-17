;Exercise 1.3:
;Define a procedure that takes three numbers
;as arguments and returns the sum of the squares of the two
;larger number

;a > b > c, b > a > c : a*a+b*b
;b > c > a, c > b > a : b*b+c*c
;a > c > b, c > a > b : a*a+c*c

(define (compare_squr a b c)
    (cond
        ((or (and (< a b) (< c a)) (and (< b a) (< c b))) 
            (+ (* b b) (* a a))
        )
        ((or (and (< c b) (< a c)) (and (< b c) (< a b))) 
            (+ (* b b) (* c c)))
        (else (+ (* a a) (* c c)))
    )
)

;to combine 3 procedures to a procedure to atain this


