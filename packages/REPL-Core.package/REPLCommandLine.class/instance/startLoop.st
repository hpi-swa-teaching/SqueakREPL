life cylce
startLoop
	"Start loop that reads from stdIn, evaluates and prints to stdOut."

	self process: ([ self loop repeat ] forkAt: Processor userBackgroundPriority)