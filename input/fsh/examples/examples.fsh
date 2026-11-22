Instance: Athlete-Aggelos
InstanceOf: Athlete
Usage: #example
Title: "Athlete Aggelos"
Description: "An example Athlete from Utrecht."
* name.given = "Aggelos"
* name.family = "Bellos"
* gender = #male
* birthDate = "1996-04-12"
* extension[parkourStartDate].valueDate = "2013-06-01"
* extension[dominantTakeoffLeg].valueCode = #right

Instance: Coach-Telis
InstanceOf: Coach
Usage: #example
Title: "Coach Telis"
Description: "An example Coach of a level-2 coach"
* name.given = "Telis"
* name.family = "Papadakis "
* qualification[0].code = CoachQualificationCS#coach-level-2 "Coach Level 2"

Instance: spot-harbor-steps
InstanceOf: TrainingSpot
Usage: #example
Title: "Harbor Steps"
Description: "An example Training Spot"
* status = #active
* name = "Harbor Steps"
* description = "A training spot located at the harbor steps."
* position.latitude = 35.342
* position.longitude = 25.137
* extension[surfaceType][0].valueCodeableConcept = SurfaceTypeCS#concrete "Concrete"
* extension[surfaceType][1].valueCodeableConcept = SurfaceTypeCS#stone "Stone"

Instance: session-2026-11-14
InstanceOf: TrainingSession
Usage: #example
Title: "Saturday Training Session"
Description: "A two-hour session with a coach"
* status = #finished
* subject = Reference(Athlete-Aggelos)
* participant[0].individual = Reference(coach-Telis)
* location[0].location = Reference(spot-harbor-steps)
* period.start = "2026-11-14T10:00:00+02:00"
* period.end = "2026-11-14T12:00:00+02:00"

Instance: precision-jump-aggelos
InstanceOf: MovementPerformance
Usage: #example
Title: "Precision Jump Performance"
Description: "Aggelos landed 7 out of 10 precision jumps of 2.5 meters."
* status = #final
* code = ParkourMovementCS#precision-jump "Precision Jump"
* subject = Reference(Athlete-Aggelos)
* encounter = Reference(session-2026-11-14)
* effectiveDateTime = "2026-11-14T10:45:00+02:00"
* extension[surfaceType].valueCodeableConcept = SurfaceTypeCS#concrete "Concrete"
* component[distance].valueQuantity = 2.5 'm' "m"
* component[attempts].valueInteger = 10
* component[successes].valueInteger = 7

Instance: ankle-sprain-aggelos
InstanceOf: ParkourInjury
Usage: #example
Title: "Ankle Sprain Injury"
Description: "Aggelos suffered an ankle sprain during a training session."
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $SCT#44465007 "Sprain of ankle"
* subject = Reference(Athlete-Aggelos)
* encounter = Reference(session-2026-11-14)
* onsetDateTime = "2026-11-14T11:30:00+02:00"
* extension[relatedMovement].valueCodeableConcept = ParkourMovementCS#precision-jump "Precision Jump"



