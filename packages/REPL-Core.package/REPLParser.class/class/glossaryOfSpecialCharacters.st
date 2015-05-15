filtering
glossaryOfSpecialCharacters
	"Answer the list of special characters (an instance of Dictionary) to be filtered out during the parsing process."

	^ Dictionary new
		at: $( put: $);
		at: ${ put: $};
		at: $[ put: $];
		yourself