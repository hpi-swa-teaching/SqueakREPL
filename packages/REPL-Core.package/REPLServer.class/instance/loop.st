initialize-release
loop
	"Read from client and handle input. Also see '#startLoop'"

	| i |
	i := self read.
	i size > 0 ifTrue: [
		self nextIsConfirmation 
			ifTrue: [
				self handleConfirmation: i last] 
			ifFalse: [
				self handle: i last. ].
	].