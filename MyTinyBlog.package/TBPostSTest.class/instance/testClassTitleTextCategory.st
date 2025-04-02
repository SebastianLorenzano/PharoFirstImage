tests
testClassTitleTextCategory

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