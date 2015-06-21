life cycle
loop
	"Read from client and handle input. Also see '#startLoop'"

	| i |
	i := self read.
	i size > 0 ifTrue: [
		i do: [ :c | 
			self lastKey: c.
			self nextIsConfirmation 
				ifTrue: [
					self handleConfirmation: c ]
				ifFalse: [
					self handle: c ]
		]
		
	
		"Transcript show: (i size); cr.
		self handle: i last."
	]