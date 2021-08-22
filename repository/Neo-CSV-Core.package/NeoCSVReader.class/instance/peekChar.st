private
peekChar
	^ charBuffer
		ifNil: [ 
			"on malformed input put a ?"
			charBuffer := [ readStream next ]
				on: ZnInvalidUTF8
				do: [ $? ] ]