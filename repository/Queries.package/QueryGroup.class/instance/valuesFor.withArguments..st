as yet unclassified
valuesFor: anOAAspect withArguments: anArray
	"Private - Answer a Collection of values of the receiver's elements."

	^self allConcreteElements collect: [:each | anOAAspect value: each withArguments: anArray]