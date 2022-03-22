Profile:        IhePCSCarbonMonoxide
Parent:         Observation
Id:             IHE.PCS.CarbonMonoxide
Title:          "IHE PCS Carbon Monoxide Observation"
Description:    "A profile on the Observation that declares how FooBar will Create/Update for body weight measurements."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#19911-7
* value[x] only Quantity
* valueQuantity.system from http://hl7.org/fhir/vs/ucum-vitals-common (required)
* valueQuantity.code = #%
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
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0
