Profile:   IHE_PCS_Encounter_CLinicalSubset
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.Complete Report
Title: "IHE PCS Encounter CLinical Subset"
Description:      "an encounter resource used to deffine an emergency medical encounter of a patient

* identifier 1..*

* subject = Reference(StructureDefinition-us-core-patient) 1..1

* episodeOfCare = Reference(episodeOfCare) 0..1
* episodeOfCare.identifier 1..1

* basedOn = Reference(ServiceRequest) 0..1
* ServiceRequest.category 0..1
* ServiceRequest.reasonReference 0..1


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
* #PSAP Call "The date/time the phone rings (911 call to public safety answering point or other designated entity) requesting EMS services."
* #Dispatch Notified "The date/time dispatch was notified by the 911 call taker (if a separate entity)."
* #Unit Notified by Dispatch "The date/time the responding unit was notified by dispatch."
* #Dispatch Acknowledged "The date/time the dispatch was acknowledged by the EMS Unit."
* #Unit En Route "The date/time the unit responded; that is, the time the vehicle started moving."
* #Unit Arrived on Scene "The date/time the responding unit arrived on the scene; that is, the time the vehicle stopped moving at the scene."
* #Arrived at Patient "The date/time the responding unit arrived at the patient's side."
* #Transfer of EMS Patient Care "The date/time the patient was transferred from this EMS agency to another EMS agency for care."
* #Unit Left Scene "The date/time the responding unit left the scene (started moving)."
* #Arrival at Destination Landing Area "The date/time the Air Medical vehicle arrived at the destination landing area."
* #Patient Arrived at Destination "The date/time the responding unit arrived with the patient at the destination or transfer point."
* #Destination Patient Transfer of Care "The date/time that patient care was transferred to the destination healthcare staff."
* #Unit Back in Service "The date/time the unit back was back in service and available for response (finished with call, but not necessarily back in home location)."
* #Unit Canceled "The date/time the unit was canceled."
* #Unit Back at Home Location "The date/time the responding unit was back in their service area. With agencies who utilized Agency Status Management, home location means the service area as assigned through the agency status management protocol."
* #EMS Call Completed "The date/time the responding unit completed all tasks associated with the event including transfer of the patient, and such things as cleaning and restocking."
* #Unit Arrived at Staging Area "The date/time the responding unit arrived at a staging area, prior to arrival on scene."

ValueSet: StatusHistorySubTypes
Id: Encounter.statusHistorySubTypes.VS
* codes from system Encounter.statusHistorySubType.CS

* priority 1..1

//The Slice has the name priorityObservations 
* priority ^slicing.discriminator.type = #pattern
* priority ^slicing.discriminator.path = "code"
* priority ^slicing.rules = #closed
* priority.priorityObservations 0..*
* priority.priorityObservations = NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS

ValueSet: NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS
Id: NEMSIS.eResponse.AdditionalResponseModeDescriptors.VS
* codes from system NEMSIS.eResponse.AdditionalResponseModeDescriptors.VS

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
*MassCasualtyIncident 0..1
*MassCasualtyIncident.NumberOfPatients 0..1
*MassCasualtyIncident.NumberOfPatients = boulian y/n 
*MassCasualtyIncident.triageClassification 0..1
*MassCasualtyIncident.triageClassification = NEMSIS_eScene.08_Triage Classificationfor MCI Patient_VS	


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


"
* identifier 1..*
// TODO add an extension element to statusHistory.status holding refined status for EMS  
* class from NEMSIS.eResponse.VS
* statusHistory.extension contains StatusHistorySubType named subType 1..1


// mappings to NEMSIS todo
Mapping: PCSencounter-Mapping
Source:	IHE.PCC.PCS.Encounter
Target: "NEMSIS todo"
Title: "NEMSIS Mapping"
* -> "NEMSIS blah" "Used in the context of the IHE PCS ImplementationGuide"
* statusHistory.extension[subType] -> "NEMSIS"
* period -> "eExam.03 Date/Time of Assessent"

Instance: PCSencounter-simple
InstanceOf: IHE.PCC.PCS.Encounter
Title: "Basic Encounter example for PCS"
Description: "Example of a simple encounter within

* An instance
* A period
* a code
"
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:36566d60-5360-4d13-8a7f-c189865774ce"
* identifier[0].use = #official
* period.start = 2020-12-31T23:50:50-05:00
* period.end = 2020-12-31T23:50:50-05:00
* status = #arrived
* class = #EMER
