ValueSet: NEMSIS_Ambulance_Transport_Reason_Code_VS
Description: "TBD"
Id: NEMSIS.Ambulance.Transport.Reason.Code.VS
* HARQ#A "Patient was transported to nearest facility for care of symptoms, complaints, or both "
* HARQ#B "Patient was transported for the benefit of a preferred physician "
* HARQ#C "Patient was transported for the nearness of family members "
* HARQ#D "Patient was transported for the care of a specialist or for availability of specialized equipment "
* HARQ#E "Patient Transferred to Rehabilitation Facility "
* HARQ#F "Patient Transferred to Residential Facility "

CodeSystem:  HARQ
//Name: "Accredited Standards Committee X12"
//Organization Type: 	"Standards Development"
//Abbreviation: 	ASC X12
//URL: 	"Accredited Standards Committee X12 Exit Disclaimer [www.x12.org]"
Title: "Agency for Healthcare Reasearch and Quality"
Id: HARQ
* #A "Patient was transported to nearest facility for care of symptoms, complaints, or both "
* #B "Patient was transported for the benefit of a preferred physician "
* #C "Patient was transported for the nearness of family members "
* #D "Patient was transported for the care of a specialist or for availability of specialized equipment "
* #E "Patient Transferred to Rehabilitation Facility "
* #F "Patient Transferred to Residential Facility "


* dataAbsentReason from PCS_Data_Absent_Reasons_VS
ValueSet: PCS_Data_Absent_Reasons_VS
Description: "TBD"
Id: PCS.Data.Absent.Reason.VS
* codes from system http://terminology.hl7.org/CodeSystem/data-absent-reason
* #not-recorded		"The value is not available because the observation procedure (test, etc.) was not recorded."
* #not-reporting	"The value is not available because the observation procedure (test, etc.) was not being reported."
* #unable-to-complete	"The value is not available because the observation procedure (test, etc.) was not able to be completed."
* #finding-not-present	"The value is not available because the value for the observation procedure (test, etc.) was not present."
* #patient-refused	"The value is not available because the patient refused the observation procedure (test, etc.)."
* #patient-unresponsive	"The value is not available because the patient was unresponsive and the observation procedure (test, etc.) was not able to be performed."

ValueSet: PCS_Data_Absent_Reasons_NV_VS
Description: "TBD"
Id: PCS.Data.Absent.Reason.VS
* codes from system http://terminology.hl7.org/CodeSystem/data-absent-reason
* #not-recorded		"The value is not available because the observation procedure (test, etc.) was not recorded."
* #not-reporting	"The value is not available because the observation procedure (test, etc.) was not being reported."
* #unable-to-complete	"The value is not available because the observation procedure (test, etc.) was not able to be completed."


ValueSet: PCS_Data_Absent_Reasons_PN_VS
Description: "TBD"
Id: PCS.Data.Absent.Reason.VS
* codes from system http://terminology.hl7.org/CodeSystem/data-absent-reason
* #unable-to-complete	"The value is not available because the observation procedure (test, etc.) was not able to be completed."
* #finding-not-present	"The value is not available because the value for the observation procedure (test, etc.) was not present."
* #patient-refused		"The value is not available because the patient refused the observation procedure (test, etc.)."
* #patient-unresponsive	"The value is not available because the patient was unresponsive and the observation procedure (test, etc.) was not able to be performed."


//ValueSet: PCS_Pertinent_Negative_VS
//Description: "TBD"
//Id: PCS.Pertinent.Negative.VS
//* "Contraindication Noted"
//* "Denied By Order"
//* "Medication Allergy"
//* "Medication Already Taken"
//* "No Known Drug Allergy"
//* "None Reported"
//* "Not Performed by EMS"
//* "Not Immunized"
//* "Order Criteria Not Met"
//* "Approximate"
//* "Symptom Not Present"

