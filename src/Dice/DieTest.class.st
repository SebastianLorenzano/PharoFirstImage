Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice-Test',
	#package : 'Dice',
	#tag : 'Test'
}

{ #category : 'tests' }
DieTest >> testInitilizeIsOk [
	| d | 
	d := Die new. 
	
	self assert: d faces equals: 6
]

{ #category : 'tests' }
DieTest >> testRoll [
	| d |
	d := Die new.
	
	10 timesRepeat: [ self assert: [ d roll between: 1 and: 6 ] ]
]

{ #category : 'tests' }
DieTest >> testWithFaces [
	
	| d | 
	d := Die withFaces: 20.
	
	self assert: d faces equals: 20
]
