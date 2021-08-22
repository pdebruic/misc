as yet unclassified
named: aString
	"Answer the instance named aString.
	If not exists signals an Error."
	
	^self functions detect: [:each | each name = aString]