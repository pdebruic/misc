as yet unclassified
recreateFrom: newAspects 
	"Answer a new instance of the receiver's class recreated using the newAspects Collection as
	valuables."

	| answer |
	newAspects ifEmpty: [^QueryGroupBuilder notGrouped].

	"Mmmm we need to rebuild taking account of each periodGroupingPolicy."
	answer := self class groupBy: (newAspects collect: [:each | each asIqGroupingPolicy]).
	self asCollectionOfGroupBuilder do: 
			[:oldBuilder | 
			(answer withDescription: oldBuilder groupingPolicyValuable) 
				ifNotNil: 
					[:newBuilder | 
					oldBuilder hasDateAndTimeType ifTrue: [newBuilder groupingPolicy: oldBuilder groupingPolicy]]].
	^answer