as yet unclassified
basicSubGroup: aCollection arguments: anArray
	"Private - Answer the result of group aCollection using the receiver's subGroupBuilder.
	DO NOT Redefine."

	^self subGroupBuilder notNil
		ifTrue: [aCollection do: [:group | group setElements: (subGroupBuilder group: group elements arguments: anArray) parent: group]]
		ifFalse: [aCollection]