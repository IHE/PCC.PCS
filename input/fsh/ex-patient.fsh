Profile:   IHE_PCS_Patient
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Id:             IHE.PCC.PCS.Patient
Title: "Paramedicince Care Summary Patient"
Description:      "The IPS Patient extended to include the needed elements"

Extension: Race
Id: Race
Title: "PCS patient Race extension"
Description: "extending IPS patient Resource to inclue the patient's race and ethnicity"
* value[x] only CodeableConcept 
* value[x].valueCodeableConcept from http://terminology.hl7.org/CodeSystem/v3-Race (example)


