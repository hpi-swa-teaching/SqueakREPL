printing
print: aString
	"Send aString to client."

	self socket sendData: aString