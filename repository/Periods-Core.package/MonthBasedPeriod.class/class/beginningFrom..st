public
beginningFrom: aDateOrTimeStamp
	^ self dateAndTimeClass
		year: aDateOrTimeStamp year
		month:
			aDateOrTimeStamp monthIndex
				+ (aDateOrTimeStamp monthIndex - (self intervalOf: aDateOrTimeStamp) start) negated
		day: 1