(define (plural wd)
(if (equal? (last wd) 'y)
    (word (bl wd) 'ies)
    (word wd 's)))

(define (vowel? letter)
(member? letter '(a e i o u)))

(define (pl-done? wd)
(vowel? (first wd)))

(define pigl wd)
	(if (pl-done? wd)
	(word wd 'ay)
	(pigl (word (bf wd) (first wd)))))