public
limitsWithAllIn: aCollection
	"Private - Answer a collection of timeStamps which includes the limits
	of receiver and each period in aCollection."

	^((aCollection copyWith: self)
			inject: Set new
			into: [:answer :each | answer addAll: each limits; yourself ]) asSortedCollection asOrderedCollection