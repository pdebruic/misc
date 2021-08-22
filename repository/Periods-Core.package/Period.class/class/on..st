instance creation
on: aDateOrTimeStamp 
	"Answer a new instance of the receiver holding the period in wich aDateOrTimeStamp is included."

	^self from: (self beginningFrom: aDateOrTimeStamp) to: (self endFrom: aDateOrTimeStamp)