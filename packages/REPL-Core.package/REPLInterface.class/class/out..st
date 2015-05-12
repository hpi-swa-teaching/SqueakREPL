as yet unclassified
out: aString

	OSProcess 
		thisOSProcess stdOut nextPutAll: aString;
		nextPut: Character lf.