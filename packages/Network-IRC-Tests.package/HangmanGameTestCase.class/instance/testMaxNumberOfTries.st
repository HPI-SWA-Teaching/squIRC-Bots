as yet unclassified
testMaxNumberOfTries

	| game |
	game := HangmanGame new.
	
	self should: [ game maxNumberOfTries = 7 ].
	game maxNumberOfTries: 20.
	self should: [ game maxNumberOfTries = 20 ].