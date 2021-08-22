scheduling
do: aBlock at: when
	^ self do: aBlock at: when every: (Duration days: 1)