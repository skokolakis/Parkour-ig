Profile: TrainingSession
Parent: Encounter
Id: training-session
Title: "Training Session"
Description: "A parkour training session in a parkour training spot"
* insert Metadata
* status MS
* class MS
* class = $v3-ActCode#FLD "field"
* subject 1..1 MS
* subject only Reference(Athlete)
* participant MS
* participant.individual MS
* participant.individual only Reference(Coach)
* location 1..* MS
* location.location only Reference(TrainingSpot)
* period 1..1 MS
* period.start 1..1 MS
