Profile:        PCS_ECG_Type_NEMSIS
Parent:         Observation
Id:             PCS.ECG.Type.NEMSIS
Title:          "PCS ECG Type NEMSIS"
Description:    "The type of ECG associated with the cardiac rhythm."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#71575-5
* effectiveDateTime 1..1
* status = #final
* subject 1..1
* subject only Reference(Patient)
* note 0..1

Instance:   pcc-ecg-type-nemsis-example 
InstanceOf: PCS.ECG.Type.NEMSIS
Title: "Example of PCS ECG Type NEMSIS"
Description:      "holding typical values for a NEMSIS ECG Vital Sign"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effectiveDateTime = 2022-01-17T07:18:53-07:00
* valueCodeableConcept = $loinc#LA18667-8