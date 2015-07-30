shortening
truncateShortcutSelectors: aCollection
	"Truncate all shortcut selectors contained in aCollection to their first part and answer the shortened selectors."

	^ aCollection
		inject: Set new
		into: [ :shortenedSelectors :eachShortcutSelector | 
			shortenedSelectors
				add: (eachShortcutSelector subStrings: #($:)) first asSymbol;
				yourself ]