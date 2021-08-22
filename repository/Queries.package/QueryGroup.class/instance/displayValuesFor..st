as yet unclassified
displayValuesFor: anOAAspect
	"Private - Answer a Collection of display values of the receiver's elements."
	"#Note: This method is not defined in terms of #displayValuesFor:withArguments for performance reasons."
	
	^self allConcreteElements collect: [:each | anOAAspect displayValue: each]