"
I am the horizontal tree layout algorithm described in the publication ""Drawing non-layered tidy trees in linear time"" by Atze van der Ploeg [1] (companion repo at [2]).

I use the trait `RSTWalkBasedRegularTreeLayout` to get the main behavior and fullfil the explicit requirements to have a tree layout growing toward the horizontal dimension.

[1]: https://www.semanticscholar.org/paper/Drawing-non-layered-tidy-trees-in-linear-time-Ploeg/d45f66231e053590c64c9d901fb7b028dbc5c923
[2]: https://github.com/cwi-swat/non-layered-tidy-trees
"
Class {
	#name : #RSHorizontalVanDerPloegTreeLayout,
	#superclass : #RSHorizontalTreeLayout,
	#traits : 'RSTWalkBasedRegularTreeLayout + RSTWalkBasedRegularTreeLayoutOnShapeProperties + RSTWalkBasedRegularHorizontalTreeLayout',
	#classTraits : 'RSTWalkBasedRegularTreeLayout classTrait + RSTWalkBasedRegularTreeLayoutOnShapeProperties classTrait + RSTWalkBasedRegularHorizontalTreeLayout classTrait',
	#instVars : [
		'root'
	],
	#category : #'Roassal-Layouts-Tree'
}

{ #category : #hook }
RSHorizontalVanDerPloegTreeLayout >> doInitialize: elements [

	super doInitialize: elements.

	root := self initialize: elements lineEdges: self edges
]

{ #category : #hook }
RSHorizontalVanDerPloegTreeLayout >> layout: rootNodes atPoint: aPoint atLayer: aLayer [

	^ self layout: root depth: aPoint x breadth: aPoint y
]
