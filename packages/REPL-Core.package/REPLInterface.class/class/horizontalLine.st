as yet unclassified
horizontalLine

	| result |
	result := ''.

	(1 to: self width) do: [ :x |
		result := result, '-'.
	].

	^ result, String crlf.