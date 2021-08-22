public
hash
	"Answer the hasing integer of receiver."

	^self class hash + (self beginning hash bitXor: self end hash)