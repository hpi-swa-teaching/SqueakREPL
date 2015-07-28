life cycle
endLoop
	"End process handling read-eval-print-loop."

	self process terminate.
	self process: nil.

	