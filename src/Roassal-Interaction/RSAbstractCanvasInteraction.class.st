"
Subclasses of myself are interaction for the view.
"
Class {
	#name : #RSAbstractCanvasInteraction,
	#superclass : #RSInteraction,
	#category : #'Roassal-Interaction-Core'
}

{ #category : #hooks }
RSAbstractCanvasInteraction >> onShape: aCanvas [
	self subclassResponsibility
]
