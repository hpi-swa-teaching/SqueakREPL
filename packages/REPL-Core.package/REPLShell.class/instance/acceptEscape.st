keys
acceptEscape
	"Accept escape code or escape key."

	self isCompleting
		ifTrue: [ self abortCompletion. ]