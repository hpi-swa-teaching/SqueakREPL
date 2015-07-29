completion
completeSpecialShortcut: aString
	"Answers a list of suggestions for completing aString."

	| selector shortcuts |
	shortcuts := REPLExpressionShortcut selectors select: [ :each | (each count: [ :x | x = $: ]) = 1 ].

	aString size > 1
		ifTrue: [ 
			selector := aString allButFirst.
			shortcuts := shortcuts select: [ :each | each startsWith: selector ] ].

	^ (shortcuts collect: [ :each | '!' , (each allButLast) ]) asOrderedCollection