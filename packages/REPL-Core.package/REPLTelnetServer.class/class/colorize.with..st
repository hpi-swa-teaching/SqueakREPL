escaping
colorize: aString with: aColorValue
	"Answer escape code for aString colorized with aColorValue."

	^ (self escape: '[' , aColorValue , 'm') , aString , (self escape: '[0m')