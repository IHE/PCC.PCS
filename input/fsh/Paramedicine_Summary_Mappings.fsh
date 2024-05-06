Mapping: Paramedicine-Patient-Mapping
Source:	IHE_PCC_Paramedicine_Patient
Target: "NEMSIS"
Title: "NEMSIS to FHIR Mapping"

* identifier.value -> "ePatient.01 - EMS Patient ID"
// where identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier.value -> "ePatient.12 - Social Security Number"
// where identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
* identifier.value -> "ePatient.21 - Driver's License Number"
* identifier.assigner -> "ePatient.20 - State Issuing Driver's License"
// where identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#DL
* name.given -> "ePatient.02 - Last Name"
* name.given -> "ePatient.04 - Middle Initial/Name"
* name.family -> "ePatient.03 - First Name"
* address.line -> "ePatient.05 - Patient's Home Address"
* address.line -> "eScene.20 - Scene Cross Street or Directions"
* address.line -> "eScene.16 - Incident Apartment, Suite, or Room"
* address.city -> "ePatient.06 - Patient's Home City"
* address.district -> "ePatient.07 - Patient's Home County"
* address.state -> "ePatient.08 - Patient's Home State"
* address.postalCode -> "ePatient.09 - Patient's Home ZIP Code"
* address.country -> "ePatient.10 - Patient's Country of Residence"
// where address.use = http://hl7.org/fhir/address-use#home
* gender -> "ePatient.13 - Gender"
* estimatedAge -> "ePatient.15 - Age"
* estimatedAge.unit -> "ePatient.16 - Age Units"
* birthDate -> "ePatient.17 - Date of Birth"
* telecom.value -> "ePatient.18 - Patient's Phone Number"
// where telecom.system = #phone
* telecom.value -> "ePatient.19 - Patient's Email Address"
// where telecom.system = #email 


// NEMSIS codes that can only map to US Real elements:
// - ePatient.11 - Patient Home Census Tract
// ePatient.14 - Race
// ePatient.22 - Alternate Home Residence ??

//Mapping: Paramedicine-Device-Mapping
//Source:	IHE.PCC.Paramedicine.Patient
//Target: "NEMSIS"
//Title: "NEMSIS to FHIR Mapping"

//* -> "eDevice.01 - Medical Device Serial Number"
//* -> "eDevice.02 - Date/Time of Event (per Medical Device)"
//* -> "eDevice.03 - Medical Device Event Type"
//* -> "eDevice.04 - Medical Device Waveform Graphic Type"
//* -> "eDevice.05 - Medical Device Waveform Graphic"
//* -> "eDevice.06 - Medical Device Mode (Manual, AED, Pacing, CO2, O2, etc)"
//* -> "eDevice.07 - Medical Device ECG Lead"
//* -> "eDevice.08 - Medical Device ECG Interpretation"
//* -> "eDevice.09 - Type of Shock"
//* -> "eDevice.10 - Shock or Pacing Energy"
//* -> "eDevice.11 - Total Number of Shocks Delivered"
//* -> "eDevice.12 - Pacing Rate"


//Mapping: Paramedicine-ServiceRequest-Mapping
//Source:	IHE.PCC.PS.ServiceRequest
//Target: "NEMSIS"
//Title: "NEMSIS to FHIR Mapping"

//* -> "eDispatch.01 - Dispatch Reason"
//* -> "eDispatch.02 - EMD Performed"
//* -> "eDispatch.03 - EMD Card Number"
//* -> "eDispatch.04 - Dispatch Center Name or ID"
//* -> "eDispatch.05 - Dispatch Priority (Patient Acuity)"
//* -> "eDispatch.06 - Unit Dispatched CAD Record ID"


//Mapping: Paramedicine-ServiceRequest-Mapping
//Source:	IHE.PCC.PS.ServiceRequest
//Target: "NEMSIS"
//Title: "NEMSIS to FHIR Mapping"
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""


//Mapping: ParamedicineSummary-Composition-ClinicalSubset-Mapping
//Source:	IHE.PCC.ParamedicineSummary.Composition.ClinicalSubset
//Target: "NEMSIS"
//Title: "NEMSIS to FHIR Mapping"
//* -> "eHistory.01 - Barriers to Patient Care"
//* -> "eHistory.02 - Last Name of Patient's Practitioner"
//* -> "eHistory.03 - First Name of Patient's Practitioner"
//* -> "eHistory.04 - Middle Name/Initial of Patient's Practitioner"
//* -> "eHistory.05 - Advance Directives"
//* -> "eHistory.06 - Medication Allergies"
//* -> "eHistory.07 - Environmental/Food Allergies"
//* -> "eHistory.08 - Medical/Surgical History"
//* -> "eHistory.09 - Medical History Obtained From"
//* -> "eHistory.10 - The Patient's Type of Immunization"
//* -> "eHistory.11 - Immunization Year"
//* -> "eHistory.12 - Current Medications"
//* -> "eHistory.13 - Current Medication Dose"
//* -> "eHistory.14 - Current Medication Dosage Unit"
//* -> "eHistory.15 - Current Medication Administration Route"
//* -> "eHistory.20 - Current Medication Frequency"
//* -> "eHistory.16 - Presence of Emergency Information Form"
//* -> "eHistory.17 - Alcohol/Drug Use Indicators"
//* -> "eHistory.18 - Pregnancy"
//* -> "eHistory.19 - Last Oral Intake"
//* -> ""
//* -> ""
//* -> ""





//* -> "eLabs.01 - Date/Time of Laboratory or Imaging Result"
//* -> "eLabs.02 - Study/Result Prior to this Unit's EMS Care"
//* -> "eLabs.03 - Laboratory Result Type"
//* -> "eLabs.04 - Laboratory Result"
//* -> "eLabs.05 - Imaging Study Type"
//* -> "eLabs.06 - Imaging Study Results"
//* -> "eLabs.07 - Imaging Study File or Waveform Graphic Type"
//* -> "eLabs.08 - Imaging Study File or Waveform Graphic"


//* -> "eMedications.01 - Date/Time Medication Administered"
//* -> "eMedications.02 - Medication Administered Prior to this Unit's EMS Care"
//* -> "eMedications.03 - Medication Administered"
//* -> "eMedications.04 - Medication Administered Route"
//* -> "eMedications.05 - Medication Dosage"
//* -> "eMedications.06 - Medication Dosage Units"
//* -> "eMedications.07 - Response to Medication"
//* -> "eMedications.08 - Medication Complication"
//* -> "eMedications.09 - Medication Crew (Healthcare Professionals) ID"
//* -> "eMedications.10 - Role/Type of Person Administering Medication"
//* -> "eMedications.11 - Medication Authorization"
//* -> "eMedications.12 - Medication Authorizing Physician"
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""


//Mapping: Paramedicine-data-absent-reason-ValueSet-Mapping
//Source:	Paramedicine.data.absent.reason.VS
//Target: "NEMSIS"
//Title: "NEMSIS to FHIR Mapping"

//* http://hl7.org/fhir/R4/codesystem-data-absent-reason#not-applicable ->  "7701001	Not Applicable"
//* $sct#1220561009 "Not recorded" ->  "7701003	Not Recorded"
//* $sct#410534003  "Not indicated" ->  "7701005	Not Reporting"
//* $sct#410536001  "Contraindicated" -> "8801001	Contraindication Noted"
//* $sct#441889009  "Denied" -> "8801003	Denied By Order"
//* $sct#373572006  "Clinical finding absent" -> "8801005	Exam Finding Not Present"
//* $sct#416098002  "Allergy to drug" -> "8801007	Medication Allergy"
//* $sct#182834008  "Drug course completed "  -> "8801009	Medication Already Taken"
//* $sct#182833002  "Medication given"  -> "8801009	Medication Already Taken"
//* $sct#409137002  "No known drug allergy" -> "8801013	No Known Drug Allergy"
//* $sct#410534003  "Not indicated" -> "8801015	None Reported"
//* http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed  -> "8801017	Not Performed by EMS"
//* http://terminology.hl7.org/CodeSystem/data-absent-reason#asked-declined  -> "8801019	Refused"
//* $sct#422768004  "Unresponsive"  -> "8801021	Unresponsive"
//* $sct#876785008  "Unobtainable"  -> "8801023	Unable to Complete"
//* $sct#171259000  "Not up to date with immunizations "  -> "8801025	Not Immunized"
// Note: no match * -> "8801027	Order Criteria Not Met"
//* $sct#26175008   "Approximate"  -> "8801029	Approximate"
//* $sct#162275003  "No visual symptom"  -> "8801031	Symptom Not Present"




//* -> ""
//* -> ""
//* -> ""
//* -> ""
//* -> ""
