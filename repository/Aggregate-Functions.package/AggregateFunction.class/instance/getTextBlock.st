as yet unclassified
getTextBlock
	"Answer the value of the receiver's ''getTextBlock'' instance variable."

	getTextBlock ifNil: [getTextBlock := self class defaultGetTextBlock].
	^getTextBlock