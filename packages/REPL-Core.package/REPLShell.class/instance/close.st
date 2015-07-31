living
close
	"Close server connection."

	(self socket isUnconnectedOrInvalid or: [ self socket isWaitingForConnection ])
		ifFalse: [ self print: self class closingMessage. ].
	self socket closeAndDestroy.
	self process ifNotNil: [ self process terminate ]

