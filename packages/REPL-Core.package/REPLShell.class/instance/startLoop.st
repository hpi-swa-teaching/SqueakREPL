living
startLoop
	"Start process handling read-eval-print-loop."

	self process: ([[self loop] repeat ] forkAt: Processor userBackgroundPriority)