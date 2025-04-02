tests
testInitializing

	| tmp1 |
	tmp1 := TBPostS new.
	self
		assert: tmp1 title equals: nil;
		assert: tmp1 text equals: nil;
		assert: tmp1 visible equals: false;
		assert: tmp1 category equals: 'Unclassified'