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

	|comparison|
	comparison := UmeBlocRender renderComparison: arguments first.

	^ comparison second "] on: Error do: [ :e | 1 halt. 0 ]"
]
