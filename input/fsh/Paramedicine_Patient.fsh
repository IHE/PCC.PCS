Profile:        Paramedicine_Patient
Parent:         https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient
Id:             IHE.PCC.Paramedicine.Patient
Title:          "Paramedicine Patient"
Description:    "The Paramedicine Patient resource utilizes the PQDQM patient resource in allignment with the IPS patient resource. It extends the patient resource to hold an estimated Age element, so in the absense of a known date of birth the estimated age may be documented."

* name.given MS 
* name.family MS

* address 1..*
* address.county 1..1 MS 
* address.state 1..1 MS 
* address.postalCode 1..1 MS

* gender 1..1 MS 

* extesnion contains estimatedAge named estimatedAge 0..1 MS 
* estimatedAge only valueQuantity

// NOte: how to properly indicate Homlessness, migrant worker, foreign visitor etc (should i cintinue to extend on the adress or the Pt resource? maybe just a UR realm element), or just leave as an observation


Extension: estimatedAge
Id: estimatedAge
Title: "Paramedicine patient estimated Age"
Description: "The estimated age of a patient represented as a number quantity when a date of birth is unknown"
* ^context[+].type = #element
* ^context[=].expression = "estimatedAge"
* estimatedAge only valueQuantity
* valueQuantity only from http://hl7.org/fhir/ValueSet/age-units (required)