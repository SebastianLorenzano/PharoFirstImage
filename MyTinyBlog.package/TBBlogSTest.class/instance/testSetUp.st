tests
testSetUp

	          self setUp.
	          blog := TBBlogS current.
	          self
		          assert: (blog posts at: 1) isNotNil;
		          assert: (blog posts at: 2) isNotNil.
	          TBBlogS reset