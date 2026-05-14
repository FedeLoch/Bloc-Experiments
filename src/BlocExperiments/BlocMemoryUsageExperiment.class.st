Class {
	#name : 'BlocMemoryUsageExperiment',
	#superclass : 'BlocExperiment',
	#category : 'BlocExperiments',
	#package : 'BlocExperiments'
}

{ #category : 'running' }
BlocMemoryUsageExperiment >> campaignDuration [

	"TODO: delete me"
	^ 10 minutes 
]

{ #category : 'running' }
BlocMemoryUsageExperiment >> property: receiver arguments: arguments result: result [

	^ result class = AeCairoImageSurface
]

{ #category : 'running' }
BlocMemoryUsageExperiment >> runCampaign [

	| runner |
	
	runner := self getRunner.
	runner guidedByAllocatedMemory.
	^ runner run
	
]

{ #category : 'running' }
BlocMemoryUsageExperiment >> score: receiver arguments: arguments result: result [

	^ 1
]
