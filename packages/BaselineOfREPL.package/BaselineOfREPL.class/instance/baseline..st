initializing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'REPL-Core';
				package: 'REPL-Tests' with: [ spec requires: #('default') ];
				group: 'default' with: #('REPL-Core');
				group: 'Tests' with: #('REPL-Tests');
				group: 'TravisCI' with: #('Tests') ]