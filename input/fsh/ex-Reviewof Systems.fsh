Instance:   example-ReviewofSystems-Skin-Assessment
InstanceOf: Observation
Title: "Example PCS Review of Systems Skin Assesment"
Description:      "holding typical values for the PCS Review of Systems Observations."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subject = Reference(Patient/ex-patient)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#8709-8
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/encounter)
* effective[x].effectiveDateTime = "2021-11-08T15:30:45"
* value[x].valueCodeableConcept = http://snomed.info/sct#225544001
