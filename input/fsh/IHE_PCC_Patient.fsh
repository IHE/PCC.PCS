Profile:        IHE_PCC_Patient
Parent:         PatientUvIps
Id:             IHE.PCC.Patient
Title:          "IHE PCC Patient"
Description:    "Combines the requirements and contraints from IPS, and PDQ profiles. review https://profiles.ihe.net/ITI/PDQm/3.1.0/StructureDefinition-IHE.PDQm.Patient.html for additional constraints and descriptions."


* name obeys iti-pdqm-patname

* active MS 

* link MS
  * ^condition = iti-pdqm-linkstatus
  * type
    * ^definition = "The type of link between this patient resource and another patient resource. When this Patient Resource has been subsumed by another, the type SHALL be replaced-by."

* obeys iti-pdqm-linkstatus

* extension contains http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName named MothersMaidenName 0..1 and
     http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender named recordedSexOrGender 0..*
//      pcc-uv-race named UvRace 0..* and 
//      pcc-uv-Ethnicity named UvEthnicity 0..*       

//
//Extension: UvRace
//  Id:  pcc-uv-race
//  Title: "Universal realm Race Extension"
//  Description: "An extension that incoperates the rules and uses of a person's race in a patient resource egnostic of country or realm. Remains an optional element within the resource so that it can be Banned in Country specific profile or implementations"
//  * value[x] only CodeableConcept

//Extension: UvEthnicity
//  Id:  pcc-uv-Ethnicity
//  Title: "Universal realm Ethnicity Extension"
//  Description: "An extension that incoperates the rules and uses of a person's ethnicity in a patient resource egnostic of country or realm. Remains an optional element within the resource so that it can be Banned in Country specific profile or implementations"
//  * value[x] only CodeableConcept




