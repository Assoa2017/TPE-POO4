Class {
	#name : #Compte,
	#superclass : #Object,
	#instVars : [
		'numero',
		'montant',
		'etat'
	],
	#category : #'TPE-POO4'
}

{ #category : #operation }
Compte >> Add: somme [
	self montant: self montant + somme
]

{ #category : #operation }
Compte >> Retrait: somme [ 
	self montant: self montant - somme
]

{ #category : #operation }
Compte >> Solde [
	^ montant.
]

{ #category : #operation }
Compte >> Transfert: somme A: compte [ 
	self Add: somme.
	self Retrait: somme.
	compte Add: somme  
]

{ #category : #operation }
Compte >> etat [
	^ etat
]

{ #category : #accessing }
Compte >> etat: anObject [
	etat := anObject
]

{ #category : #initalize }
Compte >> initialize [
	  montant:= 0.
	  numero:= 0.
	  etat:= true.
]

{ #category : #operation }
Compte >> montant [
	^ montant
]

{ #category : #accessing }
Compte >> montant: anObject [
	montant := anObject
]

{ #category : #operation }
Compte >> numero [
	^ numero
]

{ #category : #accessing }
Compte >> numero: anObject [
	numero := anObject
]
