Class {
	#name : 'TBBlogS',
	#superclass : 'Object',
	#instVars : [
		'posts'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : 'MyTinyBlog-Core',
	#package : 'MyTinyBlog',
	#tag : 'Core'
}

{ #category : 'initialization' }
TBBlogS class >> createDemoPosts [
"TBBlog createDemoPosts"
self current writeBlogPost: ((TBPostS title: 'Welcome in TinyBlog' text:
'TinyBlog is a small blog engine made with Pharo.' category:
'TinyBlog') visible: true);
writeBlogPost: ((TBPostS title: 'Report Pharo Sprint' text:
'Friday, June 12 there was a Pharo sprint / Moose dojo. It was a
nice event with more than 15 motivated sprinters. With the help
of candies, cakes and chocolate, huge work has been done'
category: 'Pharo') visible: true);
writeBlogPost: ((TBPostS title: 'Brick on top of Bloc -
Preview' text: 'We are happy to announce the first preview
version of Brick, a new widget set created from scratch on top
of Bloc. Brick is being developed primarily by Alex Syrel
(together with Alain Plantec, Andrei Chis and myself), and the
work is sponsored by ESUG.
Brick is part of the Glamorous Toolkit effort and will provide
the basis for the new versions of the development tools.'
category: 'Pharo') visible: true);
writeBlogPost: ((TBPostS title: 'The sad story of unclassified
blog posts' text: 'So sad that I can read this.') visible: true);
writeBlogPost: ((TBPostS title: 'Working with Pharo on the
Raspberry Pi' text: 'Hardware is getting cheaper and many new
small devices like the famous Raspberry Pi provide new
computation power that was one once only available on regular
desktop computers.' category: 'Pharo') visible: true)

]

{ #category : 'initialization' }
TBBlogS class >> current [

	          ^ uniqueInstance
		            ifNil: [ uniqueInstance := self new ]
		            ifNotNil: [ uniqueInstance ]
]

{ #category : 'initialization' }
TBBlogS class >> initialize [

	          self reset
]

{ #category : 'initialization' }
TBBlogS class >> reset [

	          uniqueInstance := nil
]

{ #category : 'double dispatch' }
TBBlogS >> addPostToBlog: arg1 [

	          posts add: arg1
]

{ #category : 'accessing' }
TBBlogS >> allBlogPosts [
	^ posts
]

{ #category : 'accessing' }
TBBlogS >> allBlogPostsFromCategory: aCategory [ 
	^ posts select: [ :p | p category = aCategory ]
]

{ #category : 'accessing' }
TBBlogS >> allCategories [
^ (self allBlogPosts collect: [ :p | p category ]) asSet
]

{ #category : 'accessing' }
TBBlogS >> allVisibleBlogPosts [
	^ posts select: [ :p | p isVisible ]
]

{ #category : 'accessing' }
TBBlogS >> allVisibleBlogPostsFromCategory: aCategory [ 
^ posts select: [ :p | p category = aCategory and: [ p isVisible ] ]

]

{ #category : 'initialization' }
TBBlogS >> initialize [

	          super initialize.
	          posts := OrderedCollection new
]

{ #category : 'accessing' }
TBBlogS >> post [
	^ (self allBlogPosts collect: [ :p | p category]) asSet 
]

{ #category : 'accessing' }
TBBlogS >> posts [

	          ^ posts
]

{ #category : 'accessing' }
TBBlogS >> removeAllPosts [

	          posts := OrderedCollection new
]

{ #category : 'accessing' }
TBBlogS >> size [
	          ^ posts size
]

{ #category : 'accessing' }
TBBlogS >> writeBlogPost: arg1 [

	          arg1 addToBlog: self
]
