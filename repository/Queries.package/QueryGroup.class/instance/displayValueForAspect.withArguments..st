as yet unclassified
displayValueForAspect: anOAAspect withArguments: anArray 
	"Display the receiver depending on anOAAspect and anArray."

	^self cacheDisplayValue 
		at: anOAAspect
		ifAbsentPut: [self basicDisplayValueForAspect: anOAAspect withArguments: anArray]