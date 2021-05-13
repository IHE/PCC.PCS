Profile:   IHE_PCS_Composition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id:             IHE.PCC.PCS.Composition
Title: "Paramedicince Care Summary Composition"
Description:      "composition of the FHIR elements that are used to build the FHIR Document for the Paramedicine Care Summary"
* encounter 1..1
//* encounter = Reference (IHE-PCS-Encounter-CompleteReport/ IHE-PCS-Encounter-ClinicalSubset/ IHE-PCS-Encounter-CompleteReport-US/ IHE-PCS-Encounter-ClinicalSubset-US) 

*Patient 1..1

*IPS Advance Directives 0..1

*IPS Allergies and Intolerances 1..1

*IPS Medication Summary 1..1

* Medications Administered Section 0..1

*IPS History of Past Illness 0..1

*IPS Functional Status 0...1

*IPS History of Procedures 0..1

*IPS Immunizations 0..1

*IPS Medical Devices 0..1

*IPS Problems 1..1

*IPS Results 0..1

*IPS Vital Signs 0..*

*IPS History of Pregnancy 0..1

*Covrage 0..1



