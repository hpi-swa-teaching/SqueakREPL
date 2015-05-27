life cylce
startLoop
	"Start loop that reads from stdIn, evaluates and prints to stdOut."

	self loop: ([
		| input |
		input := ''.
		[ 
		"	Transcript show: '?'."

			"input := input , self read."
			input := OSProcess thisOSProcess stdIn nextLine.
			

			"Transcript show: '!'."


	
			"(input = Character lf) ifFalse: [

				Transcript show: 'Moar!'.
				Transcript show: input.
				self putAll: '!'."

"			] ifTrue: ["

				(self isExpression: input) 
				ifTrue: [
					self print: (self evaluate: input).
					input := '' ] 
				ifFalse: [ 
					self putAll: self class continuationSymbol ]

		"	]."
	
Processor yield.


		] repeat
	] forkAt: (Processor userBackgroundPriority))