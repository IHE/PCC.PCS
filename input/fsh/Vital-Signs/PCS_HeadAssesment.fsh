Profile:        IHE_PCS_Head_Assessment
Parent:         Observation
Id:             IHE.PCS.Head.Assessment
Title:          "IHE PCS Head Assessment Observation"
Description:    "A profile on the Observation that declares how the PCS will Create the observation for a Head Assessment exam."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#67525-6
* value[x] only valueCodeableConcept from https://loinc.org/LL1805-2
//* dataAbsentReason from
* status = #final
* subject 1..1
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



Profile:        IHE_PCS_LengthBasedTapeMeasure
Parent:         Observation
Id:             IHE.PCS.LengthBasedTapeMeasure
Title:          "IHE PCS Length Based Tape Measure Observation"
Description:    "A profile on the Observation that declares how the PCS will Create/Update the Length Based Tape Measure observation."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#67670-0
* value[x] only valueCodeableConcept from PCS_Length_Based_Tape_Measure_VS
//* dataAbsentReason from
* status = #final
* subject 1..1
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
