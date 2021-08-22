as yet unclassified
subgroupAt: anObject ifAbsent: aBlock

	^self subgroups detect: [ :one | one subject = anObject ] ifNone: aBlock