life cylce
startLoop
	"Start loop that reads from stdIn, evaluates and prints to stdOut."

	self loop: ([
		| input |
		input := ''.
		[ 
			input := input , self read.
	
			(self isExpression: input) 
			ifTrue: [
				self print: (self evaluate: input).
				input := '' ] 
			ifFalse: [ 
				self putAll: self class continuationSymbol ]
		] repeat
	] forkAt: (Processor userBackgroundPriority))