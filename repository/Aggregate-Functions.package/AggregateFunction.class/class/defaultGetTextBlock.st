as yet unclassified
defaultGetTextBlock
	"Answer the default get text block for instances of the receiver.
	The first argument is the evaluation of the function and the second
	value is the aspect which requires the display value."
	
	^[:value :aspect | aspect converter convertFromLeftToRight: value]