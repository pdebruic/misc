as yet unclassified
valuesFor: anOAAspect
	"Private - Answer a Collection of values of the receiver's elements.
	#Note: This method is not defined in terms of #valuesFor:withArguments for performance reasons."
	
	^self allConcreteElements collect: [:each | anOAAspect value: each]