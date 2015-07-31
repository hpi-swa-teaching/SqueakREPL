escape codes
colorize: aString with: aColorValue
	^ (self escape: '[' , aColorValue , 'm') , aString , (self escape: '[0m')