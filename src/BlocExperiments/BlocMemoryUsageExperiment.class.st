Class {
	#name : 'BlocMemoryUsageExperiment',
	#superclass : 'BlocExperiment',
	#category : 'BlocExperiments',
	#package : 'BlocExperiments'
}

{ #category : 'running' }
BlocMemoryUsageExperiment >> property: receiver arguments: arguments result: result [

	^ result class = AeCairoImageSurface
]

{ #category : 'running' }
BlocMemoryUsageExperiment >> runCampaign [

	| runner |
	
	runner := self getRunner.
	runner guidedByScore.
	^ runner run
	
]

{ #category : 'running' }
BlocMemoryUsageExperiment >> score: receiver arguments: arguments result: result [

	^ 1
]
