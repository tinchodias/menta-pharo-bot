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
			self
				teapot: spec;
				roassal2: spec;
				jsonWebToken: spec;
				rfb: spec.
			
			spec package: 'Menta' with: [ spec requires: #('Teapot' 'Roassal2' 'JSONWebToken' 'RFB') ].
			spec group: 'default' with: #('Menta')
			]
]

{ #category : #baselines }
BaselineOfMenta >> jsonWebToken: spec [
	spec 
		baseline: 'JSONWebToken'
		with: [ spec repository: 'github://noha/JSONWebToken:0.3/source' ]
]

{ #category : #baselines }
BaselineOfMenta >> rfb: spec [
	spec
		project: 'RFB'
		with: [
			spec
				className: #ConfigurationOfRFB;
				versionString: '0.65';
				repository: 'http://smalltalkhub.com/mc/PharoExtras/RFB/main/' ]
]

{ #category : #baselines }
BaselineOfMenta >> roassal2: spec [
	spec
		baseline: 'Roassal2'
		with: [ spec repository: 'github://ObjectProfile/Roassal2:master/src' ]
]

{ #category : #baselines }
BaselineOfMenta >> teapot: spec [
	spec
		baseline: 'Teapot'
		with: [ spec repository: 'github://zeroflag/Teapot:v2.6.0/source' ]
]
