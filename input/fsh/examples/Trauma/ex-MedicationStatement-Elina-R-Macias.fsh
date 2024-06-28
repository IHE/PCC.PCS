Instance: ex-Patient-Elina-R-Macias-MedicationStatement-Warfarin 
InstanceOf: MedicationStatementIPS
Usage: #example
Description: "The instance for Patient Elina R Macias MedicationStatement-Warfarin Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/ValueSet/medication-statement-status#final
* medicationCodeableConcept = $RxNorm#11289 "warfarin"
* dosage.doseAndRate.doseQuantity = 3 $ucum#mg "mg"
* dosage.route = $sct#26643006  "Oral use"
* dosage.timing = 1 $ucum#d "day"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T8:48:00GMT-05:00"