(define (new-if then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square  guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
; It will cause an endless loop because of normal order of calculation - sqrt-iter will be called forever.

(define (sqrt x)
  (sqrt-iter 1.0 x))
; NOT WORKS