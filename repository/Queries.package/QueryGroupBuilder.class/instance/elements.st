as yet unclassified
elements
	"Answer the linked collection of the receiver as a plain collection."
	
	| answer |
	answer := OrderedCollection with: self.
	self subGroupBuilder ifNotNil: [:sub | answer addAll: sub elements].
	^answer