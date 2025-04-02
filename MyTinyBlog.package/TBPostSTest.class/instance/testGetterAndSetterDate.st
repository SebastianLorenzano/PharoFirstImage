tests
testGetterAndSetterDate

	| tmp1 tmp2 |
	tmp2 := Date today addDays: 2.
	tmp1 := TBPostS new.
	tmp1 date: tmp2.
	self assert: tmp1 date equals: tmp2