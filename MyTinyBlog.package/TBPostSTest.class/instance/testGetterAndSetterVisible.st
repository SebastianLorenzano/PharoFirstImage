tests
testGetterAndSetterVisible

	          | tmp1 |
	          tmp1 := TBPostS new.
	          tmp1 visible: true.
	          self assert: tmp1 visible equals: true