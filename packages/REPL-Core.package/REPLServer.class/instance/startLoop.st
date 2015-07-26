life cycle
startLoop
	"Start process handling read-eval-print-loop."
	self sendOpeningMessage.
	self
		process: ([self loop repeat]
				forkAt: Processor userBackgroundPriority)