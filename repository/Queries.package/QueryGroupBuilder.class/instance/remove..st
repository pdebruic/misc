as yet unclassified
remove: anIqGroupBuilder
	"Answer a copy of the receiver removing anIqGroupBuilder from the linkedList chain of
	GroupBuilder-SubGroupBuilder of the receiver."
	
	| coll |
	coll := self elements.
	coll remove: anIqGroupBuilder ifAbsent: [].
	^self linkElements: coll