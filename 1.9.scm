(define (dec a)
  (- a 1))

(define (inc a)
  (+ a 1))

(define (plus-rec a b)
  (if (= a 0)
      b
      (inc (plus-rec (dec a) b))))

(define (plus-iter a b)
  (if (= a 0)
      b
      (plus-iter (dec a) (inc b))))

(plus-rec 4 5)
; (plus-rec 4 5)
; (inc (plus-rec 3 5))
; (inc (inc (plus-rec 2 5)))
; (inc (inc (inc (plus-rec 1 5))))
; (inc (inc (inc (inc (plus-rec 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9
; Recursive one.

(plus-iter 4 5)
; (plus-iter 4 5)
; (plus-iter 3 6)
; (plus-iter 2 7)
; (plus-iter 1 8)
; (plus-iter 0 9)
; 9
; Iterative one.