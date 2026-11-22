Profile: Athlete
Parent: Patient
Id: Athlete
Title: "Athlete"
Description: "A person who practices Parkour"
* insert Metadata
* name 1..* MS
* name.given 1..* MS
* name.family MS
* gender MS
* birthDate 1..1 MS
* extension contains
    ParkourStartDate named parkourStartDate 0..1 MS and
    DominantTakeoffLeg named dominantTakeoffLeg 0..1 MS
