printing
print: aString
	"Write aString and line feed to stdOut and flush."

	self 
		cr;
		putAll: aString;
		lf;
		putAll: self class startSymbol; 
		flush