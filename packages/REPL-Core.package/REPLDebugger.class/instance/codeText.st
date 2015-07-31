debugging
codeText

	| interval text |
	self debugger codeTextMorph
		ifNil: [ ^(self interface class colorize: 'No context.' with: self interface class colorBad) ].

	interval := self debugger codePaneSelectionInterval.
	text := self debugger contents string.

	^(text copyFrom: 1 to: interval first - 1) withInternetLineEndings,
	(self interface class colorize: (text copyFrom: interval first to: interval last) withInternetLineEndings with: self interface class colorGoodInverted),
	(self interface class colorize: (text copyFrom: interval last + 1 to: text size) withInternetLineEndings with: '0;').

	