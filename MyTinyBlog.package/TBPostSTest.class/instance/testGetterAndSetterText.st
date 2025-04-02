tests
testGetterAndSetterText

	| tmp1 |
	tmp1 := TBPostS new.
	tmp1 text: 'Pepe'.
	self assert: tmp1 text equals: 'Pepe'