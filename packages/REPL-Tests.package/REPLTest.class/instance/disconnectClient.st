running
disconnectClient

	[ self client closeAndDestroy: 1 ]
		on: ConnectionClosed
		do: [ :ex | ]

		on: ConnectionTimedOut
		do: [ :ex | ]
