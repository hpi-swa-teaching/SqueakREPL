| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'SmalltalkREPL';
  repository: 'filetree://', gitPath, '/SWT15-Project-13/packages';
  get.

Metacello new
  baseline: 'SmalltalkREPL';
  repository: 'filetree://', gitPath, '/SWT15-Project-13/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfSmalltalkREPL' )
  value: 'TravisCISuccess.txt'
  value: 'TravisCIFailure.txt'.
