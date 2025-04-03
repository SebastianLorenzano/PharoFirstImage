tests
testGetterAndSetterTitle

	          | tmp1 |
	          tmp1 := TBPostS new.
	          tmp1 title: 'Pepe'.
	          self assert: tmp1 title equals: 'Pepe'