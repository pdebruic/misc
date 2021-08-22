as yet unclassified
basicDisplayForAspect: anOAAspect withArguments: anArray 
	"Private - Display the receiver depending on anOAAspect and anArray."

	^anOAAspect value: self policy: OAAggregateQueryGroupPolicy forDisplay withArguments: anArray