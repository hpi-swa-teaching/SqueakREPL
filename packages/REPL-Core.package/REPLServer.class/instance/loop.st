initialize-release
loop
	"Read from client and handle input. Also see '#startLoop'"

	| i |
	i := self read.
	i size > 0 ifTrue: [
		self handle: i last.
	].