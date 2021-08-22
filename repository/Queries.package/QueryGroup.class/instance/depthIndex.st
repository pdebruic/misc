as yet unclassified
depthIndex
	"Answer an Integer which is the current depth index of the receiver into the parent chain."
	
	| prev idx |
	idx := 1.
	prev := self parent.
	[prev notNil] whileTrue: [
		idx := idx + 1.
		prev := prev parent
	].
	^idx