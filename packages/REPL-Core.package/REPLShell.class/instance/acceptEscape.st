keys
acceptEscape
	"Send this message whenever an escape code or character is read."

	self isCompleting
		ifTrue: [ self abortCompletion. ]