#lang racket

; (list.every pred lst): F X L -> B
; returns #f if any element of lst fails to satisfy pred, #t otherwise
; : size(lst)=0      -> #t
; : (pred lst[0])=#t -> (every pred lst[1..end])
; : else             -> #f
(define list.every
  (lambda (pred lst)
    (if (null? lst)
        #t
        (if (pred (car lst))
            (list.every pred (cdr lst))
            #f))))
