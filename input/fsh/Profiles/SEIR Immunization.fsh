Profile: SEIRImmunizationProfile
Parent: PHCoreImmunization
Id: seir-immunization
Title: "SEIR Immunization"
Description: "A profile for Immunization resource specific to Philippine context."
* ^version = "1.0.0"
* ^status = #draft

// Reference to PH Core FHIR IG
* patient 1..1 MS
* patient only Reference(PHCorePatient)
* patient ^short = "Patient receiving immunization"

* encounter 0..1 MS
* encounter only Reference(PHCoreEncounter)
* encounter ^short = "Encounter during immunization"

* location 0..1 MS
* location only Reference(Location)
* location ^short = "Location resource specific to Philippine context."

// Standalone in Immunization FHIR IG

* vaccineCode 1..1 MS
* vaccineCode ^short = "Vaccine Generic Name (*eLMIS)"

* protocolApplied 0..* MS
* protocolApplied.doseNumberPositiveInt 0..1 MS
* protocolApplied.doseNumberPositiveInt ^short = "Dose Count"

* status 1..1 MS
* status ^short = "Action Taken"

* statusReason 0..1 MS
* statusReason ^short = "Action Reason"

* occurrenceDateTime 1..1 MS
* occurrenceDateTime ^short = "Action Date"

* lotNumber 1..1 MS
* lotNumber ^short = "Vaccine lot number"

* performer 0..* MS
* performer.actor 1..1 MS
* performer.actor.display 0..1 MS
* performer.actor.display ^short = "Vaccinator Name"
* performer.actor.display ^definition = "The display name of the vaccinator."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    seir-administered-product named AdministeredProduct 0..1 MS and 
    seir-batch-number named BatchNumber 0..1 MS
