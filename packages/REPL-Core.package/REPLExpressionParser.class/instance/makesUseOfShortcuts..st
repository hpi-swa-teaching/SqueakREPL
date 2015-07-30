shortening
makesUseOfShortcuts: aString
	"Check whether aString possibly makes use of shortcuts and answer a truth value according to it."

	| shortcutSelectors shortenedSelectors |
	shortcutSelectors := self class classOfExpressionShortcut selectors.
	shortenedSelectors := self truncateShortcutSelectors: shortcutSelectors.
	^ self areShortcutSelectors: shortenedSelectors containedWithin: aString