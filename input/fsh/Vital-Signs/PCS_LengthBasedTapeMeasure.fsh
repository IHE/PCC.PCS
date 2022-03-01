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

ValueSet: PCS_Length_Based_Tape_Measure_VS
Description: "The length-based color as taken from the tape."
Id: PCS.Length.Based.Tape.Measure.VS
* #444471002	"Broselow Luten pediatric weight estimation red zone (finding)"
* #444488009	"Broselow Luten pediatric weight estimation pink zone (finding)"
* #736023001	"Broselow Luten pediatric weight estimation gray zone (finding)"
* #444474005	"Broselow Luten pediatric weight estimation blue zone (finding)"
* #444503000	"Broselow Luten pediatric weight estimation green zone (finding)"
* #444504006	"Broselow Luten pediatric weight estimation white zone (finding)"
* #444489001	"Broselow Luten pediatric weight estimation purple zone (finding)"
* #444496004	"Broselow Luten pediatric weight estimation orange zone (finding)"
* #444505007	"Broselow Luten pediatric weight estimation yellow zone (finding)"

