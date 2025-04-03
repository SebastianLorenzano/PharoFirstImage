Class {
	#name : 'TBPostS',
	#superclass : 'Object',
	#instVars : [
		'title',
		'text',
		'category',
		'date',
		'visible'
	],
	#category : 'MyTinyBlog-Core',
	#package : 'MyTinyBlog',
	#tag : 'Core'
}

{ #category : 'instance creation' }
TBPostS class >> title: arg1 text: arg2 [

	          | tmp2 |
	          tmp2 := self new.
	          tmp2
		          title: arg1;
		          text: arg2.
	          ^ tmp2 yourself
]

{ #category : 'instance creation' }
TBPostS class >> title: arg1 text: arg2 category: arg3 [

	          | tmp2 |
	          tmp2 := self title: arg1 text: arg2.
	          tmp2 category: arg3.
	          ^ tmp2 yourself
]

{ #category : 'instance initialization' }
TBPostS class >> unclassifiedTag [

	          ^ 'Unclassified'
]

{ #category : 'accessing' }
TBPostS >> addToBlog: arg1 [

	          arg1 addPostToBlog: self
]

{ #category : 'blinking' }
TBPostS >> beVisible [

	  self visible: true
]

{ #category : 'accessing' }
TBPostS >> category [

	          ^ category
]

{ #category : 'accessing' }
TBPostS >> category: arg1 [

	          category := arg1
]

{ #category : 'accessing' }
TBPostS >> date [

	          ^ date
]

{ #category : 'accessing' }
TBPostS >> date: arg1 [

	          date := arg1
]

{ #category : 'blinking' }
TBPostS >> initialize [

	          super initialize.
	          self
		          category: self class unclassifiedTag;
		          date: Date today;
		          notVisible
]

{ #category : 'accessing' }
TBPostS >> isUnclassified [

	          ^ category = self class unclassifiedTag
]

{ #category : 'accessing' }
TBPostS >> isVisible [

	^ visible
]

{ #category : 'blinking' }
TBPostS >> notVisible [

	          visible := false
]

{ #category : 'blinking' }
TBPostS >> switchVisible [

	          visible := visible not
]

{ #category : 'accessing' }
TBPostS >> text [

	          ^ text
]

{ #category : 'accessing' }
TBPostS >> text: arg1 [

	          text := arg1
]

{ #category : 'accessing' }
TBPostS >> title [

	          ^ title
]

{ #category : 'accessing' }
TBPostS >> title: arg1 [

	          title := arg1
]

{ #category : 'accessing' }
TBPostS >> visible [

	          ^ visible
]

{ #category : 'accessing' }
TBPostS >> visible: arg1 [

	          visible := arg1
]
