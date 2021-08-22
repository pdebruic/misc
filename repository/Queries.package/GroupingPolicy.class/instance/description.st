as yet unclassified
description
	"Answer the value of the receiver's ''description'' instance variable."

	^description displayString expandMacrosWith: (self valuable ifNil: [''] ifNotNil: [:v | v label])