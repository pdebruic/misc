as yet unclassified
value: aCollection
	"Answer the receiver's value for the argument aCollection."

	^((aCollection select: [:each | each isNullNumber not])
		asSortedCollection: [:a : b | a ifNil: [false] ifNotNil: [b ifNil: [true] ifNotNil: [a < b]]]) ifEmpty: [nil] ifNotEmpty: [:v | v first]