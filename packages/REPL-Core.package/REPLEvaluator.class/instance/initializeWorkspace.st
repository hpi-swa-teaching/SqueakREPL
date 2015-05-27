initialize-release
initializeWorkspace
		| aStringHolder |

	aStringHolder := REPLWorkspace 
  		new textContents: ('"This is your custom workspace in the REPL environment."') 
  		withSqueakLineEndings.


	self workspace: aStringHolder.
  	
	self workspaceWindow: (self workspace openLabel: 'REPL Workspace').