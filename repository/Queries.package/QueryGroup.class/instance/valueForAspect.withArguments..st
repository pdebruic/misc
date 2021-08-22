as yet unclassified
valueForAspect: anOAAspect withArguments: anArray 
	"Answer the value of the receiver using anOAAspect and anArray as arguments."

	^self cacheValue 
		at: anOAAspect
		ifAbsentPut: [self basicValueForAspect: anOAAspect withArguments: anArray]