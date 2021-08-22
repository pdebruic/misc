public
compare: anObject with: otherObject testSelector: aSymbol 
	"Private - Compare anObject with otherObject sending a message with
	selector aSymbol."

	^anObject perform: aSymbol with: otherObject