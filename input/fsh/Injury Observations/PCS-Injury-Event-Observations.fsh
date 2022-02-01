Profile:   PCS_Primary_Injury_Cause_Observation
Parent: Observation
Id:             PCS.Primary.Injury.Cause.Observation
Title: "Primary Injury Cause Observation"
Description:      "contains primary injury cause observations for the patient."
* code = $loinc#69543-7
* value[X] 1..1
* valueCodeableConcept from http://hl7.org/fhir/sid/icd-10 (preferred) 
//TODO Value set verify it is the correct reference  


Profile:   PCS_Supplemental_Injury_Cause_Observation 
Parent: Observation
Id:             PCS.Supplemental.Injury.Cause.Observation
Title: "Supplemental Injury Cause"
Description:      "contains supplemental injury cause observations for the patient."
* code = $loinc#74292-4
* value[X] 1..1
* valueCodeableConcept from http://hl7.org/fhir/sid/icd-10 (preferred)


Profile:   PCS_Work_Related_Injury_Observation
Parent: Observation
Id:             PCS.Work.Related.Injury.Observation
Title: "Work Related Injury Observation"
Description:      "contains work related injury indicator observations for the patient."
* code = $loinc#67554-6
* value[X] 1..1
* valueCodeableConcept from PCS.Yes.No.Unknown.VS (preferred) 
//TODO verify value set 

ValueSet: PCS_Yes_No_Unknown_VS
Description: "The values to indicate the Yes, No, Unknown responces."
Id: PCS.Yes.No.Unknown.VS
* codes from system expandedYes-NoIndicator

ValueSet: NEMSIS_Yes_No_Unknown_VS
Description: "The NEMSIS Specific Values to indicate the Yes, No, Unknown responces. "
Id: NEMSIS.Yes.No.Unknown.VS
* NEMSIS#9922001	"No"
* NEMSIS#9922003	"Unknown"
* NEMSIS#9922005	"Yes"

// http://terminology.hl7.org/CodeSystem/v2-0532 
// UNK	unknown





Profile:   PCS_Height_of_Fall_Observation 
Parent: Observation
Id:             PCS.Height.of.Fall.Observation
Title: "Height of Fall Observation"
Description:      "contains supplemental injury cause observations for the patient, specific to fall height."
* code = $loinc#67501-7
* value[X] 1..1
* Value[X] only valueInteger

 



Profile:   PCS_Airbag_Deployment_Observation 
Parent: Observation
Id:             PCS.Airbag.Deployment.Observation
Title: "Airbag Deployment Observation"
Description:      "contains airbag deployment observations for the patient."
* code = $loinc#67500-9
* value[X] 1..1
* value[X] only valueCodeableConcept
//TODO Value set verify it is the correct reference  



Profile:   PCS_Safety_Equipment_Used_Observation 
Parent: Observation
Id:             PCS.Safety.Equipment.Used.Observation
Title: "Safety Equipment Used Observation"
Description:      "contains safety equipment used observations for the patient."
* code = $loinc#67499-4
* value[X] 1..1
* value[X] only valueCodeableConcept 


Profile:   PCS_Location_of_Patient_in_Vehicle_Observation 
Parent: Observation
Id:             PCS.Location.of.Patient.in.Vehicle.Observation
Title: "Location of Patient in Vehicle Observation"
Description:      "contains Location of the Patient in a Vehicle observations."
* code = $loinc#67498-6
* value[X] 1..1
* value[X] only valueCodeableConcept

Profile:   PCS_Location_of_Impact_on_the_Vehicle_Observation 
Parent: Observation
Id:             PCS.Location.of.Impact.on.the.Vehicle.Observation
Title: "Location of Impact on the Vehicle Observation"
Description:      "contains Location of impact on the vehicle observations."
* code = $loinc#67497-8
* value[X] 1..1
* value[X] only valueCodeableConcept

//Profile:   PCS_Seat_Occupied_Observation 
//Parent: Observation
//Id:             PCS.Seat.Occupied.Observation
//Title: "Seat Occupied Observation"
//Description:      "contains the seat the Patient was in a Vehicle injury event observations."
//* code = $loinc#
//* value[X] 1..1
//* value[X] only valueCodeableConcept from (preferred) 
//TODO Identify value set and loinc code 

Profile:   PCS_Use_of_Vehical_Occupant_Safety_Equipment_Observation 
Parent: Observation
Id:             PCS.Use.of.Vehical.Occupant.Safety.Equipment.Observation
Title: "Use of Vehical Occupant Safety Equipment Observation"
Description:      "contains the Use of Occupant Safety Equipment observation in a vehical injury event."
* code = $loinc#67499-4
* value[X] 1..1
* value[X] only valueCodeableConcept