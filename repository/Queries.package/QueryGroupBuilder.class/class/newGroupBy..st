as yet unclassified
newGroupBy: policies
	"Private - Answer a new instance of the receiver suitable for use
	calling #group: instance message using description
	as the textual representation of the receiver."

	| root prev next |
	policies isEmpty ifTrue: [^self error: 'Not enough policies'].

	policies do: [:each |
		root isNil
			ifTrue: [root := self new groupingPolicy: each. prev := root]
			ifFalse: [prev subGroupBuilder: (next := self new groupingPolicy: each). prev := next]
	].
	^root