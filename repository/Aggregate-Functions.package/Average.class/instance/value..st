as yet unclassified
value: aCollection
	"Answer the receiver's value for the argument aCollection."

	^((self class named: 'Suma') value: aCollection) divideBy: (aCollection select: [:each | each isNullNumber not]) size