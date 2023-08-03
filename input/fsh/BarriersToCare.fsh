Profile:        BarriersTocare
Parent:         Observation
Id:             IHE.Barriers.To.Care
Title:          "IHE barriers to care observation"
Description:    "Indication of whether or not there were any patient specific barriers to serving the patient."
// NEMSIS eHistory.01 - Barriers to Patient Care
* code = $loinc#67515-7
* value[x] 1..1
* value[x] only CodeableConcept 
* value[x].coding from NEMSIS.Barriers.to.Patient.Care.VS (example)
// Note Data absent reason codes need to be extended to include NEMSIS values 
* status = #final
// When Barriers to Patient Care observation value is empty, it SHALL have a Data Absent reason. 


* note 0..0
* category 0..0
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* interpretation 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0

Instance: Ex-BarriersTocare
InstanceOf: BarriersTocare
Usage: #inline
* code = #67515-7
* status  = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2023-08-03T14:14:45-05:00"
* valueCodeableConcept = 3101027


