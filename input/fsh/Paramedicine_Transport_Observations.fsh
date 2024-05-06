Profile:        ParamedicineTransportInstructions
Parent:         Observation
Id:             IHE.PCC.ParamedicineTransportInstructions
Title:          "Paramedicine Transport Instructions"
Description:    "TBD"

* code = $loinc#74213-0
* focus = Reference(Patient.Transport)
* value[x] only valueString

Profile:        Round_Trip_Purpose_Description
Parent:         Observation
Id:             IHE.PCC.Round_Trip_Purpose_Description
Title:          "Paramedicine Transport Round Trip Purpose Description"
Description:    "TBD"

* code = $loinc#15513-5
* focus = Reference(Patient.Transport)
* value[x] only valueString

Profile:        TrasnportIndicator
Parent:         Observation
Id:             IHE.PCC.TrasnportIndicator
Title:          "Paramedicine Trasnport Indicator"
Description:    "TBD"

* code = $loinc#100040-5
* focus = Reference(Patient.Transport)

Profile:        TrasnportDisposition
Parent:         Observation
Id:             IHE.PCC.TrasnportDisposition
Title:          "Paramedicine Trasnport Disposition"
Description:    "TBD"

* code = $loinc#100040-5
* focus = Reference(Patient.Transport)
* value[x] only valueCodeableConcept from https://loinc.org/LL6222-5 (example)

Profile:        Transport_Destination_Reason
Parent:         Observation
Id:             IHE.PCC.TrasnportDestination.Reason
Title:          "Paramedicine Trasnport Destination Reason"
Description:    "TBD"

* code = $loinc#67552-0
* focus = Reference(Patient.Transport)
* value[x] only valueCodeableConcept from https://loinc.org/LL1802-9 (example)

Profile:        Transport_Reason
Parent:         Observation
Id:             IHE.PCC.Trasnport.Reason
Title:          "Paramedicine Trasnport Reason"
Description:    "TBD"

* code = $loinc#15515-0
* focus = Reference(Patient.Transport)
* value[x] only valueCodeableConcept from https://loinc.org/LL508-3 (example)

Profile:        No_Transport_Reason
Parent:         Observation
Id:             IHE.PCC.No.Trasnport.Reason
Title:          "Paramedicine No Trasnport Reason"
Description:    "TBD"

* code = $sct#445032002 
* focus = Reference(Patient.Transport)
* value[x] only valueCodeableConcept

Profile:        PatientMovedToAmbulance
Parent:         Observation
Id:             IHE.PCC.PatientMovedToAmbulance
Title:          "How Patient was Moved To Ambulance"
Description:    "TBD"

* code = $sct#370125004 
* focus = Reference(Patient.Transport)
* value[x] only valueCodeableConcept 

Profile:        PatientMovedFromAmbulance
Parent:         Observation
Id:             IHE.PCC.PatientMovedFromAmbulance
Title:          "How Patient was Moved From Ambulance"
Description:    "TBD"

* code = $sct#384598002
* focus = Reference(Patient.Transport)
* value[x] only valueCodeableConcept 

Profile:        PatientPosition
Parent:         Observation
Id:             IHE.PCC.PatientPosition
Title:          "Paramedicine Patient Trasnport Position"
Description:    "TBD"

* code = $sct#246273001 
* focus = Reference(Patient.Transport)
* value[x] only valueCodeableConcept 


Profile:        StretcherPurposeDescription
Parent:         Observation
Id:             IHE.PCC.StretcherPurposeDescription
Title:          "Paramedicine Patient Trasnport Stretcher Purpose Description"
Description:    "TBD"

* code = $loinc#18588-4
* focus = Reference(Patient.Transport)
* value[x] only valueString 

Profile:        Activation_Of_Destination_Facility_Team
Parent:         Observation
Id:             IHE.PCC.Activation.Of.Destination.Facility.Team
Title:          "Paramedicine Patient Trasnport Activation Of Destination Facility Team"
Description:    "TBD"

* code = $loinc#69462-0
* focus = Reference(Patient.Transport)
* value[x] only valueCodeableConcept from https://loinc.org/LL1951-4 (example)
* effectiveDateTime 1..1 MS 
// eDisposition.25 - Date/Time of Destination Prearrival Alert or Activation

Profile:        NumberOfPatientsTransported
Parent:         Observation
Id:             IHE.PCC.numberOfPatientsTransported
Title:          "Paramedicine Patient Trasnport number Of Patients Transported"
Description:    "TBD"

* code = $loinc#67547-0
* focus = Reference(Patient.Transport)
* value[x] only valueInteger

Profile:        Disposition_Instructions_Provided
Parent:         Observation
Id:             IHE.PCC.Disposition.Instructions.Provided
Title:          "Paramedicine Patient Disposition Instructions Provided"
Description:    "TBD"

* code = $loinc#89187-9
* focus = Reference(Patient.Transport)
* value[x] only valueCodeableConcept from https://loinc.org/LL5016-2 (example)
//TODO