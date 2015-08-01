escaping
escape: aString
	"Answer aString as an escape code."

	^ (Character escape asString , aString) asByteArray