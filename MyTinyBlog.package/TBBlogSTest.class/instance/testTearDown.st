tests
testTearDown

	          | tmp1 |
	          TBBlogS reset.
	          blog := nil.
	          blog := TBBlogS current.
	          self
		          assert: blog isNotNil;
		          tearDown;
		          assert: blog isNil