instance creation
newOn: port
	"Use this to create a new REPL server on port."

	| interface |

	interface := self interfaceClass newOn: port.
	interface port: port.
	^ interface