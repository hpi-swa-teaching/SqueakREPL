method
dm: aContext o: anObject m: aString
	"Delete the method named after aString within the class anObject."

	anObject removeSelector: aString