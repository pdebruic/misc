as yet unclassified
withSelector: aSymbol
	"Answer the builder which includes aSymbol as its valuable if absent answer nil."
	
	(self groupingPolicy includesSelector: aSymbol) ifTrue: [^self].
	self subGroupBuilder ifNotNil: [:sub | ^sub withSelector: aSymbol].
	^nil