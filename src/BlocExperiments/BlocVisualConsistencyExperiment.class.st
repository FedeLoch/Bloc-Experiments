Class {
	#name : 'BlocVisualConsistencyExperiment',
	#superclass : 'BlocExperiment',
	#category : 'BlocExperiments',
	#package : 'BlocExperiments'
}

{ #category : 'running' }
BlocVisualConsistencyExperiment >> property: receiver arguments: arguments result: result [

	^ result class = AeCairoImageSurface
]

{ #category : 'running' }
BlocVisualConsistencyExperiment >> runCampaign [

	| runner |
	
	runner := self getRunner.
	runner guidedByScore.
	
	^ runner run
	
]

{ #category : 'running' }
BlocVisualConsistencyExperiment >> score: receiver arguments: arguments result: result [

	^ (UmeBlocRender renderComparison: arguments first) second
]
