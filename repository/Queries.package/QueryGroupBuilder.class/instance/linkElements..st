as yet unclassified
linkElements: collection
	"Answer the first node of the linked list of group builders
	constructed from the argument collection."
	
	| root prev |
	collection do: [:each |
		each basicSubGroupBuilder: nil. "Clearing possible old states."
		root isNil
			ifTrue: [root := prev := each]
			ifFalse: [prev basicSubGroupBuilder: each. prev := each]
	].
	^root