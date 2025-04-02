tests
testInitializing

	          | tmp1 |
	          tmp1 := TBBlogS current.
	          self assert: tmp1 posts isNotNil.
	          TBBlogS reset