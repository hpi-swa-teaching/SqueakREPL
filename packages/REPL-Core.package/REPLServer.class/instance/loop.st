initialize-release
loop
	"Read-eval-print-loop. See '#startLoop'"

	| i |
	i := self read.
	i size > 0 ifTrue: [
		self 
			appendInput: i;
			print: i.

		(i includesSubString: 'C') ifTrue: [ self process terminate ].
	].