Profile:   IHE_PCS_Encounter_ClinicalSubset_US
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.ClinicalSubset.US
Title: "IHE PCS Encounter Clinical Subset US"
Description:      """
An encounter resource used to deffine pertinant patient infromation prior to the patient drop off or transfer of care, US realm
- SHALL have identifiers
- SHALL have Subject. The Subject SHOULD reference us-core-patient. 
- SHOULD reference episodeOfCare. The episodeOfCare SHALL contain the episodeOfCare identifiers
- SHOULD reference PCS_ServiceRequest
- SHALL contain MassCasualtyIncident and SHALL be expressed values from the NEMSIS_eScene_MassCasualtyIncident_VS. IF Coded value = 9922005 "Yes" MassCasualtyIncident SHALL contain MassCasualtyIncident.NumberOfPatients to express the number of people in the mass casualty incident and SHALL be expressed using a Number. IF the boolean is "yes" MassCasualtyIncident SHALL Contain MassCasualtyIncident.triageClassification that SHALL be expressed with CodeableConcept values from the NEMSIS_eScene_TriageClassificationforMCIPatient_VS ValueSet     
- SHALL Contain Impressions. Impressions SHALL be expressed using the ClinicalImpression Reference. The ClinicalImpressions SHALL be expressed using narrative text AND OR vale CodableConcepts that SHALL come from ICD-10-CM Diagnosis Codes
	- ClinicalImpression SHALL have finding with itemReference expressed using the Observation Reference. The Observation Reference SHALL be used to the following observations: 
			- Initial Patient Acuity "The acuity of the patient's condition upon EMS arrival at the scene." ValueSet: NEMSIS_eSituation_PatientAcuity_VS
			- Patient Activity "The activity the patient was involved in at the time the patient experienced the onset of symptoms or experienced an injury." text string OR ValueSet: NEMSIS_eSituation_PatientActivity_VS
			- Date/Time Last Known Well "The estimated date and time the patient was last known to be well or in their usual state of health. This is described or estimated by the patient, family, and/or bystanders." DateTime OR ValueSet: NEMSIS_eSituation_Date/TimeLastKnownWell_VS
			- Alcohol/Drug Use Indicators "Indicators for the potential use of alcohol or drugs by the patient related to the patient's current illness or injury." ValueSet: NEMSIS_eHistory_Alcohol/DrugUseIndicators_VS
			- Last Oral Intake "Date and Time of last oral intake." Text string to describe what the last oral intake was 
			- Work-Related Illness/Injury "Indication of whether or not the illness or injury is work related." ValueSet: NEMSIS_eSituation_Work-RelatedIllness/Injury_VS 
			- Final Patient Acuity "The acuity of the patient's condition after EMS care." ValueSet: NEMSIS_eSituation_PatientAcuity_VS
- SHALL Contain PossibleInjury. PossibleInjury SHALL be expressed using values from the NEMSIS_eSituation_PossibleInjury_VS ValueSet
- SHALL Contain BarriersToCare. BarriersToCare SHALL be expressed using values from the NEMSIS_eHistory_BarriersToPatientCare_VS ValueSet
- SHALL have status 
- SHALL have statusHistory
- SHALL have a statusHistorySubType extension the extension SHALL use values from the Encounter.statusHistorySubTypes.VS ValueSet 
- SHALL have Priority. The Priority CodeableConcept SHALL be expressed using values from the NEMSIS_eResponse_ResponseMode_VS ValueSet. The Priority SHALL contain PriorityObservations with CodeableConcept values from the NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS, NEMSIS_ePayment_ResponseUrgency_VS,and NEMSIS_ePayment_CMSServiceLevel_VS ValueSets 
- SHALL have a reasonCode to express the Dispatch Reason. the the ReasonCode SAHLL be expressed using values from the NEMSIS_eDispatch_DispatchReason_VS ValueSet
- SHOULD have a reasonReference and SAHLL used the ClinicalImpression.text reference to express the Chief complaint of the patient 
- SHALL have Participants. Participant SHALL contain Type. Participant SHOULD Contaitn Period. Participant SHALL contain individual.
	- Practitioner SHOULD contain identifier AND name 
	- PractitionerRole SHALL contain identifiers, specialty, AND code
- SHALL have serviceProvider. serviceProvider SHALL be expressed using the Organization Reference. The Organization SHALL express the organizaiotn Identifiers AND the Organization name. 
- SHALL have Location. The Location SHALL contain the Scene location where the patient was taken from and SHALL use the us-core-location reference. The Location May Contain the Destination location where the patient is transfered to at the completion of the Encounter and SHALL use the us-core-location reference.  
- MAY have Encounter.text to express the Patient Care Report Narrative
"""

* identifier 1..*

* subject 1..1
* subject = Reference(StructureDefinition-us-core-patient)

* episodeOfCare 0..1
* episodeOfCare = Reference(episodeOfCare)
* episodeOfCare.identifier 1..*

* basedOn 0..1
* basedOn = Reference(PCS_ServiceRequest)

* statusHistory 1..*
* status 1..1 
* extension contains StatusHistorySubType named statusHistorySubType 0..1

Extension: StatusHistorySubType
Id: Encounter.statusHistorySubType
Description: "Refinement of the Encounter status for steps within EMS"
Title: "PCS Encounter status history sub-type"
* value[x] only CodeableConcept
* valueCodeableConcept from Encounter.statusHistorySubTypes.VS
 

// QUESTION FROM JOHN -- Why do you set priority to 1..1, and a slice of 0..1 to have a code from the nemsis vs. Why not just indicate the code must be from the valueset? It seems to me this is more complex than it needs to be.
* priority 1..1
* valueCodeableConcept from NEMSIS_eResponse_ResponseMode_VS (required)

Slice: priorityObservations
Id: Encounter.priority.priorityObservations 
* priority ^slicing.discriminator.type = #pattern
* priority ^slicing.discriminator.path = "code"
* priority ^slicing.rules = #closed
* priority contains priorityObservations 0..*
* value[x] only CodeableConcept
* valueCodeableConcept from NEMSIS_ePayment_ResponseUrgency_VS
* valueCodeableConcept from NEMSIS_ePayment_CMSServiceLevel_VS
* valueCodeableConcept from NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS


* participant 1..*

// QUESTION FROM JOHN -- I didnt know how to fix the following as it seems you are slicing encounter but setting location?

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
* MassCasualtyIncident = y/n
* MassCasualtyIncident.NumberOfPatients 0..* 
* MassCasualtyIncident.triageClassification 0..1
* MassCasualtyIncident.triageClassification = NEMSIS_eScene_TriageClassificationforMCIPatient_VS	


* diagnosis 0..* 
//The Slice has the name Impressions
* encounter ^slicing.discriminator.type = #text
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
* Impressions 1..*
* Impressions.text 1..*
* Impressions.code 1..*


//The Slice has the name possibleInjury
* encounter ^slicing.discriminator.type = #value
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
* possibleInjury 0..1
* possibleInjury = NEMSIS_eSituation_PossibleInjury_VS
 
//The Slice has the name barriersToCare
* encounter ^slicing.discriminator.type = #text
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
* diagnosis.barriersToCare 0..*
* diagnosis.barriersToCare = NEMSIS_eHistory_BarriersToPatientCare_VS
 
* serviceProvider 1..1
* serviceProvider = Reference (Organization)
* organization.identifier 1..1
* organization.name 1..1


ValueSet: NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS
Id: NEMSIS.eResponse.AdditionalResponseModeDescriptors.VS
* codes from system NEMSIS.eResponse.AdditionalResponseModeDescriptors.VS

ValueSet: StatusHistorySubTypes
Id: Encounter.statusHistorySubTypes.VS
* codes from system Encounter.statusHistorySubType.CS

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
