debugging
codeText

	| interval s |
	self debugger codeTextMorph
		ifNil: [ ^(self class colorize: 'No context.' with: self class colorBad) ].

	interval := self debugger codePaneSelectionInterval.
	s := self debugger contents string.

	^(s copyFrom: 1 to: interval first - 1) withInternetLineEndings,
	(self class colorize: (s copyFrom: interval first to: interval last) withInternetLineEndings with: self class colorGoodInverted),
	(self class colorize: (s copyFrom: interval last + 1 to: s size) withInternetLineEndings with: '0;').

	