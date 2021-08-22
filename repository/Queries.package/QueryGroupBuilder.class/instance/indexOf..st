as yet unclassified
indexOf: node
	"Answer the index of node in the chain of the receiver.
	Answer 0 if node is not present in the chain of the receiver."
	
	| elem idx |
	idx := 1.
	elem := self.
	[elem subGroupBuilder notNil and: [elem ~= node]]
		whileTrue: [
			elem := elem subGroupBuilder.
			idx := idx + 1].
	^elem = node ifTrue: [idx] ifFalse: [0]