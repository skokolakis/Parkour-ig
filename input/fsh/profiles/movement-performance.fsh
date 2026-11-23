Profile: MovementPerformance
Parent: Observation
Id: movement-performance
Title: "Movement Performance"
Description: "How well an Athlete performed a movement during a session."
* insert Metadata
* obeys mp-1
* status MS
// --- slicing category so one entry must be 'activity'
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains activity 1..1 MS
* category[activity] = $obs-category#activity
// --- what movement
* code MS
* code from ParkourMovementVS (required)
* subject 1..1 MS
* subject only Reference(Athlete)
* encounter MS
* encounter only Reference(TrainingSession)
* effective[x] 1..1 MS
* effective[x] only dateTime
* extension contains SurfaceType named surfaceType 0..1 MS
// --- slicing component by code
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "One slice per metric"
* component contains
    distance 0..1 MS and
    height 0..1 MS and
    attempts 0..1 MS and
    successes 0..1 MS
* insert QuantityComponent(distance, m)
* insert QuantityComponent(height, m)
* component[attempts].code = ParkourMetricCS#attempts
* component[attempts].value[x] only integer
* component[successes].code = ParkourMetricCS#successes
* component[successes].value[x] only integer

Invariant: mp-1
Description: "Successful attempts SHALL NOT exceed total attempts."
Severity: #error
Expression: "(component.where(code.coding.code = 'successes').exists() and component.where(code.coding.code = 'attempts').exists()) implies (component.where(code.coding.code = 'successes').value.ofType(integer) <= component.where(code.coding.code = 'attempts').value.ofType(integer))"