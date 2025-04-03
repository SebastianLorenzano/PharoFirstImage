Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice-Core',
	#package : 'Dice',
	#tag : 'Core'
}

{ #category : 'initialization' }
DieHandle >> + aDieHandle [

	aDieHandle dice do: [ :each | self addDie: each ]
]

{ #category : 'adding' }
DieHandle >> addDie: aDie [
	dice add: aDie 
]

{ #category : 'adding' }
DieHandle >> dice [
	^ dice
]

{ #category : 'adding' }
DieHandle >> diceNumber [
	^ dice size
]

{ #category : 'initialization' }
DieHandle >> initialize [ 

	super initialize.
	dice := OrderedCollection new.
]

{ #category : 'initialization' }
DieHandle >> maxValue [

	| result |
	result := 0.
	dice do: [ :each | result := result + each faces ].
	^ result
]

{ #category : 'initialization' }
DieHandle >> printOn: aStream [
	
	super printOn: aStream.
	
	aStream nextPutAll: ' (', self diceNumber printString, ')'
	
]

{ #category : 'initialization' }
DieHandle >> roll [ 

	| result |
	result := 0.
	dice do: [ :each | result := result + each roll ].
	^ result
]
