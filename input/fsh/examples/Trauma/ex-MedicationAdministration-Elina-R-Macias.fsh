Instance:   ex-MedicationAdministration-Elina-R-Macias-Morphine
InstanceOf: IHE_PCC_mPSC_MedicationAdministration 
Title:      "Paramdicine Summary Paramedicine MedicationAdministration example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "The instance for Patient Elina R Macias MedicationStatement-Warfarin Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://terminology.hl7.org/CodeSystem/medication-admin-status#in-progress
* effectiveDateTime = "2022-10-09T08:52:00-05:00"
* medicationCodeableConcept	= $RxNorm#7052 "morphine"
* dosage.doseAndRate.doseQuantity = 10 $ucum#mg "mg"
* dosage.route = $sct#47625008 "Intravenous use"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* performer.function = $sct#397897005   "Paramedic"
* performer.actor = Reference(Practitioner/ex-Practitioner-Ellen-Costa)
// Complication 
// outcome 
// Authorizaiton 