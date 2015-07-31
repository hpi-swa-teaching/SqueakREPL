escape codes
eraseLineUntilEnd


	"Answer escape code to erase the current line starting from the current cursor position until end."

	^self escape: '[K'