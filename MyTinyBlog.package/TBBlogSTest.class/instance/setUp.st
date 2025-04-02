tests
setUp

	blog := TBBlogS current.
	blog removeAllPosts.
	first := TBPostS
		         title: 'Example Title'
		         text: 'Example text'
		         category: 'Example Category'.
	blog writeBlogPost: first.
	post := (TBPostS
		         title: 'Another Example Title'
		         text: 'Another Example text'
		         category: 'Another Example Category') beVisible.
	blog writeBlogPost: post