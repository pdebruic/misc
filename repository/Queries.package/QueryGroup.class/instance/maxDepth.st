as yet unclassified
maxDepth
	"Answer the max depth in the receiver chain."
	
	| depth |
	depth := self depthIndex.
	^self elements
		ifEmpty: [depth]
		ifNotEmpty: [:elems | (elems first isKindOf: self class) ifTrue: [elems first maxDepth] ifFalse: [depth]]
	