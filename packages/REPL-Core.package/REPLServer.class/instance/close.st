initialize-release
close
	"Close server connection."

	"self process terminate."

	self print: self closingMessage.
	self socket close 