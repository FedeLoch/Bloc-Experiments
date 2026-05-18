Class {
	#name : 'BlocMinFPSExperiment',
	#superclass : 'BlocFPSExperiment',
	#category : 'BlocExperiments',
	#package : 'BlocExperiments'
}

{ #category : 'running' }
BlocMinFPSExperiment >> score: receiver arguments: arguments result: result [

	| element fps |
	
	element := arguments first.
	fps := UmeBlocRender fps: element with: CPRendererWithPlugin new.

	^ (fps * -1)
]
