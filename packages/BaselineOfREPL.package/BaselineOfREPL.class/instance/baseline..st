baseline
baseline: spec 
	<baseline>

	spec
		for: #common
		do: [spec package: 'REPL-Core';
				
				package: 'REPL-Tests'
				with: [spec requires: #('default' )].
			spec group: 'default' with: #('REPL-Core' );
				 group: 'Tests' with: #('REPL-Tests' );
				 group: 'TravisCI' with: #('Tests' )]