Class {
	#name : #BaselineOfMenta,
	#superclass : #BaselineOf,
	#category : #BaselineOfMenta
}

{ #category : #baselines }
BaselineOfMenta >> baseline: spec [
	<baseline>
	spec
		for: #pharo
		do: [ 
			spec
				project: 'Teapot'
				with: [ spec
						className: #ConfigurationOfTeapot;
						versionString: '2.5';
						repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main' ].
			spec package: 'Menta' with: [ spec requires: #('Teapot') ].
			spec group: 'default' with: #('Menta')
			]
]