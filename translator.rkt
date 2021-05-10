#lang typed/racket

(require typed/rackunit)

#|
  Translation Rules

  T === phi

  T({a}) = a
  T({hole(a0), ..., a_n}) = 
|#


(define-type SetExpr (U Term Terms))
(struct Term ([a : (U Real SetExpr)]) #:transparent)
(struct Terms ([terms : (Listof SetExpr)]) #:transparent)


(define (top-translate [func-sexps : Sexp]) : String
  (translate (parse func-sexps)))


(define (translate [exp : SetExpr]) : String
  (match exp
    [(Term t) (match t
                [(? real? r) (~v r)]
                [other (translate (cast t SetExpr))])]
    [(Terms ts) (string-append "if (??) {" (translate (first ts)) "} else {"
                               (foldl (lambda ([t : SetExpr] [s : String]) (string-append s (translate t))) "" (rest ts)) "}")]))



; hole term will be denoted by 
(define (parse [s : Sexp]) : SetExpr
  (match s
    [(? real? n) (Term n)]
    [(list terms ...) (Terms (map parse terms))]))



(top-translate '(1 2 3 4))
(top-translate '(1 2 (3 4)))

