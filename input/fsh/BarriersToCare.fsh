Profile:        BarriersTocare
Parent:         Observation
Id:             IHE.Barriers.To.Care
Title:          "IHE barriers to care observation"
Description:    "Indication of whether or not there were any patient specific barriers to serving the patient."
// NEMSIS eHistory.01 - Barriers to Patient Care
//* code = $loinc#67515-7
// new loinc code needs to be requested 
* value[x] 1..1
* value[x] only CodeableConcept 
//* value[x].coding from NEMSIS.Barriers.to.Patient.Care.VS (example)
// Note Data absent reason codes need to be extended to include NEMSIS values 


Instance: Ex-BarriersTocare
InstanceOf: BarriersTocare
Usage: #inline
* code = http://loinc.org#67515-7
* status  = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2023-08-03T14:14:45-05:00"
* valueCodeableConcept = $NEMSIS#3101027


