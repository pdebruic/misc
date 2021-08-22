as yet unclassified
asCollectionOfGroupBuilder
	"Answer the linked collection of the receiver as a plain collection."
	
	| answer |
	answer := OrderedCollection with: self copy.
	self subGroupBuilder ifNotNil: [:sub | answer addAll: sub asCollectionOfGroupBuilder].
	answer do: [:each | each basicSubGroupBuilder: nil].
	^answer