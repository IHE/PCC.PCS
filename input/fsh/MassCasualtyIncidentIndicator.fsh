Profile:        MassCasualty_Incident_Indicator
Parent:         Observation
Id:             MassCasualty.Incident.Indicator
Title:          "MassCasualty Incident Indicator"
Description:    "TBD"
// eScene.07 - Mass Casualty Incident


* code = http://loinc.org#67490-3
* valueCodeableConcept from https://loinc.org/LL361-7
* status = #final
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1 

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
