public
endFrom: aDateOrTimeStamp
	^ ((self beginningFrom: aDateOrTimeStamp) addDays: self periodFactor) - 1 second