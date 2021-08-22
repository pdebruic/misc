as yet unclassified
basicGroup: aCollection arguments: anArray
	"Private - Answer a collection of Group as the result of
	executing the receiver.
	DO NOT Redefine."
	
	^aCollection ifEmpty: [OrderedCollection new] ifNotEmpty: [self subGroup: (self groupingPolicy group: aCollection arguments: anArray) arguments: anArray]