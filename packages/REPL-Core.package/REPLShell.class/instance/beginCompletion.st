tab completion
beginCompletion
	"Begin completion process."
	
	self completing: true.
	self interface 
		print: self interface class saveCursorPosition;
		print: self interface class cursorHide.