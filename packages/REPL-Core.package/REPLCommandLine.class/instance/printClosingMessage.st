printing
printClosingMessage 
	"Print closing message to stdOut."

	self 
		putAll: 'Closing Squeak REPL.';
		flush.