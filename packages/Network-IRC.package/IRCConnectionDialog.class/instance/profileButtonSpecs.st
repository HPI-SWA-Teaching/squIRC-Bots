profiles
profileButtonSpecs
	"tag, selector, button name, help text"
	^ #(	#('new' #addProfile 'addProfile'
					'Add a new profile') 
			#('delete' #deleteProfile 'deleteProfile'
					'Delete the selected profile') 			
			#('edit' #editProfile 'editProfile' 
					'Edit the selected profile')
			#('select' #selectProfile 'selectProfile' 
					'Load the selected profile into your current configuration') 
			#('save current' #saveCurrentToProfile 'saveCurrent' 
					'Save your current configuration to a new profile'))