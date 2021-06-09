(define (p) (p))
(define (test x y)
    (if (= x 0)
        0
        y))
(test 0 (p))
; endless loop if normal 'cause (p) will be calculated as (p) so the test
;     function will never called
; if applicative, then it extend test and return 0
