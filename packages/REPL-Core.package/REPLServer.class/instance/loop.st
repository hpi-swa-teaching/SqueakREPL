life cycle
loop
	"Anser block to be executed repeatedly for handling reading input. See #startLoop."

	^ [ self socket waitForDataIfClosed: [
			"self socket closeAndDestroy."
			Log info: 'Fight Club is closed.'.
			self socket closeAndDestroy.
			self socket: Socket newTCP.
			self socket listenOn: (self port).
			self socket waitForConnectionFor: 10.
			self sendOpeningMessage ].
		self read ]