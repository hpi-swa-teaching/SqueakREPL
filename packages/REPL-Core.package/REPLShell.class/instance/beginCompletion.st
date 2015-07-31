completing
beginCompletion
	
	self completing: true.
	self interface print: self interface class saveCursorPosition.
	self interface print: self interface class cursorHide.