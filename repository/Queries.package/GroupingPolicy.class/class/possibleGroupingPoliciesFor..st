as yet unclassified
possibleGroupingPoliciesFor: anOAAspect
	"Answer the possible grouping policies for anOAAspect."
	
	^self visibleAllSubclasses select: [:groupingPolicyClass | groupingPolicyClass canHandle: anOAAspect]