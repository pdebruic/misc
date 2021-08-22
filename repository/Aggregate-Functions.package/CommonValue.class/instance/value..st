as yet unclassified
value: aCollection
	"Answer the receiver's value for the argument aCollection."

	^aCollection asSet size = 1 ifTrue: [aCollection first] ifFalse: [nil]