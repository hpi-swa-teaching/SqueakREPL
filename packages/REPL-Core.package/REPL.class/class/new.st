instance creation
new
	"Create new REPL interface."

	| interface |
	interface := self interfaceClass new.
	self instance: interface.
	^ interface