initialize-release
startLoop
	"Start process handling read-eval-print-loop."

	self print: self openingMessage.
	self process: [ [self loop] repeat ] fork