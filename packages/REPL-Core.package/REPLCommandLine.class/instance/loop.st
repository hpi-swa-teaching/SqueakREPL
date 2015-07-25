life cylce
loop
	"Answer process corresponding to read-eval-print-loop."

	^ [ 
	| input |
	input := ''.
	[ 
	input := input , self read.
	(self isExpression: input)
		ifTrue: [ 
			self print: (self evaluate: input).
			input := '' ]
		ifFalse: [ self putAll: self class continuationSymbol ] ] ]