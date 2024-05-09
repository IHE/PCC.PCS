Profile:        AcuityAssessment
Parent:         Observation
Id:             IHE.PCC.AcuityAssessment
Title:          "IHE Acuity Assesment"
Description:    "The Acuity Assessment section contains a description of the acuity of the patient upon presentation to the Emergency department."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#56839-4
* value[x] only Reference 
* valueReference only Reference(Observation)



Profile:        ReperfusionChecklist
Parent:         Observation
Id:             ReperfusionChecklist
Title:          "Reperfusion Checklist"
Description:    "."
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
//* code = $loinc#      New code needs to be requested 
* value[x] only CodeableConcept




