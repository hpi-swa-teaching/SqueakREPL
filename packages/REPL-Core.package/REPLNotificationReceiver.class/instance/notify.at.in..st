notifying
notify: aString at: anInteger in: aStream
	"Notify the receiver of an error aString at anInteger in aStream."

	self
		lastError: 'Error: "' , aString , '" at position ' , anInteger