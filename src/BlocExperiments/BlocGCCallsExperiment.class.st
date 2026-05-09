Class {
	#name : 'BlocGCCallsExperiment',
	#superclass : 'BlocExperiment',
	#category : 'BlocExperiments',
	#package : 'BlocExperiments'
}

{ #category : 'running' }
BlocGCCallsExperiment >> property: receiver arguments: arguments result: result [

	^ result class = AeCairoImageSurface
]

{ #category : 'running' }
BlocGCCallsExperiment >> runCampaign [

	| runner |
	
	runner := self getRunner.
	runner guidedByGCs.
	^ runner run
	
]

{ #category : 'running' }
BlocGCCallsExperiment >> score: receiver arguments: arguments result: result [

	^ 1
]
