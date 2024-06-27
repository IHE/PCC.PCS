Profile:        IHE_PCC_Paramedicine_Patient
Parent:         https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient
Id:             IHE.PCC.Paramedicine.Patient
Title:          "Paramedicine Patient"
Description:    "The Paramedicine Patient resource utilizes the PQDQM patient resource in allignment with the IPS patient resource. It contrains the resource to support the data elements that are required if known in the Paramedicine Summary Profile."

* name 1..* MS 
* name.use MS 
// Note: If the patient Name is John Doe or another Alias used for documenting unknown patients then the Use SHALL be #temp
* name.text MS 
* name.given MS 
* name.family MS

* address 0..* MS 
* address.district 0..1 MS 
* address.state 1..1 MS 
* address.postalCode 1..1 MS

* gender 1..1 MS 



* contact MS
* contact.relationship MS
* contact.relationship.CodeableConcept only Patient_Contact_Relationship_Roles_VS (required) 
* contact.name MS 
* contact.telecom MS 
* contact.address MS 
* contact.organization MS 
* contact ^slicing.discriminator.type = #pattern
* contact ^slicing.discriminator.path = "code"
* contact ^slicing.rules = #open
* contact ^slicing.description = "the Types of patient contacts that should be supported"
* contact ^slicing.ordered = false
* contact contains 
    guardian 0..1 MS and 
    nextOfKin 0..* MS and 
    employer 0..1 MS 
* contact[guardian].relationship ^slicing.discriminator.type = #value
* contact[guardian].relationship ^slicing.discriminator.path = "code"
* contact[guardian].relationship ^slicing.rules = #open
* contact[guardian].relationship ^slicing.description = "The relationship types of patient's guardian"
* contact[guardian].relationship ^slicing.ordered = false
* contact[guardian].relationship contains 
    relationshipRole 1..1 MS and 
    relationshipType 0..1 MS
* contact[guardian].relationship[relationshipRole] = #GUARD 
* contact[guardian].relationship[relationshipType].CodeableConcept only Patient_Contact_Relationship_Roles_VS (required) 

* contact[nextOfKin].relationship ^slicing.discriminator.type = #value
* contact[nextOfKin].relationship ^slicing.discriminator.path = "code"
* contact[nextOfKin].relationship ^slicing.rules = #open
* contact[nextOfKin].relationship ^slicing.description = "The relationship types of patient's guardian"
* contact[nextOfKin].relationship ^slicing.ordered = false
* contact[nextOfKin].relationship contains 
    relationshipRole 1..1 MS and 
    relationshipType 0..1 MS
* contact[nextOfKin].relationship[relationshipRole] = #N
* contact[nextOfKin].relationship[relationshipType].CodeableConcept only Patient_Contact_Relationship_Roles_VS (required) 

* contact[employer].relationship = #E

* communication MS 

* generalPractitioner MS 

* link MS 