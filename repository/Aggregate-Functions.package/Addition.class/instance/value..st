as yet unclassified
value: aCollection
	"Answer the receiver's value for the argument aCollection."

	^aCollection inject: self zeroValue into: [:total :each | [each + total] on: MessageNotUnderstood do: [:ex | ex return: total] ]