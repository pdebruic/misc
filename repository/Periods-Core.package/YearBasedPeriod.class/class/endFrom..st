public
endFrom: aDateOrTimeStamp 
	"Answer the date or timeStamp corresponding to the last second in the receiver's period."

	^self dateAndTimeClass 
		year: aDateOrTimeStamp year 
		month: 12
		day: (Month daysInMonth: 12 forYear: aDateOrTimeStamp year)
		hour: 23
		minute: 59
		second: 59 