as yet unclassified
selector
	
	^(self valuable isKindOf: Symbol)
		ifTrue: [self valuable]
		ifFalse: [(self valuable respondsTo: #selector) ifTrue: [self valuable selector]]