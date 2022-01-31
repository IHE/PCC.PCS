Profile:        PCS_Heart_Rate_NEMSIS
Parent:         Observation
Id:             PCS.Heart.Rate.NEMSIS
Title:          "PCS Heart Rate NEMSIS"
Description:    "The heart rate vital sign compliant with NEMSIS documentation."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8867-4
* effectiveDateTime 1..1
* status = #final
* subject 1..1
* subject only Reference(Patient)
* valueQuantity.unit = "{beats}/min;{counts/min}"
* method 1..1
* method from NEMSIS.Method.of.Heart.Rate.Measurement.VS (example)
* note 0..1


Instance:   PCS-Heart-Rate-NEMSIS-Example
InstanceOf: PCS.Heart.Rate.NEMSIS
Title: "Example of PCS ECG Type NEMSIS"
Description:      "holding typical values for a NEMSIS ECG Vital Sign"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effectiveDateTime = 2022-01-17T07:23:53-07:00
* valueQuantity = 82.0 '/min'
* method = $NEMSIS#3311007


Instance:   PCS-Heart-Rate-NEMSIS-Example-NOT-Values
InstanceOf: PCS.Heart.Rate.NEMSIS
Title: "Example of PCS Heart Rate NEMSIS Example with NOT Values."
Description:      "Example of PCS ECG Type NEMSIS when there are Not Values Present."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effectiveDateTime = 2022-01-17T07:23:53-07:00
* dataAbsentReason = $NEMSIS#7701003
* method = $NEMSIS#3311007

Instance:   PCS-Heart-Rate-NEMSIS-Example-Pertinent-Negatives
InstanceOf: PCS.Heart.Rate.NEMSIS
Title: "Example of PCS Heart Rate NEMSIS Example with Pertinent Negatives."
Description:      "Example of PCS ECG Type NEMSIS when there are Pertinent Negatives Present."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effectiveDateTime = 2022-01-17T07:23:53-07:00
* dataAbsentReason = $NEMSIS#8801023
* method = $NEMSIS#3311007