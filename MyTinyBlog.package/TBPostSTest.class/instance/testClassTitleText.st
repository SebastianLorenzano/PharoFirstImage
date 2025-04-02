tests
testClassTitleText

	          | tmp1 tmp2 |
	          tmp1 := TBPostS new.
	          tmp1
		          title: 'Pepe';
		          text: 'Pepe1'.
	          tmp2 := TBPostS title: 'Pepe' text: 'Pepe1'.
	          self
		          assert: tmp1 title equals: tmp2 title;
		          assert: tmp1 text equals: tmp2 text