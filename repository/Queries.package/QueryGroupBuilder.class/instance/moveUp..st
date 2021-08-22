as yet unclassified
moveUp: anIqGroupBuilder
	"Answer a copy of the receiver with anIqGroupBuilder moved up one position in the receiver's
	linked list of group builders."
	
	| current idx |
	idx := self indexOf: anIqGroupBuilder.
	current := self elements.
	current swap: idx with: idx - 1.
	^self linkElements: current