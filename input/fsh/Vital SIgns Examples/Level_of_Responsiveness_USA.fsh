Profile:        IhePCSLevelOfResponsivenessUSA
Parent:         Observation
Id:             IHE.PCS.LevelOfResponsivenessUSA
Title:          "IHE PCS Level of Responsiveness USA Observation"
Description:    "A profile on the Observation that declares how FooBar will Create/Update for body weight measurements."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#67775-7
* effectiveDateTime 1..1
* value[x] only CodeableConcept	
* value[x].CodeableConcept.coding = http://loinc.org#LL1845-8
* status = #final
* subject only Reference(Patient)
* note 0..1
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
* interpretation 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0
