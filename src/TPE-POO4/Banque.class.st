Class {
	#name : #Banque,
	#superclass : #Object,
	#instVars : [
		'clientList',
		'compteList'
	],
	#category : #'TPE-POO4'
}

{ #category : #accessing }
Banque >> Operation [ 
]

{ #category : #accessing }
Banque >> clientList [
	^ clientList
]

{ #category : #accessing }
Banque >> clientList: anObject [
	clientList := anObject
]

{ #category : #accessing }
Banque >> compteList [
	^ compteList
]

{ #category : #accessing }
Banque >> compteList: anObject [
	compteList := anObject
]

{ #category : #operation }
Banque >> creerCompte: unCompte client: unClient [
	| compte client banque tail|
	banque := self .
	client := unClient.
	compte := unCompte.

	client compte: compte.
	self compteList: compte.
	self clientList: client.
	 
 	client  id: (banque clientList at: 1 )id + 1 .
 
 compte  numero: (banque compteList at: 1 )numero + 1 
]

{ #category : #initialization }
Banque >> initialize [ 
		super initialize.
		 compteList:= OrderedCollection new.
		  clientList:= OrderedCollection new
]
