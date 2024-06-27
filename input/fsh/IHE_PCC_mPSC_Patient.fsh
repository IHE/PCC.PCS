Profile:        IHE_PCC_mPSC_Patient
Parent:         https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient
Id:             IHE.PCC.mPSC.Patient
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
* contact.relationship from Patient_Contact_Relationship_Roles_VS (required)
* contact.name MS 
* contact.telecom MS 
* contact.address MS 
* contact.organization MS

* communication MS 

* generalPractitioner MS 

* link MS 