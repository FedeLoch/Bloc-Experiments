Class {
	#name : 'BaselineOfBlocExperiments',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfBlocExperiments',
	#package : 'BaselineOfBlocExperiments'
}

{ #category : 'baselines' }
BaselineOfBlocExperiments >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec baseline: 'Ume' with: [ spec repository: 'github://FedeLoch/Ume:main' ].
		spec baseline: 'CairoPlugin' with: [ spec repository: 'github://tesonep/CairoPlugin/src' ].
		spec baseline: 'Bloc' with: [ spec repository: 'github://pharo-graphics/Bloc:improve-rendering/src' ].
		
		spec package: 'BlocExperiments' with: [ spec requires: #( 'Ume' 'Bloc' 'CairoPlugin' ) ].
	]
]
