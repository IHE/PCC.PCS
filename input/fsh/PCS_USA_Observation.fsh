Profile:   IHE_PCS_USA_Observation
Parent: Observation
Id:             IHE.PCC.PCS.Observation
Title: "PCS USA Observation"
Description:      " This profile represents the Observation resource used in the USA Implementation."

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
* dataAbsentReason MS
* dataAbsentReason ^slicing.discriminator.type = #pattern
* dataAbsentReason ^slicing.discriminator.path = "$this"
* dataAbsentReason ^slicing.rules = #closed
* dataAbsentReason ^slicing.description = "Data absent reasons devided by EMS data absent categories"
* dataAbsentReason contains
	NOTValue 0..1 MS
	PertinentNegative 0..1 MS
* dataAbsentReason[NOTValue] from PCS_Data_Absent_Reasons_NV_VS (required)
* dataAbsentReason[PertinentNegative] from PCS_Data_Absent_Reasons_PN_VS (required)

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