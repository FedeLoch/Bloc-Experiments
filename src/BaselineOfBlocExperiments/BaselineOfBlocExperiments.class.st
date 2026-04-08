Class {
	#name : 'BaselineOfBlocExperiments',
	#superclass : 'Object',
	#category : 'BaselineOfBlocExperiments',
	#package : 'BaselineOfBlocExperiments'
}

{ #category : 'baselines' }
BaselineOfBlocExperiments >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec baseline: 'Ume' with: [ spec repository: 'github://FedeLoch/Ume:main' ].

		spec package: 'BlocExperiments' with: [ spec requires: #( 'Ume' ) ].
	]
]
