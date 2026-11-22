Extension: ParkourStartDate
Id: parkour-start-date
Title: "Parkour Start Date"
Description: "The date the person started practising parkour."
Context: Patient
* insert Metadata
* value[x] only date

Extension: DominantTakeoffLeg
Id: dominant-takeoff-leg
Title: "Dominant Take-off Leg"
Description: "The leg the athlete prefers to take off from."
Context: Patient
* insert Metadata
* value[x] only code
* valueCode

Extension: SurfaceType
Id: surface-type
Title: "Surface type"
Description: "The surface of a training spot or of the obstacle used for a movement."
Context: Location, Observation
* insert Metadata
* value[x] only CodeableConcept
* valueCodeableConcept from SurfaceTypeVS (extensible)

Extension: RelatedMovement
Id: related-movement
Title: "Related Movement"
Description: "The movement being performed when an injury happened."
Context: Condition
* insert Metadata
* value[x] only CodeableConcept
* valueCodeableConcept from ParkourMovementVS (required)