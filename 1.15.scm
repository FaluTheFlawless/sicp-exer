(define (cube x)
  (* x x x))

(define (p x)
  (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(sine 12.15)
; (sine 12.15)
; (p (sine (/ 12.15 3.0)))
; (p (sine 4.05))
; (p (p (sine (/ 4.05 3.0))))
; (p (p (sine 1.35)))
; (p (p (p (sine 0.45))))
; (p (p (p (p (sine (/ 0.45 3.0))))))
; (p (p (p (p (sine 0.15)))))
; (p (p (p (p (p (sine (/ 0.15 3.0)))))))
; (p (p (p (p (p (sine 0.05))))))
; (p (p (p (p (p 0.05)))))
; (p (p (p (p (- (* 3 0.05) (* 4 (cube 0.05)))))))
; (p (p (p (p (- 0.15 (* 4 0.000125))))))
; (p (p (p (p 0.1495))))
; (p (p (p (- (* 3 0.1495) (* 4 (cube 0.1495))))))
; (p (p (p (- 0.4485 (* 4 0.00334136237)))))
; (p (p (p (- 0.4485 0.01336544948))))
; (p (p (p 0.43513455052)))
; (p (p (- (* 3 0.43513455052) (* 4 (cube 0.43513455052)))))
; (p (p (- 1.30540365156 (* 4 0.08238927959))))
; (p (p (- 1.30540365156 0.32955711836)))
; (p (p 0.9758465332))
; (p (- (* 3 0.9758465332) (* 4 (cube 0.9758465332))))
; (p (- 2.9275395996 (* 4 0.92927567858)))
; (p (- 2.9275395996 3.71710271432))
; (p -0.78956311472)
; (- (* 3 -0.78956311472) (* 4 (cube -0.78956311472)))
; (- -2.36868934416 (* 4 -0.49222147196))
; (- -2.36868934416 -1.96888588784)
; -0.39980345632
; p was called 5 times, time: Θ(n), memory: Θ(n)