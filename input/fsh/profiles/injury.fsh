Profile: ParkourInjury
Parent: Condition
Id: parkour-injury
Title: "Parkour Injury"
Description: "An injury that happened while training."
* insert Metadata
* clinicalStatus MS
* code 1..1 MS
* bodySite MS
* subject only Reference(Athlete)
* encounter only Reference(TrainingSession)
* onset[x] MS
* onset[x] only dateTime
* extension contains RelatedMovement named relatedMovement 0..1 MS