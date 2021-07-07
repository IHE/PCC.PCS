Profile:   IHE_PCS_Composition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id:             IHE.PCC.PCS.Composition
Title: "Paramedicince Care Summary Composition"
Description:      "composition of the FHIR elements that are used to build the FHIR Document for the Paramedicine Care Summary"
* encounter 1..1
//* encounter = Reference (IHE-PCS-Encounter-CompleteReport/ IHE-PCS-Encounter-ClinicalSubset/ IHE-PCS-Encounter-CompleteReport-US/ IHE-PCS-Encounter-ClinicalSubset-US) 

* Patient 1..1

* event.code 1..*

* section:sectionFunctionalStatus 1..1


