comparing
isGreatherThan: aClass
	"Private - Answer whether the receiver has an inferior frequency than aClass."

	^ (self on: Date today) durationAsSeconds > (aClass on: Date today) durationAsSeconds