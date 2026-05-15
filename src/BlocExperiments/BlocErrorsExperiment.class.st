Class {
	#name : 'BlocErrorsExperiment',
	#superclass : 'BlocExperiment',
	#category : 'BlocExperiments',
	#package : 'BlocExperiments'
}

{ #category : 'running' }
BlocErrorsExperiment >> property: receiver arguments: arguments result: result [

	^ result class = AeCairoImageSurface
]

{ #category : 'running' }
BlocErrorsExperiment >> runCampaign [

	| runner |
	
	runner := self getRunner.
	runner guidedByErrors.
	
	^ runner run
	
]

{ #category : 'running' }
BlocErrorsExperiment >> score: receiver arguments: arguments result: result [

	^ 1
]
