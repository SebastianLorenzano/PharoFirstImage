initialization
current

	          ^ uniqueInstance
		            ifNil: [ uniqueInstance := self new ]
		            ifNotNil: [ uniqueInstance ]