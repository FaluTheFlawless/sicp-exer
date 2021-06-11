(define (pascal-triangle row column)
  (cond ((> column row) 0)
        ((or (= row column) (= column 1)) 1)
        (else (+ (pascal-triangle (- row 1) column) (pascal-triangle (- row 1) (- column 1))))))
