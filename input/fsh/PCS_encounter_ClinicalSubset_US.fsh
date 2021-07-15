Profile:   IHE_PCS_Encounter_ClinicalSubset_US
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.ClinicalSubset.US
Title: "IHE PCS Encounter Clinical Subset US"
Description:      """
An encounter resource used to deffine pertinant patient infromation prior to the patient drop off or transfer of care, US realm
- SHALL have identifiers
- SHALL have a Subject. The Subject SHALL reference us-core-patient
- SHOULD have an episodeOfCare. episodeOfCare SHALL contain identifiers
- SHALL have a Class. Extend coding V3 Value SetActEncounterCode to include EMER TR and NON-EMER TR
- SHOULD reference ServiceRequest. ServiceRequest SHOULD Contain insurance. Insuranche SHALL be expressed using the Coverage reference
- SHALL contain MassCasualtyIncident values SHALL be from ValueSet: NEMSIS_eScene_MassCasualtyIncident_VS. 
	- IF Coded value = 9922005 "Yes" MassCasualtyIncident SHALL contain MassCasualtyIncident.NumberOfPatients to express the number of people in the mass casualty incident and SHALL be expressed using a Number. 
	- IF Coded value = 9922005 "Yes" MassCasualtyIncident SHALL Contain MassCasualtyIncident.triageClassification that SHALL be expressed with CodeableConcept values from the NEMSIS_eScene_TriageClassificationforMCIPatient_VS ValueSet     
- SHALL Contain Impressions. Impressions SHALL be expressed using the ClinicalImpression Reference. The ClinicalImpressions SHALL be expressed using narrative text AND OR vale CodableConcepts that SHALL come from ICD-10-CM Diagnosis Codes
	- ClinicalImpression SHALL have finding with itemReference expressed using the Observation Reference. The Observation Reference SHALL be used to the following observations: 
			- Patient Activity "The activity the patient was involved in at the time the patient experienced the onset of symptoms or experienced an injury." text string OR ValueSet: NEMSIS_eSituation_PatientActivity_VS
			- Date/Time Last Known Well "The estimated date and time the patient was last known to be well or in their usual state of health. This is described or estimated by the patient, family, and/or bystanders." DateTime OR ValueSet: NEMSIS_eSituation_Date/TimeLastKnownWell_VS
			- Alcohol/Drug Use Indicators "Indicators for the potential use of alcohol or drugs by the patient related to the patient's current illness or injury." ValueSet: NEMSIS_eHistory_Alcohol/DrugUseIndicators_VS
			- Last Oral Intake "Date and Time of last oral intake." Text string to describe what the last oral intake was 
			- Work-Related Illness/Injury "Indication of whether or not the illness or injury is work related." ValueSet: NEMSIS_eSituation_Work-RelatedIllness/Injury_VS 
- SHALL Contain PossibleInjury. PossibleInjury SHALL be expressed using values from the NEMSIS_eSituation_PossibleInjury_VS ValueSet
- SHALL Contain BarriersToCare. BarriersToCare SHALL be expressed using values from the NEMSIS_eHistory_BarriersToPatientCare_VS ValueSet
- SHALL have status 
- SHALL have statusHistory
- SHALL have a statusHistorySubType extension the extension SHALL use values from the Encounter.statusHistorySubTypes.VS ValueSet 
- SHALL have Priority. The Priority CodeableConcept SHALL be expressed using values from the NEMSIS_eResponse_ResponseMode_VS ValueSet. The Priority SHALL contain PriorityObservations with CodeableConcept values from the NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS, NEMSIS_ePayment_ResponseUrgency_VS,and NEMSIS_ePayment_CMSServiceLevel_VS ValueSets 
- SHALL have a reasonCode to express the Dispatch Reason. the the ReasonCode SAHLL be expressed using values from the NEMSIS_eDispatch_DispatchReason_VS ValueSet
- SHOULD have a reasonReference and SHALL used the ClinicalImpression.text reference to express the Chief complaint of the patient 
- SHALL have serviceProvider. serviceProvider SHALL be expressed using the Organization Reference. The Organization SHALL express the organizaiotn Identifiers AND the Organization name. 
"""

* identifier 1..*

* subject 1..1
* subject = Reference(StructureDefinition-us-core-patient)

* episodeOfCare 0..1
* episodeOfCare = Reference(episodeOfCare)
* episodeOfCare.identifier 1..*

* class 1..1 
* Coding V3 Value SetActEncounterCode (extend) to include 
* EMER TR (Emergecny Trasnport) "A patient encounter that takes place with an Emergency Medical Service where the patient receives immediate evaluation, treatment, and trasnportation to a treatment facility , provided until the cancellation of treatment or responsibility for the patient's care is transferred elsewhere (for example, the patient care is transferred to another Organization or provider.)"
* NON-EMER TR (Non-Emergecny Trasnport) ""A patient encounter that takes place with an Emergency Medical Service where the patient receives non-emergent evaluation, treatment, and trasnportation, provided until the cancellation of treatment, pateint is dropped off at destination, or responsibility for the patient's care is transferred elsewhere (for example, the patient care is transferred to another Organization or provider.)"
//// Informed by the NEMSIS_eResponse_ResponseMode_VS value set. If the value is 4217001 "Emergent (Immediate Response)" OR 4217007 "Non-Emergent Upgraded to Emergent" the Value SHALL be EMER TR. If the Value is 4217005 "Non-Emergent" OR 	4217003	"Emergent Downgraded to Non-Emergent" the Value SHALL be NON-EMER TR////

* basedOn 0..1
* basedOn = Reference(ServiceRequest)
*ServiceRequest.insurance 0..1
*ServiceRequest.insurance = Reference(Coverage)

* statusHistory 1..* 
* StatusHistorySubType 1..*
* statusHistory.status 1..1  
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
* valueCodeableConcept from NEMSIS_ePayment_ResponseUrgency_VS (required)
* valueCodeableConcept from NEMSIS_ePayment_CMSServiceLevel_VS (required)
* valueCodeableConcept from NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS (required)


* participant 1..*


* reasonCode 1..1
* valueCodeableConcept from NEMSIS_eDispatch_DispatchReason_VS (required)

* reasonReference 0..1
* reasonReference = Reference (ClinicalImpression)
* ClinicalImpression.text 1..1

//The Slice has the name MassCasualtyIncident
* encounter ^slicing.discriminator.type = #pattern
* encounter ^slicing.discriminator.path = "code"
* encounter ^slicing.rules = #closed
* MassCasualtyIncident 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from NEMSIS_eScene_MassCasualtyIncident_VS (required)

///The Slice has the name MassCasualtyIncident.NumberOfPatients
* MassCasualtyIncident ^slicing.discriminator.type = #value
* MassCasualtyIncident ^slicing.discriminator.path = "system"
* MassCasualtyIncident ^slicing.rules = #closed
* MassCasualtyIncident.NumberOfPatients 0..* 
* value[x] only number

///The Slice has the name MassCasualtyIncident.triageClassification
* MassCasualtyIncident ^slicing.discriminator.type = #pattern
* MassCasualtyIncident ^slicing.discriminator.path = "code"
* MassCasualtyIncident ^slicing.rules = #closed
* value[x] only CodeableConcept
* valueCodeableConcept from NEMSIS_eScene_TriageClassificationforMCIPatient_VS (required)

////QUESTION: Slicing to express that EMTs cannot make diagnosis but can make impressions on what they think could be happening. Essentially trying to remove the diagnosis section and replace it with an imporessions reference////
* diagnosis 0..0
 
//The Slice has the name Impressions
* encounter ^slicing.discriminator.type = #text
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
* Impressions 1..*
* Impressions.text 1..*
* Impressions.code 1..*
////QUESTION: is there any way to do something similar to how DIagnosis is structured and have a use/diagnosis roll (https://www.hl7.org/fhir/valueset-diagnosis-role.html)type situation that can use concepts like "Chief Complaint" "Primary Impressions" "Primary Symptom" "Additonal Observations"////

//The Slice has the name possibleInjury
* encounter ^slicing.discriminator.type = #pattern
* encounter ^slicing.discriminator.path = "code"
* encounter ^slicing.rules = #closed
* possibleInjury 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from NEMSIS_eSituation_PossibleInjury_VS (required)
 
//The Slice has the name barriersToCare
* encounter ^slicing.discriminator.type = #pattern
* encounter ^slicing.discriminator.path = "code"
* encounter ^slicing.rules = #closed
* diagnosis.barriersToCare 0..*
* value[x] only CodeableConcept
* valueCodeableConcept from NEMSIS_eHistory_BarriersToPatientCare_VS (required)



ValueSet: NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS
Id: NEMSIS.eResponse.AdditionalResponseModeDescriptors.VS
* codes from system NEMSIS.eResponse.AdditionalResponseModeDescriptors.VS (required)

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
