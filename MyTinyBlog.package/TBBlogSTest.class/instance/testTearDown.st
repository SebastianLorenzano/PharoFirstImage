tests
testTearDown

	| tmp1 |
	tmp1 := TBBlogS new.
	self
		assert: tmp1 posts isNotNil;
		tearDown;
		assert: tmp1 posts isNil