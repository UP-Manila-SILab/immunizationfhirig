

Profile: SEIRPatientProfile
Parent: PHCorePatient
Id: seir-patient
Title: "SEIR Patient"
Description: "A profile for Patient resource specific to Philippine context."
* ^version = "1.0.0"
* ^status = #draft

// Standalone in Immunization FHIR IG
* name.family 1..1 MS
* name.given 1..*
* name.given ^slicing.discriminator.type = #value
* name.given ^slicing.discriminator.path = "$this"
* name.given ^slicing.rules = #open
* name.given contains first 1..* MS and middle 0..* MS
* name.given[first] ^short = "First name"
* name.given[middle] ^short = "Middle name"

* name.suffix 0..* MS
* birthDate 1..1 MS
* gender 1..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    PhilHealthID 0..* MS and
    PhilSysID 0..* MS
* identifier[PhilHealthID].system = "http://example.com/fhir/Identifier/philhealth-id"
* identifier[PhilHealthID].type.coding = #PHID
* identifier[PhilHealthID].type.text = "PhilHealth Identification Number"
* identifier[PhilHealthID] ^short = "PhilHealth Identification Number"
* identifier[PhilSysID].system = "https://example.com/fhir/Identifier/philsys-id"
* identifier[PhilSysID].type.coding = #PSID
* identifier[PhilSysID].type.text = "PhilSys Identification Number"
* identifier[PhilSysID] ^short = "PhilSys Identification Number"
* identifier[PhilSysID] ^mustSupport = true

// Extensions
* extension contains IndigenousMember named indigenousMember 1..1 MS
* address only SEIR_Address

// For Deletion 
* link.modifierExtension ..0
* modifierExtension ..0