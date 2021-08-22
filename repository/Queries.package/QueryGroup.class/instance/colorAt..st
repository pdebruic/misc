as yet unclassified
colorAt: idx
	"Private - Answer the color of the receiver."
	
	| colors |
	colors := self class colors: self maxDepth + 1 "1 more for leaf nodes".
	^colors at: (idx <= colors size ifTrue: [idx] ifFalse: [colors size \\ idx + 1])