Profile:        Last_Oral_Ontake
Parent:         Observation
Id:             Last.Oral.Intake
Title:          "Last oral intake Observation"
Description:    "Date and Time of last oral intake."

* code = $loinc#67517-3
* valueDateTime 0..1
* status = #final
* encounter 1..1
* subject 1..1
* subject only Reference(Patient)
// this is making everything else in observation forbidden. 
* category 0..0
* implicitRules 0..0
* language 0..0
* contained 0..0
* modifierExtension 0..0
* basedOn 0..0
* partOf 0..0
* focus 0..0
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
* component 0..0
* note 0..0
