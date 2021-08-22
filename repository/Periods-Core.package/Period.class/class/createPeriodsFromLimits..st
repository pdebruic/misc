operations
createPeriodsFromLimits: aCollection
	"Private - Answer a collection of consecutive periods built using the limits 
	included in aCollection."

	| stream periods |
	periods := OrderedCollection new.
	aCollection notEmpty
		ifTrue: [ stream := aCollection asSortedCollection readStream.
			[ stream atEnd ]
				whileFalse: [ | limit |
					limit := stream next.
					stream atEnd
						ifFalse: [ periods add: (self from: limit to: stream peek) ] ] ].
	^ periods