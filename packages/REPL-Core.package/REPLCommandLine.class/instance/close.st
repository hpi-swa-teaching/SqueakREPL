life cylce
close
	"Terminate read-eval-print-loop and close stdIn/stdOut."
	
	"self printClosingMessage.
	self process terminate.
	self stdIn close.
	self stdOut close."

	"self class replClass shutDown: true"