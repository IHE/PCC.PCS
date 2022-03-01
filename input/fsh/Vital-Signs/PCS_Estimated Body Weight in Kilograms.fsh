Profile:   IHE_PCS_EstimatedBodyWeight
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.PCS.EstimatedBodyWeight
Title: "PCS Estimated Body Weight"
Description:      "A profile on the Observation that declares how content creator will Create/Update vital sign for estimated body weight measurements."

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8335-2
* value[x] only Quantity
* valueQuantity.value 0..1 MS
* valueQuantity.unit = "kg"
* valueQuantity.system = http://unitsofmeasure.org
* status = #final
* subject 1..1
* subject only Reference(Patient)
//* method = #258083009 
//* dataAbsentReason from
//Pertinant negative slice 
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
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0


Profile:   IHE_PCS_MeasuredBodyWeight
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.PCS.MeasuredBodyWeight
Title: "PCS Measured Body Weight"
Description:      "A profile on the Observation that declares how content creator will Create/Update vital sign for Measured body weight measurements."

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#3141-9
* value[x] only Quantity
* valueQuantity.value 0..1 MS
* valueQuantity.unit = "kg"
* valueQuantity.system = http://unitsofmeasure.org
* status = #final
* subject 1..1
* subject only Reference(Patient)
//* method = #129266000 
//* dataAbsentReason from
//Pertinant negative slice 
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
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0

Profile:   IHE_PCS_StatedBodyWeight
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.PCS.StatedBodyWeight
Title: "PCS Stated Body Weight"
Description:      "A profile on the Observation that declares how content creator will Create/Update vital sign for Stated body weight measurements."

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#3142-7
* value[x] only Quantity
* valueQuantity.value 0..1 MS
* valueQuantity.unit = "kg"
* valueQuantity.system = http://unitsofmeasure.org
* status = #final
* subject 1..1
* subject only Reference(Patient)
// * method = 
//* dataAbsentReason from
//Pertinant negative slice 
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
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0

Profile:   IHE_PCS_StatedBodyWeight
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.PCS.StatedBodyWeight
Title: "PCS Stated Body Weight"
Description:      "A profile on the Observation that declares how content creator will Create/Update vital sign for Stated body weight measurements."

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#3142-7
* value[x] only Quantity
* valueQuantity.value 0..1 MS
* valueQuantity.unit = "kg"
* valueQuantity.system = http://unitsofmeasure.org
* status = #final
* subject 1..1
* subject only Reference(Patient)
* Method = 
//* dataAbsentReason from
//Pertinant negative slice 
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
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0