life cycle
loop
	"Anser block to be executed repeatedly for handling reading input. See #startLoop."

	^[
		[self socket waitForData ]
			on: ConnectionClosed
			do: [
				self socket closeAndDestroy.
				Transcript show: 'Fight Club is closed.'; cr.
			].
		self read
	]