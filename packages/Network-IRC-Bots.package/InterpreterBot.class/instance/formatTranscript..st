private
formatTranscript: anOrderedCollection
	"Formats a given Transcript, represented by anOrderedCollection, according to maxCharCount."

	| result |

	result := OrderedCollection new.

	anOrderedCollection do: [ :line |
		result addAllLast: (self splitString: line each: maxCharCount)
	 ].

	^result.