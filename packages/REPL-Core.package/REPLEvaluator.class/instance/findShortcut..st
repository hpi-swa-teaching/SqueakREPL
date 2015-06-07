evaluation
findShortcut: aString
	"Parses the code in aString to find a REPLShortcut."

	| shortcuts selector|
	shortcuts := (REPLShortcut selectors).
	selector := (self getSelectorFrom: aString).
	^ (shortcuts includes: selector)
	

