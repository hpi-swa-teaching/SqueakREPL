shortcuts
isSpecialShortcutSelector: aString
	"Answer whether or not aString is a selector for a special shortcut."

	^ (aString count: [ :x | x = $: ]) = 1