Class {
	#name : 'DieHandleTest',
	#superclass : 'TestCase',
	#category : 'Dice-Test',
	#package : 'Dice',
	#tag : 'Test'
}

{ #category : 'tests' }
DieHandleTest >> testAddingDieHandler [

	self assert: (6 D4 + 6 D6) diceNumber equals: 12
]

{ #category : 'tests' }
DieHandleTest >> testInitializationAndAdding [

	| h | 
	h := DieHandle new.
	h addDie: (Die withFaces: 6).
	self assert: h diceNumber equals: 1.
	h 	addDie: (Die withFaces: 10).		
	self assert: h diceNumber equals: 2
]

{ #category : 'tests' }
DieHandleTest >> testMaxValue [

	| h | 
	h := DieHandle new.
	h addDie: (Die withFaces: 6).
	self assert: h maxValue equals: 6.
	h 	addDie: (Die withFaces: 10).		
	self assert: h maxValue equals: 16
]

{ #category : 'tests' }
DieHandleTest >> testRoll [

	| h | 
	h := DieHandle new.
	h addDie: (Die withFaces: 6).
	h 	addDie: (Die withFaces: 10).		
	50 timesRepeat: [ self assert: [ h roll between: 2 and: 16 ] ]
]

{ #category : 'tests' }
DieHandleTest >> testSimpleHandle [

	self assert: 2 D20 diceNumber equals: 2
]

{ #category : 'tests' }
DieHandleTest >> testSimpleHandleAll [

	self assert: 2 D4 diceNumber equals: 2;
		assert: 2 D6 diceNumber equals: 2;
		assert: 2 D8 diceNumber equals: 2;
		assert: 2 D10 diceNumber equals: 2;
		assert: 2 D12 diceNumber equals: 2;
		assert: 2 D20 diceNumber equals: 2;
		assert: 2 D100 diceNumber equals: 2.
	
	
	
]
