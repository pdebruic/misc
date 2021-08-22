public
displayOn: aStream 
	"Prints a user readable textual representation of receiver on aStream."

	aStream
		nextPutAll: self beginning date monthName capitalized;
		nextPutAll: ' -> ';
		nextPutAll: self end date monthName capitalized;
		nextPutAll: ' - ';
		nextPutAll: self beginning date year displayString