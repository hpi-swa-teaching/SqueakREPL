life cycle
close
	"Close server connection."

	"self process terminate."

	self socket isWaitingForConnection ifFalse: [
		self print: self closingMessage.
	].
	self socket closeAndDestroy.