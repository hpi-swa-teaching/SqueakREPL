printing
send: aString
	"Send aString to client."

	[ self socket sendData: aString ]
		on: SocketPrimitiveFailed
		do: [ ]