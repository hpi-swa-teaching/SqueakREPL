running
createTestFile 
	"Create a test file."

	| fileStream |

	fileStream := StandardFileStream forceNewFileNamed: self class testFileName.
	fileStream nextPutAll: '5+5'.
	fileStream close.