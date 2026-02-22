// ImplementationGuide.fsh
ImplementationGuide: up-manila-silab-immunizationfhirig
* id = "up-manila-silab-immunizationfhirig"
* version = "0.1.0"
* status = draft
* fhirVersion = 4.0.1
* canonical = "https://up-manila-silab.github.io/immunizationfhirig"
* name = "Immunization FHIR IG"
* title = "Draft Immunization FHIR Implementation Guide"
* description = "This draft implementation guide supports FHIR use for Immunization in the Philippines and defines the minimum set of constraints on FHIR resources for Immunization use cases."
* copyrightYear = 2025+
* license = "CC-BY-1.0"
* releaseLabel = "ci-build"
* jurisdiction = "urn:iso:std:iso:3166#PH"
* publisher.name = "UP Manila SILab"
* publisher.url = "https://github.com/UP-Manila-SILab"
* dependencies.fhir.ph.core = "1.0.0"

// Include all your resources in the IG
* resource StructureDefinition-seir-patient
* resource StructureDefinition-seir-encounter
* resource StructureDefinition-seir-immunization
* resource StructureDefinition-seir-administered-product
* resource ValueSet-SEIRActionTaken
* resource ValueSet-SEIRActionReason
* resource ValueSet-SEIRVaccineName
* resource CodeSystem-SEIRActionTaken
* resource CodeSystem-SEIRGenericName
* resource CodeSystem-SEIREncounterType