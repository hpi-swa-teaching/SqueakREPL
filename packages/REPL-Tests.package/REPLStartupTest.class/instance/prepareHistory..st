running
prepareHistory: aString
	"Prepare the shell history to only contain aString and clear input buffers."

	| shell |
	shell := self repl shell.
	shell
		clearHistory;
		clearHistoryIndex;
		clearInput;
		appendInput: aString;
		acceptReturn