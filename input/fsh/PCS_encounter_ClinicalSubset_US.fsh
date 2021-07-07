Profile:   IHE_PCS_Encounter_ClinicalSubset
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.ClinicalSubset
Title: "IHE PCS Encounter Clinical Subset"
Description:      "an encounter resource used to deffine an emergency medical encounter of a patient prior to the patient drop off or transfer of care, US realm"

* identifier 1..*

* subject 1..1
* subject = Reference(StructureDefinition-us-core-patient)

* episodeOfCare 0..1
* episodeOfCare = Reference(episodeOfCare)
* episodeOfCare.identifier 1..1

* basedOn 0..1
* basedOn = Reference(ServiceRequest)

* statusHistory 1..*
* status 1..1 
* StatusHistorySubType 0..1

 
Extension: StatusHistorySubType
Id: Encounter.statusHistorySubType
Description: "Refinement of the Encounter status for steps within EMS"
Title: "PCS Encounter status history sub-type"
* value[x] only CodeableConcept
* valueCodeableConcept from Encounter.statusHistorySubTypes.VS

CodeSystem: StatusHistorySubType
Id: Encounter.statusHistorySubType.CS
* #PSAP_Call "The date/time the phone rings (911 call to public safety answering point or other designated entity) requesting EMS services."
* #Dispatch_Notified "The date/time dispatch was notified by the 911 call taker (if a separate entity)."
* #Unit_Notified_by_Dispatch "The date/time the responding unit was notified by dispatch."
* #Dispatch_Acknowledged "The date/time the dispatch was acknowledged by the EMS Unit."
* #Unit_En_Route "The date/time the unit responded; that is, the time the vehicle started moving."
* #Unit_Arrived_on_Scene "The date/time the responding unit arrived on the scene; that is, the time the vehicle stopped moving at the scene."
* #Arrived_at_Patient "The date/time the responding unit arrived at the patient's side."
* #Transfer_of_EMS_Patient_Care "The date/time the patient was transferred from this EMS agency to another EMS agency for care."
* #Unit_Left_Scene "The date/time the responding unit left the scene (started moving)."
* #Arrival_at_Destination_Landing_Area "The date/time the Air Medical vehicle arrived at the destination landing area."
* #Patient_Arrived_at_Destination "The date/time the responding unit arrived with the patient at the destination or transfer point."
* #Destination_Patient_Transfer_of_Care "The date/time that patient care was transferred to the destination healthcare staff."
* #Unit_Back_in_Service "The date/time the unit back was back in service and available for response (finished with call, but not necessarily back in home location)."
* #Unit_Canceled "The date/time the unit was canceled."
* #Unit_Back_at_Home_Location "The date/time the responding unit was back in their service area. With agencies who utilized Agency Status Management, home location means the service area as assigned through the agency status management protocol."
* #EMS_Call_Completed "The date/time the responding unit completed all tasks associated with the event including transfer of the patient, and such things as cleaning and restocking."
* #Unit_Arrived_at_Staging_Area "The date/time the responding unit arrived at a staging area, prior to arrival on scene."


* priority 1..1
* priority.priorityObservations 0..*

//The Slice has the name priorityObservations 
* priority ^slicing.discriminator.type = #pattern
* priority ^slicing.discriminator.path = "code"
* priority ^slicing.rules = #closed
* priority.priorityObservations = NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS


* participant 1..*

* Location 1..*
//The Slice has the name Scene
* encounter ^slicing.discriminator.type = #value
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
* Location.arrival 1..1
* Location.arrival = Reference(StructureDefinition-us-core-location)

//The Slice has the name Destination
* encounter ^slicing.discriminator.type = #value
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
* Location.destination 1..0
* Location.destination = Reference(StructureDefinition-us-core-location)

* reasonCode 1..1 


//The Slice has the name MassCasualtyIncident
* encounter ^slicing.discriminator.type = #value
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
* MassCasualtyIncident 0..1
/* MassCasualtyIncident = y/n
/* MassCasualtyIncident.NumberOfPatients 0..* 
/* MassCasualtyIncident.triageClassification 0..1
/* MassCasualtyIncident.triageClassification = NEMSIS_eScene.08_TriageClassificationforMCIPatient_VS	


* diagnosis 0..* 
//The Slice has the name Impressions
* encounter ^slicing.discriminator.type = #text
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
* Impressions 1..*
* Impressions.text 1..*
* Impressions.code 1..*


Slice://The Slice has the name possibleInjury
* encounter ^slicing.discriminator.type = #value
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
* possibleInjury 0..1
* possibleInjury = NEMSIS_eSituation.02_PossibleInjury_VS
 
Slice://The Slice has the name barriersToCare
* encounter ^slicing.discriminator.type = #text
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
* diagnosis.barriersToCare 0..*
* diagnosis.barriersToCare = NEMSIS_eHistory.01_ Barriers to Patient Care_VS
 
* serviceProvider = 1..1
* serviceProvider = Reference (Organization)
* organization.identifier 1..1
* organization.name 1..1


ValueSet: NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS
Id: NEMSIS.eResponse.AdditionalResponseModeDescriptors.VS
* codes from system NEMSIS.eResponse.AdditionalResponseModeDescriptors.VS

ValueSet: StatusHistorySubTypes
Id: Encounter.statusHistorySubTypes.VS
* codes from system Encounter.statusHistorySubType.CS