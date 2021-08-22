as yet unclassified
allElements
	"Answer a collection with containing all elements of the receiver
	and his elements."
	
	| result |
	result := self elements species new.
	result addAll: self elements.
	self elements do: [:each | (each isKindOf: self class) ifTrue: [result addAll: each allElements]].
	^result