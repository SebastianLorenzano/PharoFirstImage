Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice-Core',
	#package : 'Dice',
	#tag : 'Core'
}

{ #category : 'initialization' }
Die >> faces [
	^ faces
]

{ #category : 'initialization' }
Die >> faces: anInteger [ 
	faces := anInteger
]

{ #category : 'initialization' }
Die >> initialize [ 
	super initialize .
	faces := 6
]

{ #category : 'initialization' }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString , ').'
]

{ #category : 'initialization' }
Die >> roll [
	^ faces atRandom 
]
