public
endFrom: aDateOrTimeStamp
	"Answer the date or timeStamp corresponding to the last second in the receiver's period."

	| monthIndex |
	monthIndex := (self beginningFrom: aDateOrTimeStamp) monthIndex + self periodFactor - 1.
	^ self dateAndTimeClass
		year: aDateOrTimeStamp year
		month: monthIndex
		day: (Month daysInMonth: monthIndex forYear: aDateOrTimeStamp year)
		hour: 23
		minute: 59
		second: 59