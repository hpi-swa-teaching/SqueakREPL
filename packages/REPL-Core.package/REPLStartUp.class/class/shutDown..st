system startup
shutDown: quitting
	"Close interface on shutdown."

	quitting ifFalse: [ ^self ].
	self interface ifNotNil: [ 
		self interface close.
		self interface: nil ]