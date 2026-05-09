Class {
	#name : 'BlocRenderingTimeExperiment',
	#superclass : 'BlocExperiment',
	#category : 'BlocExperiments',
	#package : 'BlocExperiments'
}

{ #category : 'running' }
BlocRenderingTimeExperiment >> property: receiver arguments: arguments result: result [

	^ result class = AeCairoImageSurface
]

{ #category : 'running' }
BlocRenderingTimeExperiment >> runCampaign [

	| runner |
	
	runner := self getRunner.
	runner guidedByAllocatedMemory.
	
	^ runner run
	
]

{ #category : 'running' }
BlocRenderingTimeExperiment >> score: receiver arguments: arguments result: result [

	1 halt.
	"TODO: the difference between both renderers render time"
]
