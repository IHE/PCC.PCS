Profile:   IHE_Patient
Parent: PatientUvIps
Id:             IHE.Patient
Title: "IHE Patient"
Description:      "The IHE Patient Resource to include additional Patient elements."
//Note: In some jurisdictions, it is prohibited to send race and/or ethnicity. Use of this option may be constrained by national extension.

* extension contains Race named Race 0..* 
//Note: Optional

* extension contains Ethnicity named Ethnicity 0..* 
//Note: Optional

* extension contains Age named Age 0..* 
//Note: Optional

* extension contains AlternativeResidence named AlternativeResidence 0..* 
//Note: Optional


Extension: Race
Id: Race
Description: "Race(s) that best describes what the patient considers himself/herself to be."
* extension[Race].value[x] = valueCodeableConcept
//Note: In some jurisdictions, it is prohibited to send race and/or ethnicity. Use of this option may be constrained by national extension.  

Extension: Ethnicity
Id: Ethnicity
Description: "Patient’s ethnicity"
* extension[Ethnicity].value[x] = valueCodeableConcept
//Note: In some jurisdictions, it is prohibited to send race and/or ethnicity. Use of this option may be constrained by national extension.  

Extension: Age 
Id: Age
Description: "The Patient age that is documented when exact BirthDate is unknown, or calculated from the birthdate."
* extension[Age].value[x] = valueQuantity


Extension: AlternativeResidence
Id: AlternativeResidence
Description: "The Patient Address informaton that indicates patient address when it cannot be that is documented when exact address, such as homelessness, or migrant worker status."
* extension[AlternativeResidence].CodableConcept from IHE.Patient.Alternative.Residence.VS (extensible)

ValueSet: IHE_Patient_Alternative_Residence_VS
Description: "The values that can be used to describe the alternative residence of a patient for patients without home adresses or postal codes."
Id: IHE.Patient.Alternative.Residence.VS
* SCT#32911000	"Homeless"



Profile:   IHE_Patient_US_Extension
Parent: IHE_Patient
Id:             IHE.Patient.US.Extension
Title: "IHE Patient US Extension"
Description:      "The IHE Patient US Extension incorperates the requirements from both of hl7's International patient Summary, US-core-Patient, and IHE's patient resources."


* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex
//Note: Exension UC core race ethnicity what to do , replace, profile on top of ??

* address.line MS
* address.city MS
* address.state MS
* address.state from UspsTwoLetterAlphabeticCodes (extensible)
* address.postalCode MS
* address.period MS 
* extension contains HomeCensusTract named HomeCensusTract 0..* 

Extension: HomeCensusTract
Id: address.HomeCensusTract
Description: "The census tract in which the patient lives."
* extension[HomeCensusTract].value[x] = valueString

