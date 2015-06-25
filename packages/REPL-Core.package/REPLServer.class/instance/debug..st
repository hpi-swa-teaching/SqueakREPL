accessing
debug: aCharacer

	| buttons sendString text result list item width |

	buttons := ((self debugger submorphs at: 3) submorphs at: 1) submorphs.
	text := ((self debugger submorphs at: 3) submorphs at: 2) textMorph text.
	list := (((self debugger submorphs at: 2)) submorphs at: 1) submorphs first.

	sendString := ''.
	
	sendString := sendString, String crlf.

	buttons do: [ :b | sendString := sendString, ' [', b label, '] '. ].

	result := (self colorize: sendString with: self class colorGood), (String crlf).

	"result := result, text asString."

	(text asString) linesDo: [ :line |
		result := result, line, String crlf.
	].

	width := 80.

	result := result, (Character value: 12) asString.

	(1 to: width) do: [ :x |
		result := result, '-'.
	].

	result := result, String crlf.

	(1 to: list getListSize) do: [ :c |
		item := list getListItem: c.
		item := (item padded: #right to: (width - 3) with: Character space).
		(list selectedRow == c) ifTrue: [
			result := result, '| ',
				(self colorize: item with: '0;42').
		] ifFalse: [
			result := result, '| ',
				(self colorize: item with: '0;32').
		].

		result := result, '|', String crlf.

	].

	(1 to: width) do: [ :x |
		result := result, '-'.
	].

	self send: result.

