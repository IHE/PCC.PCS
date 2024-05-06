Profile:        EMD_Performed
Parent:         Observation 
Id:             IHE.PCC.EMD.Performed
Title:          "Emergency medical dispatch performed"
Description:    "Indication of whether Emergency Medical Dispatch was performed for this EMS event."
* code = $loinc#67488-7
* effectiveDateTime MS 
* dataAbsentReason MS 

Profile:        PSAPCallDateTime
Parent:         Observation 
Id:             IHE.PCC.PSAPCallDateTime
Title:          "PSAP Call DateTime"
Description:    "call to public safety answering point"
* code = $loinc#69469-5
* value only valueDateTime 
* dataAbsentReason MS 


Profile:        UnitNotifiedDateTime
Parent:         Observation 
Id:             IHE.PCC.UnitNotifiedDateTime
Title:          "Unit Notified DateTime"
Description:    "The date/time the responding unit was notified by dispatch."
* code = $loinc#69471-1
* value only valueDateTime 
* dataAbsentReason MS 


Profile:        DispatchNote
Parent:         Observation 
Id:             IHE.PCC.DispatchNote
Title:          "Paramedicine Dispatch Note"
Description:    "TBD"
* code = $loinc#34109-9
* value only valueString
* dataAbsentReason MS 


Profile:        PatientIdentificationVerified
Parent:         Observation 
Id:             IHE.PCC.patientIdentificationVerificationPerformed
Title:          "patient Identification was Verified"
Description:    "TBD"
* code = $sct#736728004
* value[x] only valueBoolean
* performer 1..* MS
* effectiveDateTime MS 


Profile:        PatientIdentification
Parent:         Observation 
Id:             IHE.PCC.PatientIdentification
Title:          "Patient Identification Procedure"
Description:    "Patient Identification Procedure Observation"
* code = $sct#372039005
* effectiveDateTime MS 
* value only valueReference only Reference(DocumentReference or WIDExternalDocument)

Profile:        WIDExternalDocument
Parent:         Observation 
Id:             IHE.PCC.WIDExternalDocument
Title:          "ID External Document"
Description:    "TBD"

* identifier 1..* MS 
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "code"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "ID External Document identifier type"
* identifier ^slicing.ordered = false
* identifier[DL] = http://hl7.org/fhir/ValueSet/identifier-type#DL  "Driver's license number"
* identifier[PPN] = http://hl7.org/fhir/ValueSet/identifier-type#PPN  "Passport number"
    * type 1..1 MS 
    * value 1..1 MS 
    * assigner	0..1 MS
* status = #current


