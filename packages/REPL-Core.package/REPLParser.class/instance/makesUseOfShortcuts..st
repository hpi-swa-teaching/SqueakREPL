shortening
makesUseOfShortcuts: aString
	"Check whether aString (an instance of String) possibly makes use of shortcuts and answer a truth value (an instance of Boolean) according to it."

	| shortcutSelectors shortenedSelectors |
	shortcutSelectors := REPLShortcuts selectors.
	shortenedSelectors := self truncateShortcutSelectors: shortcutSelectors.
	^ self areShortcutSelectors: shortenedSelectors containedWithin: aString