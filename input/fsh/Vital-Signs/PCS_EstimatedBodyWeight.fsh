Profile:   IHE_RIPT_Procedures
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips
Id:             IHE.PCC.RIPT.Procedures
Title: "RIPT Procedures"
Description:      " This profile represents the constraints applied to the Procedures resource by the Refferal For Interfacility Patient Trasnport (RIPT) FHIR Implementation Guide."

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8335-2
* valueQuantity.value 0..1 MS
* valueQuantity.unit = "kg"
* valueQuantity.system = http://unitsofmeasure.org
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