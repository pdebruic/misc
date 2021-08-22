public
includes: aDateOrTimeStamp
	"Answer true if the receiver includes aDateOrTimeStamp in its elapsed period."

	^aDateOrTimeStamp asDateTime between: self beginning and: self end