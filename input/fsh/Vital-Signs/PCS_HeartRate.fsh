Profile:        PCS_Heart_Rate
Parent:         Observation
Id:             PCS.Heart.Rate
Title:          "PCS Heart Rate"
Description:    "The heart rate vital sign."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8867-4
* status = #final
* subject 1..1
* subject only Reference(Patient)
* valueQuantity.unit = "{beats}/min;{counts/min}"
* valueQuantity.system = http://unitsofmeasure.org
* method 0..1 MS
* method from https://loinc.org/LL3626-0 (preferred)
* dataAbsentReason from PCS_Data_Absent_Reasons_VS (preferred)



Instance:   PCS-Heart-Rate-NEMSIS-Example
InstanceOf: PCS.Heart.Rate.NEMSIS
Title: "Example of PCS ECG Type NEMSIS"
Description:      "holding typical values for a NEMSIS ECG Vital Sign"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effectiveDateTime = 2022-01-17T07:23:53-07:00
* valueQuantity = 82.0 '/min'
* method = $loinc#LA24028-5


Instance:   PCS-Heart-Rate-NEMSIS-Example-NOT-Values
InstanceOf: PCS.Heart.Rate.NEMSIS
Title: "Example of PCS Heart Rate NEMSIS Example with NOT Values."
Description:      "Example of PCS ECG Type NEMSIS when there are Not Values Present."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effectiveDateTime = 2022-01-17T07:23:53-07:00
* dataAbsentReason = #not-applicable


Instance:   PCS-Heart-Rate-NEMSIS-Example-Pertinent-Negatives
InstanceOf: PCS.Heart.Rate.NEMSIS
Title: "Example of PCS Heart Rate NEMSIS Example with Pertinent Negatives."
Description:      "Example of PCS ECG Type NEMSIS when there are Pertinent Negatives Present."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effectiveDateTime = 2022-01-17T07:23:53-07:00
* dataAbsentReason = #unable-to-complete