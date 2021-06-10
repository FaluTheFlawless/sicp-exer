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

(define (good-enough? guess last-guess x)
  (> (/ x (abs (- (square guess) (square last-guess)))) 1000000))

(define (sqrt-iter guess last-guess x)
  (if (good-enough? guess last-guess x)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

(sqrt 0.00000001)