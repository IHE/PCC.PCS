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
* route = $NEMSIS#9927065
//Note: how to represent the Imporvement of patient status after medication Administration

Instance: Inline-Instance-for-Medication-oxygen
InstanceOf: MedicationIPS
Usage: #inline
* id = "1ba55a0b-671d-4c98-9b79-97edcd6e7697"
* code = $RxNorm#7806



Instance: Inline-Instance-for-medicationsAdministered-epinephrine
InstanceOf: MedicationStatementIPS
Usage: #inline
* id = "3213f402-1ea7-4648-bc41-c3cb448fc76c"
* status = #completed 
* partOf = Reference(MedicationAdministration/2adc407e-eaca-4805-8592-61e299b995d3)
* medicationReference = Reference(MedicationIPS/06af537f-8ead-4b0d-85ee-6c0da2ada4b2)
* doseQuantity.value = 1
* doseQuantity.unit = "Milligrams (mg)"
* route = $NEMSIS#9927023

Instance: Inline-Instance-for-MedicationAdministration-epinephrine
InstanceOf: MedicationAdministration
Usage: #inline
* id = "2adc407e-eaca-4805-8592-61e299b995d3"
* effectiveDateTime = "2021-10-06T10:56:00-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/fa51192c-c36a-4b0a-84c1-9dc6fded7c2c)
* performer = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* route = $NEMSIS#99270235
//Note: how to represent the Imporvement of patient status after medication Administration

Instance: Inline-Instance-for-Medication-epinephrine
InstanceOf: MedicationIPS
Usage: #inline
* id = "06af537f-8ead-4b0d-85ee-6c0da2ada4b2"
* code = $RxNorm#317361




Instance: Inline-Instance-for-medicationsAdministered-amiodarone
InstanceOf: MedicationStatementIPS
Usage: #inline
* id = "b05f68a2-1922-4fca-a94a-03acc1731044"
* status = #completed 
* partOf = Reference(MedicationAdministration/6f30f0ef-d560-4ccc-bb24-e4ca00d41431)
* medicationReference = Reference(MedicationIPS/955427a5-3d44-4dfe-82a4-da83c234e7d4)
* doseQuantity.value = 5
* doseQuantity.unit = "Milligrams per Kilogram (mg/kg)"
* route = $NEMSIS#9927023

Instance: Inline-Instance-for-MedicationAdministration-amiodarone
InstanceOf: MedicationAdministration
Usage: #inline
* id = "6f30f0ef-d560-4ccc-bb24-e4ca00d41431"
* effectiveDateTime = "2021-10-06T10:57:40-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/fa51192c-c36a-4b0a-84c1-9dc6fded7c2c)
* performer = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* route = $NEMSIS#99270235
//Note: how to represent the Imporvement of patient status after medication Administration
//Note: how to represent medication medication authorization type

Instance: Inline-Instance-for-Medication-amiodarone
InstanceOf: MedicationIPS
Usage: #inline
* id = "955427a5-3d44-4dfe-82a4-da83c234e7d4"
* code = $RxNorm#703