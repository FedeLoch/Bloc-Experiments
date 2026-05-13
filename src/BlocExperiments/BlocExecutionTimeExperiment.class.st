Class {
	#name : 'BlocExecutionTimeExperiment',
	#superclass : 'BlocExperiment',
	#category : 'BlocExperiments',
	#package : 'BlocExperiments'
}

{ #category : 'running' }
BlocExecutionTimeExperiment >> property: receiver arguments: arguments result: result [

	^ result class = AeCairoImageSurface
]

{ #category : 'running' }
BlocExecutionTimeExperiment >> runCampaign [

	| runner |
	
	runner := self getRunner.
	runner guidedByExecutionTime.
	
	^ runner run
	
]

{ #category : 'running' }
BlocExecutionTimeExperiment >> score: receiver arguments: arguments result: result [

	^ 0
	"TODO: the difference between both renderers render time"
]
