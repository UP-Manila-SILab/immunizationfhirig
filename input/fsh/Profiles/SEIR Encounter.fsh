Profile: SEIREncounterProfile
Parent: PHCoreEncounter
Id: seir-encounter
Title: "SEIR Encounter"
Description: "A profile for Encounter resource specific to Philippine context."
* ^version = "1.0.0"
* ^status = #draft

* type 0..* MS
* type from http://seir.dohnip.org/valueset/encounter-type
* type ^short = "Encounter Type"