as yet unclassified
queryGroupValue: aQueryGroup forAspect: anOAAspect withArguments: anArray policy: anOAQueryGroupPolicy
	
	^anOAQueryGroupPolicy
		aggregateFunctionValue: (self value: aQueryGroup)
		forAspect: aQueryGroup valuable