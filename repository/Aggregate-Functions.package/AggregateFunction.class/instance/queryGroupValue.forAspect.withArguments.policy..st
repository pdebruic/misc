as yet unclassified
queryGroupValue: aQueryGroup forAspect: anOAAspect withArguments: anArray policy: anOAQueryGroupPolicy
	"Answer the receiver's value for aggregated elements of aQueryGroup evaluating anOAQueryGroupPolicy."
	
	^anOAQueryGroupPolicy
		aggregateFunctionValue: (self value: (anOAQueryGroupPolicy queryGroupValues: aQueryGroup forAspect: anOAAspect withArguments: anArray) )
		forAspect: anOAAspect