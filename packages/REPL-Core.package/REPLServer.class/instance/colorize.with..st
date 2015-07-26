printing
colorize: aString with: aColorValue
	^ (self escapeCode: '[' , aColorValue , 'm') , aString , (self escapeCode: '[0m')