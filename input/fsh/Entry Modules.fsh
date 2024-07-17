Profile:        PSC_Possible_Injury
Parent:         Observation
Id:             PSC.Possible.Injury
Title:          "Possible Injury"
Description:    "Indication whether or not there was an injury."
//Proper loinc code needs to be requested or found
//* code = $loinc#21611-9
* value[x] 1..1
* value[x] only boolean 



Profile:        PSC_Estimated_Age
Parent:         Observation
Id:             PSC.Estimated.Age
Title:          "Estimated Age"
Description:    "The estimated age of the patient. For situations where birthdate is unknown; age is estimated by third party on basis of physical evidence."
//Proper loinc code needs to be requested or found
* code = $loinc#21611-9
* value[x] 1..1
* value[x] only Quantity



Profile:        Last_Oral_Intake
Parent:         Observation
Id:             Last.Oral.Intake
Title:          "Last oral intake Observation"
Description:    "Date and Time of last oral intake."
* code = $loinc#67517-3
* value[x] 1..1
* value[x] only dateTime



Profile:        IHE_PCC_mPSC_BarriersTocare
Parent:         Observation
Id:             IHE.PCC.mPSC.Barriers.To.Care
Title:          "IHE barriers to care observation"
Description:    "Indication of whether or not there were any patient specific barriers to serving the patient."
//* code = $loinc#67515-7
// new loinc code needs to be requested 
* value[x] 1..1 MS 
* value[x] only CodeableConcept 
* valueCodeableConcept from Barrier_To_Care_VS (example)
* dataAbsentReason MS 
//* value[x].coding from NEMSIS.Barriers.to.Patient.Care.VS (example)
// Note Data absent reason codes need to be extended to include NEMSIS values 




Profile:        Last_Known_Well
Parent:         Observation
Id:             Last.Known.Well
Title:          "Last Known Well"
Description:    "The estimated date and time the patient was last known to be well or in their usual state of health. This is described or estimated by the patient, family, and/or bystanders."
//Proper loinc code needs to be requested or found
* value[x] 1..1
* value[x] only dateTime

Instance: Ex-LastKnownWell
InstanceOf: Last_Known_Well
Usage: #example
Description: "The Example instance for last known well observation"
* code = http://loinc.org#67517-3
* status  = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2023-08-03T14:14:45-05:00"
* valueDateTime = "2023-08-03T12:00:00-05:00"



Profile:        PSC_Mass_Casualty_Incident
Parent:         Observation
Id:             PSC.Mass.Casualty.Incident
Title:          "PSC Mass Casualty Incident"
Description:    "The indication of weather and incident is considered a mass casualty. A mass casualty incident describes an incident in which emergency medical services resources, such as personnel and equipment, are overwhelmed by the number and severity of casualties."
//Proper loinc code needs to be requested or found
* code = $loinc#67490-3
* value[x] 1..1
* value[x] only CodeableConcept



Profile:        IHE_PCC_mPSC_Number_of_Affected_People  
Parent:         Observation
Id:             IHE.PCC.mPSC.Number.of.Affected.People  
Title:          "Number of Affected People "
Description:    "The number of effected people that are present at the incident. This numeric does not apply to the number of providers at the incident."
//Proper loinc code needs to be requested or found
* code = $loinc#67489-5
* value[x] 1..1
* value[x] only integer 



Profile:        IHE_PCC_mPSC_Patient_Activity  
Parent:         Observation
Id:             IHE.PCC.mPSC.Patient.Activity 
Title:          "Patient Activity"
Description:    "The Narrative explanation of what the patient was doing prior to the onset of a condition or injury."
//Proper loinc code needs to be requested or found
* code = $loinc#11372-0
* value[x] 1..1 MS



Profile:        Mechanism_Of_Injury 
Parent:         Observation
Id:             Mechanism.Of.Injury 
Title:          "Mechanism of Injury"
Description:    "The General mechanism of the forces which caused the injury."
//Proper loinc code needs to be requested or found
* code = $loinc#67494-5
* value[x] 1..1
* value[x] only CodeableConcept 
* valueCodeableConcept from Mechanism_Of_Injury_VS (example)


Profile:        Height_of_Fall  
Parent:         Observation
Id:             Height.of.Fall   
Title:          "Height of Fall"
Description:    "The distance the patient fell."
* code = $loinc#67501-7
* value[x] 1..1
* value[x] only Quantity 



Profile:        Safety_Equipment_Used  
Parent:         Observation
Id:             Safety.Equipment.Used   
Title:          "Safety Equipment Used"
Description:    "The observation of the Safety Equipment used. "
* code = $loinc#11457-9
* value[x] 1..1
* value[x] only CodeableConcept 



Profile:        Protective_Equipment_Used  
Parent:         Observation
Id:             Protective.Equipment.Used   
Title:          "Protective Equipment Used"
Description:    "The observation of the Protective Equipment used. "
// * code = $loinc#11457-9 new code needs to be requested
* value[x] 1..1
* value[x] only CodeableConcept 



Profile:        PSC_Activation_of_destination_Team  
Parent:         Observation
Id:             PSC.Activation.of.destination.Team     
Title:          "Activation of the destination healthcare facility team"
Description:    "Activation of the destination healthcare facility team."
* code = $loinc#69462-0
* value[x] 1..1
* value[x] only CodeableConcept 



Profile:        Work_Place_Injury_Indicator  
Parent:         Observation
Id:             Work.Place.Injury.Indicator     
Title:          "Work Place Injury Indicator"
Description:    "An observation indicating if the injury happened at the patient's work place."
// * code = $loinc#69462-0 Proper code needs to be found or requested
* value[x] 1..1
* value[x] only boolean



Profile:        PSC_Collision_Data  
Parent:         Observation
Id:             PSC.Collision.Data     
Title:          "Collision Data"
Description:    "The Observation Organizer that contains the Information relivant to a Collision event."
// * code = $loinc#69462-0 Proper code needs to be found or requested
* hasMember MS 
// TODO finish making the observation entries for this has memeber 