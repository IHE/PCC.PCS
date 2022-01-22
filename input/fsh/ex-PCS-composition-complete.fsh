Instance:   ex-PCS-Composition-CompleteReport_Cardiac
InstanceOf: IHE.PCC.PCS.Composition.CR
Title: "Example of a Paramedicine Care Summary Complete Report Composition"
Description:      "holding typical values for PCS Complete Report"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/fa51192c-c36a-4b0a-84c1-9dc6fded7c2c)
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActClass#ENC

* section[sectionMedications].entry[medicationStatement] [+] = Reference(MedicationStatementIPS/ba2837b7-bdf5-4178-b422-a808631b2197)
* section[sectionMedications].entry[medicationStatement] [+] = Reference(MedicationStatementIPS/48991823-f1ca-4a59-95cd-5d0a9bf88ac3)
* section[sectionMedications].entry[medicationsAdministered] = Reference(MedicationStatementIPS/)

Instance: Inline-Instance-for-MedicationStatementIPS-warfarin
InstanceOf: MedicationStatementIPS
Usage: #inline
* id = "ba2837b7-bdf5-4178-b422-a808631b2197"
* status = #active
* medicationReference = Reference(MedicationIPS/ba2837b7-bdf5-4178-b422-a808631b2197)
* doseQuantity.value = 2
* doseQuantity.unit = "Milligrams (mg)"
* route = $NEMSIS#9927035
* timing.code = http://hl7.org/fhir/ValueSet/timing-abbreviation#QD

Instance: Inline-Instance-for-Medication-warfarin
InstanceOf: MedicationIPS
Usage: #inline
* id = "ba2837b7-bdf5-4178-b422-a808631b2197"
* status = #active
* code = $RxNorm#11289 

Instance: Inline-Instance-for-MedicationStatementIPS-minoxidil
InstanceOf: MedicationStatementIPS
Usage: #inline
* id = "48991823-f1ca-4a59-95cd-5d0a9bf88ac3"
* status = #active
* medicationReference = Reference(MedicationIPS/25935fdd-f880-4a67-9b6d-25158fabe165)
* doseQuantity.value = 10
* doseQuantity.unit = "Milligrams (mg)"
* route = $NEMSIS#9927035
* timing.code = http://hl7.org/fhir/ValueSet/timing-abbreviation#BID

Instance: Inline-Instance-for-Medication-minoxidil
InstanceOf: MedicationIPS
Usage: #inline
* id = "25935fdd-f880-4a67-9b6d-25158fabe165"
* status = #active
* code = $RxNorm#6984  

Instance: Inline-Instance-for-medicationsAdministered-oxygen
InstanceOf: MedicationStatementIPS
Usage: #inline
* id = "cb66a3b4-e5fe-4176-860d-eab731b2dae3"
* status = #completed 
* partOf = Reference(MedicationAdministration/16532367-9ba3-4d2f-bbb7-43b0a6b17997)
* medicationReference = Reference(MedicationIPS/)
* doseQuantity.value = 12
* doseQuantity.unit = "Liters Per Minute (LPM [gas])"
* route = $NEMSIS#9927065

Instance: Inline-Instance-for-MedicationAdministration-oxygen
InstanceOf: MedicationAdministration
Usage: #inline
* id = "16532367-9ba3-4d2f-bbb7-43b0a6b17997"
* effectiveDateTime = "2021-10-06T10:53:40-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/fa51192c-c36a-4b0a-84c1-9dc6fded7c2c)
* performer = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-Medication-oxygen
InstanceOf: MedicationIPS
Usage: #inline
* id = "1ba55a0b-671d-4c98-9b79-97edcd6e7697"
* status = #active
* code = $RxNorm#7806 