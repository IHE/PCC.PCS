Profile:        PCSBloodPressure
Parent:         Observation
Id:             IHE.PCS.bloodPressure
Title:          "IHE FooBar Blood Pressure Observation"
Description:    "A profile on the Observation that declares how FooBar will Create/Update blood pressure measurements.

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
// This shows how to slice to force two values
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path  =  "resolve()"
* code.coding ^slicing.rules = #closed
* code.coding 2..2
* code.coding contains loincCode1 1..1 and loincCode2 1..1
* code.coding[loincCode1] = LOINC#8480-6
* code.coding[loincCode2] = LOINC#8462-4
* effectiveDateTime 1..1
* value[x] 0..0
* component 2..2

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "blood pressure values"
* component contains 
	diastolicBP 1..1 and 
	systolicBP 1..1 and 
* component[systolicBP].code = LOINC#8480-6 // Systolic blood pressure
* component[systolicBP].value[x] only Quantity
* component[systolicBP].valueQuantity = UCUM#mm[Hg] // "mmHg"
* component[diastolicBP].code = LOINC#8462-4 // Diastolic blood pressure
* component[diastolicBP].value[x] only Quantity
* component[diastolicBP].valueQuantity = UCUM#mm[Hg] // "mmHg"
* status = #final
* subject 1..1
* subject only Reference(Patient)
* note 0..1
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
