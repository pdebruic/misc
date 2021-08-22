public
unionAll: aCollection
	"Answer a collection of periods which results from the union of the receiver with all
	of the periods in aCollection."

	| stream union periods prev  |
	union := OrderedCollection new.
	stream := (self limitsWithAllIn: aCollection) readStream.
	[ stream atEnd ] whileFalse: [ | point curr |
		point := stream next.
		stream atEnd  
			ifTrue: [union add: prev]
			ifFalse: [curr := Period from: point to: stream peek.
				((aCollection copyWith: self) detect: [:one | one overlaps: curr ] ifNone: []) notNil	
					ifTrue: [
						prev isNil ifTrue: [prev := curr ].
						(curr overlaps: prev inclusive: true) 
							ifTrue: [prev := prev merge: curr	]
							ifFalse: [union add: prev. prev := nil ]
					]
					ifFalse: [union add: prev. prev := nil]
			]
	].
	^union reject: [:each | each isNil]