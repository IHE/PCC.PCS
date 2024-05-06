Profile:        ParamedicineUnit
Parent:         Location
Id:             IHE.PCC.ParamedicineUnit
Title:          "Paramedicine Unit"
Description:    "TBD"

* identifier 1..* MS 
// eResponse.04 - EMS Response Number
// NIctiz Ride number
* status MS 
* mode = #instance
* name 1..1 MS 
// eResponse.14 - EMS Unit Call Sign
// nictiz  Ambulance number

* type 1..* MS 
// Type SHALL indicatate either MOBL for "Mobile Unit" OR AMB "Ambulance" to indicate that it is a paramedicine unit.
// New value set may need to be deffined 

//* extension contains ParamedicineCrew named ParamedicineCrew 0..* MS
* managingOrganization 	1..1 MS 

//Profile:        ParamedicineUnitCrew
//Parent:         CareTeam
//Id:             IHE.PCC.ParamedicineUnitCrew
//Title:          "Paramedicine Unit Crew"
//Description:    "TBD"

//* category = $loinc#LA27975-4
//* name = "Paramedicine Unit Crew"
//* participant 1..* MS 
//    * extenation contains healthcareServiceLevel 0..* MS 
//* participant[role] 1..* MS 
//* participant[member] 1..1 MS 
//* participant[healthcareServiceLevel] 1..1 MS from http://terminology.hl7.org/ValueSet/v2-2.7-0360 (example) 


//Extension: ParamedicineCrew
//Id: ParamedicineCrew
//Title: "Paramedicine Crew"
//Description: "TBD"
//* ^context[+].type = #element
//* ^context[=].expression = "ParamedicineCrew"
//* Extension only Reference(ParamedicineUnitCrew)


Profile:        ParamedicineOrganization 
Parent:         Organization 
Id:             IHE.PCC.ParamedicineOrganization 
Title:          "Paramedicine Organization "
Description:    "TBD"

* identifier 1..* MS 
// Constraint at least 1 of the Identitfieers SHALL be the organization's provider NPI
//eResponse.01 - EMS Agency Number
//dAgency.02 - EMS Agency Number
//dAgency.01 - EMS Agency Unique State ID
* name MS 
* type MS 
* telecom MS 
* address MS  