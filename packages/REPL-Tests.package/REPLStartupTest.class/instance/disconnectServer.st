running
disconnectServer
	self repl close.
	[ self repl socket closeAndDestroy: 1 ]
		on: Error
		do: [ :ex |  ]