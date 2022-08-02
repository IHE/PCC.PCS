Profile:        Barriers_To_care
Parent:         Observation
Id:             IHE.Barriers.To.Care
Title:          "IHE barriers to care observation"
Description:    "Indication of whether or not there were any patient specific barriers to serving the patient."
// NEMSIS eHistory.01 - Barriers to Patient Care


* code = loinc#67515-7
* encounter 1..1 
* encounter Reference(IHE_PCS_Encounter_ClinicalSubset)
* valueCodeableConcept from NEMSIS_Barriers_to_Patient_Care_VS (example)
// Note Data absent reason codes need to be extended to include NEMSIS values 
* status = #final
* subject 1..1
* subject only Reference(Patient)

// Note COntraints:
// When Barriers to Patient Care observation value is empty, it SHALL have a Data Absent reason. 

// things that are not declared in the mapping table but likely are populated because they are normal REST processing
//* id 0..1
//* meta.versionId 0..1
//* meta.lastUpdated 0..1
//* meta.profile 0..1
//* meta.source 0..0
//* meta.security 0..0
//* identifier 0..*
//* text 0..0

// this is making everything else in observation forbidden. If they show up, apps should not misbehave. IHE FooBar compliant apps shall not populate these in a Create or Update.

* note 0..0
* category 0..0
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* basedOn 0..0
* partOf 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* performer 0..0
* interpretation 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0

