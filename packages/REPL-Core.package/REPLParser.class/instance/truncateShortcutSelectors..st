shortening
truncateShortcutSelectors: aCollection
	"Truncate all shortcut selectors contained in aCollection (an instance
	of Collection) to their first part and answer the shortened selectors
	(an instance of Collection)."

	^ aCollection
		inject: Set new
		into: [ :shortenedSelectors :eachShortcutSelector | 
			shortenedSelectors
				add: (eachShortcutSelector subStrings: #($:)) first asSymbol;
				yourself ]