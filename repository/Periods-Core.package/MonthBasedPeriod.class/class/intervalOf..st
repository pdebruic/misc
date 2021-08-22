private
intervalOf: aDateOrTimeStamp 
	"Answer the interval of the year in wich aDateOrTimeStamp is included."
	
	^self yearIntervals detect: [:one | one includes: aDateOrTimeStamp monthIndex]