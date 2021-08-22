as yet unclassified
withDescription: anOAAspect
	"Answer the builder which includes anOAAspect as its valuable if absent answer nil."
	
	(self groupingPolicy includesDescription: anOAAspect) ifTrue: [^self].
	self subGroupBuilder ifNotNil: [:sub | ^sub withDescription: anOAAspect].
	^nil