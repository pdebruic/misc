public
beginningFrom: aDateOrTimeStamp
	^ self dateAndTimeClass
		year: aDateOrTimeStamp year
		month: aDateOrTimeStamp monthIndex
		day: aDateOrTimeStamp dayOfMonth