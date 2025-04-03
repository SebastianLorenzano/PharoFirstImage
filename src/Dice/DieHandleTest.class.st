Class {
	#name : 'DieHandleTest',
	#superclass : 'TestCase',
	#category : 'Dice-Test',
	#package : 'Dice',
	#tag : 'Test'
}

{ #category : 'tests' }
DieHandleTest >> testInitializationAndAdding [

	| h | 
	h := DieHandle new.
	h addDie: Die withFaces: 6.
	self assert: h diceNumber equals: 1.
	h 	addDie: Die withFaces: 10.		
	self assert: h diceNumber equals: 2
]
