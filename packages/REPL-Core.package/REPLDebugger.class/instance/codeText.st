debugging
codeText
	"Answer text for method selected in debugger."

	| interval text interfaceClass |
	interfaceClass := self interface class.
	self debugger codeTextMorph
		ifNil: [ ^(interfaceClass colorize: 'No context.' with: interfaceClass colorBad) ].

	interval := self debugger codePaneSelectionInterval.
	text := self debugger contents string.

	^(text copyFrom: 1 to: interval first - 1) withInternetLineEndings,
	(interfaceClass colorize: (text copyFrom: interval first to: interval last) withInternetLineEndings with: interfaceClass colorGoodInverted),
	(interfaceClass colorize: (text copyFrom: interval last + 1 to: text size) withInternetLineEndings with: '0;').

	