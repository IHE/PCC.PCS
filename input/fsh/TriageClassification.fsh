Profile:        Triage_Classification
Parent:         Observation
Id:             Triage.Classification
Title:          "Triage Classification"
Description:    "The color associated with the initial triage assessment/classification of the MCI patient."

* code = http://loinc.org#75616-3

* valueCodeableConcept from NEMSIS_Triage_Classification_for_MCI_Patient_VS (example)
* status = #final
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1 
// this is making everything else in observation forbidden. 
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
* dataAbsentReason 0..0
* interpretation 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0