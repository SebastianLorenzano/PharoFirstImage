tests
testGetterAndSetterCategory

	          | tmp1 |
	          tmp1 := TBPostS new.
	          tmp1 category: 'Pepe'.
	          self assert: tmp1 category equals: 'Pepe'