baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'SmalltalkREPL-Core';
                package: 'SmalltalkREPL-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('SmalltalkREPL-Core');
                group: 'Tests' with: #('SmalltalkREPL-Tests');
                group: 'TravisCI' with: #('Tests') ]