print
print: aString
	"Write aString and line feed to stdOut and flush."

	self 
		putAll: aString;
		lf;
		putFirstSymbol; 
		flush