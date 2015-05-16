filtering
glossaryOfSpecialCharacters
	"Answer the glossary of special characters to be filtered out during the parsing process."

	^ Dictionary new
		at: $( put: $);
		at: $[ put: $];
		at: ${ put: $};
		yourself