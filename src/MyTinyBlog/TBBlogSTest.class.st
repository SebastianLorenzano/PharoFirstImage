Class {
	#name : 'TBBlogSTest',
	#superclass : 'TestCase',
	#instVars : [
		'blog',
		'post',
		'first'
	],
	#category : 'MyTinyBlog-Tests',
	#package : 'MyTinyBlog',
	#tag : 'Tests'
}

{ #category : 'tests' }
TBBlogSTest >> setUp [

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
		                   category: 'Example Category2') beVisible.
]

{ #category : 'running' }
TBBlogSTest >> tearDown [

	          TBBlogS reset
]

{ #category : 'tests' }
TBBlogSTest >> testAllBlogPosts [
	self assert: blog allBlogPosts size equals: 1.
	blog writeBlogPost: post.
	self assert: blog allBlogPosts size equals: 2
]

{ #category : 'tests' }
TBBlogSTest >> testAllBlogsPostsFromCategory [
	self assert: (blog allVisibleBlogPostsFromCategory: 'Example Category') size equals: 0.
	blog writeBlogPost: post.
	self assert: (blog allVisibleBlogPostsFromCategory: 'Example Category2') size equals: 1.
]

{ #category : 'tests' }
TBBlogSTest >> testAllCategories [
	blog writeBlogPost: post.
	self assert: (blog allCategories) size equals: 2.
]

{ #category : 'tests' }
TBBlogSTest >> testAllVisibleBlogPosts [
	blog writeBlogPost: post.
	self assert: blog allVisibleBlogPosts size equals: 1
]

{ #category : 'tests' }
TBBlogSTest >> testInitializing [

	          | tmp1 |
	          tmp1 := TBBlogS current.
	          self assert: tmp1 posts isNotNil.
	          TBBlogS reset
]

{ #category : 'tests' }
TBBlogSTest >> testRemoveAllBlogPosts [

	blog removeAllPosts.
	self assert: blog size equals: 0
]

{ #category : 'tests' }
TBBlogSTest >> testSetUp [
	          self assert: (blog posts at: 1) isNotNil.
	          TBBlogS reset
]

{ #category : 'tests' }
TBBlogSTest >> testSize [
				TBBlogS reset.
				blog :=  TBBlogS current.
	          self assert: blog size equals: 0
]

{ #category : 'tests' }
TBBlogSTest >> testTearDown [

	  | tmp1 |
	         self assert: blog isNotNil; tearDown.
				blog := TBBlogS current.
		      self assert: blog size equals: 0 
]

{ #category : 'tests' }
TBBlogSTest >> testUnclassifiedBlogPosts [
	self assert: (blog allBlogPosts select: [ :p | p isUnclassified ]) size equals: 0.
]
