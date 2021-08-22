as yet unclassified
group: aCollection by: groupingValuable arguments: anArray

	| groups absentValue |
	absentValue := (groupingValuable isSymbol | groupingValuable isBlock) ifTrue: [ 'Ninguno' ] ifFalse: [ valuable undefined ].
	groups := Dictionary  new.
	aCollection do: [ :each | 
		| key |
		key := groupingValuable value: each withArguments: anArray.
		(groups at: (key ifNil: [absentValue]) ifAbsentPut: [self newGroupOn: key])
			addElement: each].
	^groups values asOrderedCollection