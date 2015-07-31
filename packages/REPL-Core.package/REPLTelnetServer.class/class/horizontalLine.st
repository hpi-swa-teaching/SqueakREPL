defaults
horizontalLine
 	"Answer horizontal line in ASCII representation."

	| assembledLine |
	assembledLine := ''.
	(1 to: self width) do: [ :x | assembledLine := assembledLine, '-' ].
	^ assembledLine, String crlf.