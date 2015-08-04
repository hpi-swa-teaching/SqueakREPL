initializing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'VB-Regex' with: 
					[ spec repository: 'http://www.squeaksource.com/Regex' ];
				package: 'Ocompletion' with: 
					[ spec repository: 'http://www.squeaksource.com/OCompletion' ].
			spec
				package: 'REPL-Core' with: [ spec requires: #('VB-Regex' 'Ocompletion') ];
				package: 'REPL-Tests' with: [ spec requires: #('default') ];
				group: 'default' with: #('REPL-Core');
				group: 'Tests' with: #('REPL-Tests');
				group: 'TravisCI' with: #('Tests') ]