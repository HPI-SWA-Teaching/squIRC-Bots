parsing
parseName: name
	"check if the given name is in the list of accepted names"
	
	^(names includes: name)