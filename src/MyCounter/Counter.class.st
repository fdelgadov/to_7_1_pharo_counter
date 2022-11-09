"
`Counter` is a simple concrete class which supports incrementing and decrementing.
Its API isMessageASetter
- `decrement` and `increment`
- `count`
Its creation message is `startAt:`
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: num [
	^ Counter new count: num
]

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: num [
	count := num
]

{ #category : #operations }
Counter >> decrement [
	count := count - 1
]

{ #category : #operations }
Counter >> increment [
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [
	count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', count printString.
]
