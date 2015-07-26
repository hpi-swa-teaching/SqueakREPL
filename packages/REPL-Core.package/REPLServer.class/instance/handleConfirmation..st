evaluating
handleConfirmation: aCharacter
	self
		nextIsConfirmation: false;
		confirmed: aCharacter == 'y';
		clearInput