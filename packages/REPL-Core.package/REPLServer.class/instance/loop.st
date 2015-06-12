initialize-release
loop
	"Read from client and handle input. Also see '#startLoop'"

	| i |
	i := self read.
	i size > 0 ifTrue: [
		i do: [ :c | self handle: c. self lastKey: c. ].
		
	
		"Transcript show: (i size); cr.
		self handle: i last."
	].