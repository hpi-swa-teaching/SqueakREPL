system startup
shutDown: quitting
	"Close interface on shutdown."

	self interface
		ifNotNil: [ 
			self interface close.
			self interface: nil ]