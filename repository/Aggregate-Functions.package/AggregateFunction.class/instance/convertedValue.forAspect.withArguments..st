as yet unclassified
convertedValue: aCollection forAspect: anOAAspect withArguments: anArray
	"Answer the receiver's value for the argument aCollection evaluating the aspect anOAAspect with the arguments included in anArray."
	
	^self value: (aCollection collect: [:each | anOAAspect convertedValue: each withArguments: anArray])