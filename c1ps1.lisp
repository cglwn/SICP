;1.1
(= 10 10)
(= (+ 5 3 4) 12)
(= (- 9 1) 8)
(= (+ (* 2 4) (- 4 6)) 6)
(define a 3)
(define b (+ a 1))
(= (+ a b ( * a b)) 19)
(= a b) ; false
(= 
	(if (and (> b a) (< b (* a b)))
		b
		a)
	b)
(= 
  (cond ((= a 4) 6)
        ((= b 4 ) (+ 6 7 a))
        (else 25))
  16)
(= (+ 2 (if (> b a) b a))
   6)
(= (* (cond ((> a b) a)
            ((< a b) b)
            (else -1))
      (+ a 1))
   16)

;1.2
(/ 
  (+ 5 4 (- 2 (- 3(+ 6 (/ 4 5)))))
  (* 3 (- 6 2) (- 7 2)))

;1.3
(define (sos-of-largest-two x y z)
        (cond ((and (> x  y) (> z y)) (sos x z))
              ((and (> x  z) (> y z)) (sos x y))
              ((and (> y  x) (> z x)) (sos y z))))
        
(define (square x) (* x x))
(define (sos x y) (+ (square x) (square y)))

;1.5
(define (p) (p))
(define (test x y)
        (if ( = x 0) 0 y))

(test 0 (p))
; In applicative-order evaluation, this would not run as (test 0 (p)) would try and evaluate (p) repeatedly before applying it to test
; In normal-order evaluation, the program would first substitute test for it's body
; Then it would evaluate the predicate, yielding #t giving the consequent of the if without having to eval (p)