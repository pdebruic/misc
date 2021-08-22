as yet unclassified
includesSelector: aSymbol
	"Answer true if the receiver or its sub group builders includes the selector
	<aSymbol> in its grouping policy."
	
	^(self withSelector: aSymbol) notNil