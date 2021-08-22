as yet unclassified
displayValuesFor: anOAAspect withArguments: anArray
	"Private - Answer a Collection of display values of the receiver's elements."
	
	^self allConcreteElements collect: [:each | anOAAspect displayValue: each withArguments: anArray]