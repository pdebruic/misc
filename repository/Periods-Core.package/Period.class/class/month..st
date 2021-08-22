instance creation
month: aDateOrTimeStamp
	"Answer a new instance with for the period defined by the argument's month."

	^ self
		from:
			(self dateAndTimeClass year: aDateOrTimeStamp year month: aDateOrTimeStamp monthIndex day: 1)
		to:
			(self dateAndTimeClass
				year: aDateOrTimeStamp year
				month: aDateOrTimeStamp monthIndex
				day: aDateOrTimeStamp daysInMonth)