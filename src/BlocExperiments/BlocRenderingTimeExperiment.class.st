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
	runner guidedByScore.
	
	^ runner run
	
]

{ #category : 'running' }
BlocRenderingTimeExperiment >> score: receiver arguments: arguments result: result [

	| element times |
		element := arguments first.
		times := { BARenderer new. CPRendererWithPlugin new }
		collect: [ :renderer |
				element removeFromParent.
				[ UmeBlocRender render: element with: renderer ] timeToRun asMilliSeconds
		].

	^ (times first - times second) abs
]
