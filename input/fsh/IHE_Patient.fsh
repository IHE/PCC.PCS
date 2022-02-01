Profile:   IHE_Patient
Parent: PatientUvIps
Id:             IHE.Patient
Title: "IHE Patient"
Description:      "The IHE Patient Resource to include additional Patient elements."
//Note: In some jurisdictions, it is prohibited to send race and/or ethnicity. Use of this option may be constrained by national extension.
// Note: Age: 

* extension contains Race named Race 0..* 
//Note: Optional

* extension contains Ethnicity named Ethnicity 0..* 
//Note: Optional

* extension contains AlternativeResidence named AlternativeResidence 0..* 
//Note: Optional


Extension: Race
Id: Race
Description: "Race(s) that best describes what the patient considers himself/herself to be."
* extension contains
	CodeableConcept 0..* MS
	text 0..1 MS
* extension[Race].valueCodeableConcept from OmbRaceCategories (example)
//Note: In some jurisdictions, it is prohibited to send race and/or ethnicity. Use of this option may be constrained by national extension.  

Extension: Ethnicity
Id: Ethnicity
Description: "Patient’s ethnicity"
	CodeableConcept 0..* MS
	text 0..1 MS
* extension[Ethnicity].valueCodeableConcept from DetailedEthnicity (example)
//Note: In some jurisdictions, it is prohibited to send race and/or ethnicity. Use of this option may be constrained by national extension.  

Extension: AlternativeResidence
Id: AlternativeResidence
Description: "The Patient Address informaton that indicates patient address when it cannot be that is documented when exact address, such as homelessness, or migrant worker status."
* extension[AlternativeResidence].CodableConcept from NEMSIS.Alternate.Home.Residence.VS (example)



// ToDo: finish this when you figure out how to keep it US core centric but still related to the IHE patient 
//Profile:   IHE_Patient_US_Extension
//Parent: IHE_Patient
//Id:             IHE.Patient.US.Extension
//Title: "IHE Patient US Extension"
//Description:      "The IHE Patient US Extension incorperates the requirements from both of hl7's International patient Summary, US-core-Patient, and IHE's patient resources."

//* extension[Race]. us-core-race contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
//* extension us-core-ethnicity contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity
//* extension us-core-birthsex contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex
//Note: Exension UC core race ethnicity what to do , replace, profile on top of ??

//* address.line MS
//* address.city MS
//* address.state MS
//* address.state from UspsTwoLetterAlphabeticCodes (extensible)
//* address.postalCode MS
//* address.period MS 
//* extension contains HomeCensusTract named HomeCensusTract 0..* 

//Extension: HomeCensusTract
//Id: address.HomeCensusTract
//Description: "The census tract in which the patient lives."
//* extension value[x] = valueString


