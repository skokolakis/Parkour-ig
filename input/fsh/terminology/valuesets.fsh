ValueSet: ParkourMovementVS
Id: parkour-movement-vs
Title: "Parkour Movements Value Set"
Description: "All codes from the Parkour Movements code system."
* insert Metadata
* include codes from system ParkourMovementCS

ValueSet: VaultVS
Id: vault-vs
Title: "Vaults Value Set"
Description: "Only the vaults: every code that is a descendant of 'vault'."
* insert Metadata
* include codes from system ParkourMovementCS where concept descendent-of #vault

ValueSet: SurfaceTypeVS
Id: surface-type-vs
Title: "Surface Types Value Set"
Description: "All surface types."
* insert Metadata
* include codes from system SurfaceTypeCS

ValueSet: DominantLegVS
Id: dominant-leg-vs
Title: "Dominant Leg Value Set"
Description: "Left, right or both."
* insert Metadata
* include codes from system DominantLegCS
 
ValueSet: CoachQualificationVS
Id: coach-qualification-vs
Title: "Coach Qualifications Value Set"
Description: "All coaching levels."
* insert Metadata
* include codes from system CoachQualificationCS