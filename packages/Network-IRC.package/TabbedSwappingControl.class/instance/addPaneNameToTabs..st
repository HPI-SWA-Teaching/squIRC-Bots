private
addPaneNameToTabs: aString 
	"We're going to add the button too."
	| btn |
	self swapper isNil
		ifTrue: [^ nil].
	btn := PluggableButtonMorph
				on: [self showPaneNamed: aString]
				getState: nil
				action: #value.
	btn color: Color white;
		 hResizing: #shrinkWrap;
		 vResizing: #spaceFill;
		 label: aString;
		 name: self knownName, '.', aString;
		 onColor: Color white offColor: Color white;
		 feedbackColor: self tabFeedbackColor.
	self swapper addMorphBack: btn.
	tabs add: aString.
	^btn