method
dm: aContext o: anObject m: aString
	"Delete the method named after aString (an instance of String) within the class anObject (an instance of Object)."

	anObject removeSelector: aString