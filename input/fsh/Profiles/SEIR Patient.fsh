

Profile: SEIRPatientProfile
Parent: Patient
Id: seir-patient
Title: "SEIR Patient"
Description: "A profile for Patient resource specific to Philippine context."
* ^version = "1.0.0"
* ^status = #draft

// Standalone in Immunization FHIR IG

* name.family 1..1
* name.given 1..*
* name.given ^slicing.discriminator.type = #value
* name.given ^slicing.discriminator.path = "$this"
* name.given ^slicing.rules = #open
* name.given contains first 1..* and middle 0..*

* name.given[first] ^short = "First name"
* name.given[middle] ^short = "Middle name(s)"

* extension contains indigenous-member 0..1