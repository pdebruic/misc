as yet unclassified
displayForAspect: anOAAspect withArguments: anArray 
	"Display the receiver depending on anOAAspect and anArray."

	^self cache 
		at: anOAAspect
		ifAbsentPut: [self basicDisplayForAspect: anOAAspect withArguments: anArray]