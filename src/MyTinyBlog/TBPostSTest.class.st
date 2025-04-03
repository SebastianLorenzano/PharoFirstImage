Class {
	#name : 'TBPostSTest',
	#superclass : 'TestCase',
	#category : 'MyTinyBlog-Tests',
	#package : 'MyTinyBlog',
	#tag : 'Tests'
}

{ #category : 'tests' }
TBPostSTest >> testClassTitleText [

	          | tmp1 tmp2 |
	          tmp1 := TBPostS new.
	          tmp1
		          title: 'Pepe';
		          text: 'Pepe1'.
	          tmp2 := TBPostS title: 'Pepe' text: 'Pepe1'.
	          self
		          assert: tmp1 title equals: tmp2 title;
		          assert: tmp1 text equals: tmp2 text
]

{ #category : 'tests' }
TBPostSTest >> testClassTitleTextCategory [

	          | tmp1 tmp2 |
	          tmp1 := TBPostS new.
	          tmp1
		          title: 'Pepe';
		          text: 'Pepe1';
		          category: 'Pepe2'.
	          tmp2 := TBPostS
		                  title: 'Pepe'
		                  text: 'Pepe1'
		                  category: 'Pepe2'.
	          self
		          assert: tmp1 title equals: tmp2 title;
		          assert: tmp1 text equals: tmp2 text;
		          assert: tmp1 category equals: tmp2 category
]

{ #category : 'tests' }
TBPostSTest >> testGetterAndSetterCategory [

	          | tmp1 |
	          tmp1 := TBPostS new.
	          tmp1 category: 'Pepe'.
	          self assert: tmp1 category equals: 'Pepe'
]

{ #category : 'tests' }
TBPostSTest >> testGetterAndSetterDate [

	          | tmp1 tmp2 |
	          tmp2 := Date today addDays: 2.
	          tmp1 := TBPostS new.
	          tmp1 date: tmp2.
	          self assert: tmp1 date equals: tmp2
]

{ #category : 'tests' }
TBPostSTest >> testGetterAndSetterText [

	          | tmp1 |
	          tmp1 := TBPostS new.
	          tmp1 text: 'Pepe'.
	          self assert: tmp1 text equals: 'Pepe'
]

{ #category : 'tests' }
TBPostSTest >> testGetterAndSetterTitle [

	          | tmp1 |
	          tmp1 := TBPostS new.
	          tmp1 title: 'Pepe'.
	          self assert: tmp1 title equals: 'Pepe'
]

{ #category : 'tests' }
TBPostSTest >> testGetterAndSetterVisible [

	          | tmp1 |
	          tmp1 := TBPostS new.
	          tmp1 visible: true.
	          self assert: tmp1 visible equals: true
]

{ #category : 'tests' }
TBPostSTest >> testInitializing [

	          | tmp1 |
	          tmp1 := TBPostS new.
	          self
		          assert: tmp1 title equals: nil;
		          assert: tmp1 text equals: nil;
		          assert: tmp1 visible equals: false;
		          assert: tmp1 category equals: 'Unclassified'
]
