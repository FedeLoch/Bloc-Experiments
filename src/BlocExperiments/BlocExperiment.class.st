Class {
	#name : 'BlocExperiment',
	#superclass : 'Object',
	#category : 'BlocExperiments',
	#package : 'BlocExperiments'
}

{ #category : 'running' }
BlocExperiment >> argumentGenerators [

	^ {
		self corpusGenFrom: self initialSeedElement mpi: 3 mutators: {
			UmeOGGrammarDerivationMutator from: MateBlocGrammarByLang new
		}
	}
]

{ #category : 'running' }
BlocExperiment >> campaignDuration [

	^ 10 minutes
]

{ #category : 'running' }
BlocExperiment >> constantGen: obj [

	^ UmeConstantGenerator new value: obj
]

{ #category : 'running' }
BlocExperiment >> corpusGenFrom: seed mpi: mpi mutators: mutators [

	^ UmeCorpusGenerator new
		  seeds: { seed };
		  mutationsPerIteration: mpi;
		  mutators: mutators;
		  heuristic: UmePickBestElementDifferenceHeuristic new
]

{ #category : 'running' }
BlocExperiment >> getRunner [

	^ UmeRunner test: self schema for: self campaignDuration
]

{ #category : 'running' }
BlocExperiment >> initialSeedElement [

	^ BlElement new background: Color blue; extent: 1000@1000
]

{ #category : 'running' }
BlocExperiment >> property: receiver arguments: arguments result: result [

	self subclassResponsibility
]

{ #category : 'running' }
BlocExperiment >> receiverGenerator [ 

	^ self constantGen: UmeBlocRender
]

{ #category : 'running' }
BlocExperiment >> run [

	<script: 'self new run'>
	self runCampaign inspect
]

{ #category : 'running' }
BlocExperiment >> schema [

	^ UmeSchema new
		receiverConstraint: self receiverGenerator;
		argumentConstraints: self argumentGenerators;
		method: self targetMethod;
		score: [ :rcv :args :res | self score: rcv arguments: args result: res ];
		property: [ :rcv :args :res | self property: rcv arguments: args result: res ].
]

{ #category : 'running' }
BlocExperiment >> score: receiver arguments: arguments result: result [

	self subclassResponsibility 
]

{ #category : 'running' }
BlocExperiment >> targetMethod [

	^ UmeBlocRender class >> #render: 
]
