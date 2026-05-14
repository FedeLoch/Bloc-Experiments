Class {
	#name : 'BlocFPSExperiment',
	#superclass : 'BlocExperiment',
	#category : 'BlocExperiments',
	#package : 'BlocExperiments'
}

{ #category : 'running' }
BlocFPSExperiment >> property: receiver arguments: arguments result: result [

	^ result class = AeCairoImageSurface
]

{ #category : 'running' }
BlocFPSExperiment >> runCampaign [

	| runner |
	
	runner := self getRunner.
	runner guidedByScore.
	
	^ runner run
	
]

{ #category : 'running' }
BlocFPSExperiment >> score: receiver arguments: arguments result: result [

	| element times |
	
	element := arguments first.
	times := { BARenderer new. CPRendererWithPlugin new }
	collect: [ :renderer | UmeBlocRender fps: element with: renderer ].

	^ (times first - times second) abs
]
