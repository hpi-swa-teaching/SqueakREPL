initialize-release
initializeContext 
	self context: (REPLContext newFor: self on: nil with: REPLParser new)
