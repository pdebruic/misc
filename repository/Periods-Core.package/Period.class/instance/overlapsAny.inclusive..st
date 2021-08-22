public
overlapsAny: aCollection inclusive: aBoolean
	"Answer true if the receiver overlaps with any period in aCollection.
	If aBoolean is true evaluates to true if any limit of the receiver 
	is equal to any other limit in each element in aCollection."

	^(aCollection detect: [:one | one overlaps: self inclusive: aBoolean] ifNone: [nil]) notNil

