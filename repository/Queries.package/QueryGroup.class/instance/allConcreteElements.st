as yet unclassified
allConcreteElements
	"Answer a collection with containing all concrete elements of the receiver.
	NOT Subgroups."
	
	| result |
	result := self elements species new.
	self elements do: [:each | (each isKindOf: self class) ifTrue: [result addAll: each allConcreteElements] ifFalse: [result add: each]].
	^result