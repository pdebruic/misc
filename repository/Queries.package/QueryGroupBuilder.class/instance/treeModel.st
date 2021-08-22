as yet unclassified
treeModel
	
	^(TreeModel roots: (Array with: self))
		childrenBlock: [:v | v subGroupBuilder ifNil: [#()] ifNotNil: [:value | Array with: value]];
		hasChildrenBlock: [:v | v subGroupBuilder notNil];
		yourself