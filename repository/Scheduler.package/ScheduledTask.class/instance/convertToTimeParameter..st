private
convertToTimeParameter: parameter
	^ [ parameter asStafferDateAndTime ]
		on: Error
		do: [ DateTime readFrom: parameter readStream ]