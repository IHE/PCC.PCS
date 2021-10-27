Profile:   IHE_PCS_Encounter_ClinicalSubset_US
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.ClinicalSubset.US
Title: "IHE PCS Encounter Clinical Subset US"
Description:      """
An encounter resource used to deffine pertinant patient infromation prior to the patient drop off or transfer of care, US realm
- SHALL have at least 1 identifier
- SHALL have a Subject. The Subject SHALL reference us-core-patient
- SHOULD have an episodeOfCare. episodeOfCare SHALL contain identifiers
- SHOULD have a Class. Extend coding V3 Value SetActEncounterCode to include EMER TR and NON-EMER TR
- SHOULD reference ServiceRequest. ServiceRequest SHOULD Contain insurance. Insuranche SHALL be expressed using the Coverage reference
- SHALL have status 
- SHALL have statusHistory
- SHALL have a statusHistorySubType extension the extension SHALL use values from the Encounter.statusHistorySubTypes.VS ValueSet 
- SHALL have Priority. The Priority CodeableConcept SHALL be expressed using values from the NEMSIS_eResponse_ResponseMode_VS ValueSet. The Priority SHALL contain PriorityObservations with CodeableConcept values from the NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS, NEMSIS_ePayment_ResponseUrgency_VS,and NEMSIS_ePayment_CMSServiceLevel_VS ValueSets 
- SHALL have a reasonCode to express the Dispatch Reason. the the ReasonCode SAHLL be expressed using values from the NEMSIS_eDispatch_DispatchReason_VS ValueSet
- SHOULD have a reasonReference and SHALL used the ClinicalImpression.text reference to express the Chief complaint of the patient 
- SHALL have serviceProvider. serviceProvider SHALL be expressed using the Organization Reference. The Organization SHALL express the organizaiotn Identifiers AND the Organization name. 
- SHOULD contain a Incident extenstion. The extensions SHALL reference PCS-Incident Observation   
- SHALL Contain BarriersToCare extension. BarriersToCare SHALL be expressed using values from the NEMSIS_eHistory_BarriersToPatientCare_VS ValueSet
- May Contain Transport Extension
"""

* identifier 1..*

* subject 1..1
* subject = Reference(StructureDefinition-us-core-patient)

* episodeOfCare 0..1
* episodeOfCare = Reference(episodeOfCare)
* episodeOfCare.identifier 1..*

* class 1..1 
* Coding V3 Value SetActEncounterCode (extend) to include  [how to do...] 
* EMER TR (Emergecny Trasnport) "A patient encounter that takes place with an Emergency Medical Service where the patient receives immediate evaluation, treatment, and trasnportation to a treatment facility , provided until the cancellation of treatment or responsibility for the patient's care is transferred elsewhere (for example, the patient care is transferred to another Organization or provider.)"
* NON-EMER TR (Non-Emergecny Trasnport) ""A patient encounter that takes place with an Emergency Medical Service where the patient receives non-emergent evaluation, treatment, and trasnportation, provided until the cancellation of treatment, pateint is dropped off at destination, or responsibility for the patient's care is transferred elsewhere (for example, the patient care is transferred to another Organization or provider.)"
//// Informed by the NEMSIS_eResponse_ResponseMode_VS value set. If the value is 4217001 "Emergent (Immediate Response)" OR 4217007 "Non-Emergent Upgraded to Emergent" the Value SHALL be EMER TR. If the Value is 4217005 "Non-Emergent" OR 4217003 "Emergent Downgraded to Non-Emergent" the Value SHALL be NON-EMER TR////

* basedOn 0..1
* basedOn = Reference(ServiceRequest)
* ServiceRequest.insurance 0..1
* ServiceRequest.insurance = Reference(Coverage)

* status code = in-progress

Extension: StatusHistorySubType
Id: Encounter.statusHistorySubType
Description: "Refinement of the Encounter Status History for steps within EMS"
Title: "PCS Encounter status history sub-type"
* value[x] only CodeableConcept
* valueCodeableConcept from Encounter.statusHistorySubTypes.VS
 

* priority 1..1 

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "Priority Level for Treatment for the encounter"

* type
// Note: TBD
 
* entry 1..3
* entry ResponseModetoScene 1..1 
  and ResponseUrgency 0..1 
  and CMSServiceLevel 0..1
* entry[ResponseModetoScene] only CodeableConcept
* entry[ResponseUrgency] only CodeableConcept 
* entry[CMSServiceLevel] only CodeableConcept 
// TODO: refernce appropriate value sets from NEMSIS_.....    (required)


Extension: priorityDescriptors
Id: Encounter.priority.priorityDescriptors
Description: "The documentation of response mode techniques used for this EMS response."
Title: "Priority Descriptors"
* extension[priorityDescriptors].value[x] only CodeableConcept
* extension[priorityDescriptors].value[x] CodeableConcept from NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS (required)


* participant 1..*


* reasonCode 1..1
* valueCodeableConcept from NEMSIS_eDispatch_DispatchReason_VS (required)


* reasonReference 
//* reasonReference = Reference(ClinicalImpression)


Extension: Incident
Title: "Incident Infromation"
Description: "Elements to Support Incident data documented by EMS"
* insert FHIRPushStructureDefinitionContent
* extension contains IncidentInfromation 0..1

* extension[IncidentInfromation] ^short = "Elements to Support Incident data documented by EMS"

// TODO: extension[IncidentInfromation] only reference (PCS-Incident)


*diagnosis 1..*

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "The Cheif complaint, Primary Impressions, and Secodnary impressions that are documented in a PCS encounter." 
* entry 1..3
* entry contains CheifComplaint 1..1 
  and PrimaryImpressions 0..1 
  and SecondaryImpressions 0..1

* entry[CheifComplaint].condition.value[x] only string [need to figure hout to to represent with condition reference)
* entry[CheifComplaint].condition.category only CodeableConcept = encounter-diagnosis 
#Comment: The encounter-diagnosis CodeableConceptapplies to all types of diagnosis including that of the ems Impressions/Diagnoses
* entry[CheifComplaint].condition containts DataAbsentReason
#Comment: When CheifComplaint condition is empty, the Data absent reason SHOULD be documented
	* entry[CheifComplaint].condition.extension[DataAbsentReason] 0..1
	* entry[CheifComplaint].condition.extension[DataAbsentReason].value[x] from .... [NEMSIS Not Value Value set]
* entry[CheifComplaint].use only CodeableConcept = CC "Chief Complaint"


* entry[PrimaryImpressions].condition.value[x] only CodeableConcept from ICD-10-CM
* entry[PrimaryImpressions].condition.category only CodeableConcept = encounter-diagnosis 
#Comment: When PrimaryImpressions condition is empty, the Data absent reason SHOULD be documented
* entry[PrimaryImpressions].use only CodeableConcept = ......   [extend ro include concepts for primary and secondary impressions]   


* entry[SecondaryImpressions].condition.value[x] only CodeableConcept from ICD-10-CM
* entry[SecondaryImpressions].condition.category only CodeableConcept = encounter-diagnosis 
#Comment: When SecondaryImpressions condition is empty, the Data absent reason SHOULD be documented
* entry[SecondaryImpressions].use only CodeableConcept = ......   [extend ro include concepts for primary and secondary impressions or maybe a Comorbidity diagnosis??]  



Extension: BarriersToPatientCare
Title: "Barriers To Patient Care"
Description: "Documentation of whether or not there were any patient specific barriers to serving the patient at the scene."
* insert FHIRPushStructureDefinitionContent
* extension contains BarriersToPatientCare 0..1
* extension[BarriersToPatientCare].value[x] only CodeableConcept
* extension[BarriersToPatientCare].value[x].valueCodeableConcep from NEMSIS_eHistory_BarriersToPatientCare_VS (required)



Extension: Transport
Id: Encounter.Transport
Description: "Transport Indicator indicating Transport Information"
Title: "PCS Transport"
* insert FHIRPushStructureDefinitionContent
* extension contains TransportReason 0..1
	and TrasnportReasonCode 0..1
	and Standby Purpos 0..1 [for complete report]
	and TransportCapability 1..1 
	and Delay 0..* 
	and Locations 1..*
	and OdomoterReadings 0..1 [for the complete report]
	and AdditonalTransportInformation 0..0 [for complete report] 


* extension[TransportReason] ^short = " "
* extension[TrasnportReasonCode] ^short = "The general categories of the reason for an interfacility transfer/medical transport."
//TODO: extension[TrasnportReasonCode].valueCodeableConcep from

* extension[TransportCapability] ^short = "The transport and equipment capabilities of the Unit which responded to this specific encounter. "
* extension[TransportCapability].value[x] only CodeableConcep
* extension[TransportCapability].value[x].valueCodeableConcep from NEMSIS_eResponse_UnitTransportAndEquipmentCapability_VS (required)

* extension[Loactions] ^short = "The geographic location of the EMS unit or crew"
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "The locations that are ascociated with this Trasnport"

* entry contains VehicleDispatchLocation 0..1 
  and SceneLoaction 0..1  
  and DestinationLoaction 0..1  

* entry[VehicleDispatchLocation] only reference (PCS-Loaction)

* entry[SceneLoaction] only reference (PCS-Loaction)
// NOTE: May need to be removed since this is the same as the encounter location//
// TODO: refernce proper location only reference (PCS-Loaction) for * entry[DestinationLoaction]

* extension[Delay] ^short = "The delays, if any, associated with the this encounter."
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "The delays that may be ascociated with this Encounter"
#Comment: For ClinicalSubset the the only delay that should be shared is the scene and trasnport delay if they are available in the ContentConsumer system.  

* entry contains DispatchDelay 0..* 
  and ResponseDelay 0..*  
  and SceneDelay 0..* 
  and TransportDelay 0..* 
  and Turn-AroundDelay 0..* 
  
* entry[DispatchDelay].value[x] only CodeableConcept
* entry[DispatchDelay].value[x] only CodeableConcept from NEMSIS_eResponse_TypeOfDispatchDelay_VS  (required)

* entry[ResponseDelay].value[x] only CodeableConcept
* entry[ResponseDelay].value[x] only CodeableConcept from NEMSIS_eResponse_TypeOfResponseDelay_VS  (required)

* entry[SceneDelay].value[x] only CodeableConcept
* entry[SceneDelay].value[x] only CodeableConcept from NEMSIS_eResponse_ TypeOfSceneDelay_VS  (required)

* entry[TransportDelay].value[x] only CodeableConcept
* entry[TransportDelay].value[x] only CodeableConcept from NEMSIS_eResponse_TypeOfTransportDelay_VS  (required)

* entry[Turn-AroundDelay].value[x] only CodeableConcept
* entry[Turn-AroundDelay].value[x] only CodeableConcept from NEMSIS_eResponse_TypeOfTurn-AroundDelay_VS  (required)


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
