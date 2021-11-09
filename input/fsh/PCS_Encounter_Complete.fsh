Profile:   IHE_PCS_Encounter_CompleteReport
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.CompleteReport
Title: "IHE PCS Encounter Complete Report"
Description:      """
An encounter resource used to deffine the full emergency medical transport encounter of a patient, US realm
- SHALL have identifiers
- SHALL have Subject. The Subject SHOULD reference us-core-patient. 
- SHALL reference episodeOfCare. The episodeOfCare SHALL contain the episodeOfCare identifiers
- SHALL reference PCS_ServiceRequest
- SHALL contain MassCasualtyIncident and SHALL be expressed values from the NEMSIS_eScene_MassCasualtyIncident_VS. IF Coded value = 9922005 "Yes" MassCasualtyIncident SHALL contain MassCasualtyIncident.NumberOfPatients to express the number of people in the mass casualty incident and SHALL be expressed using a Number. IF the boolean is "yes" MassCasualtyIncident SHALL Contain MassCasualtyIncident.triageClassification that SHALL be expressed with CodeableConcept values from the NEMSIS_eScene_TriageClassificationforMCIPatient_VS ValueSet     
- SHOULD contain a Incident extenstion. The extensions SHALL reference PCS-Incident Observation
- SHALL Contain PossibleInjury. PossibleInjury SHALL be expressed using values from the NEMSIS_eSituation_PossibleInjury_VS ValueSet
- SHALL Contain BarriersToCare. BarriersToCare SHALL be expressed using values from the NEMSIS_eHistory_BarriersToPatientCare_VS ValueSet
- SHALL have status 
- SHALL have statusHistory
- SHALL have a statusHistorySubType extension the extension SHALL use values from the Encounter.statusHistorySubTypes.VS ValueSet 
- SHALL have Priority. The Priority CodeableConcept SHALL be expressed using values from the NEMSIS_eResponse_ResponseMode_VS ValueSet. The Priority SHALL contain PriorityObservations with CodeableConcept values from the NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS, NEMSIS_ePayment_ResponseUrgency_VS,and NEMSIS_ePayment_CMSServiceLevel_VS ValueSets 
- SHALL have a reasonCode to express the Dispatch Reason. the the ReasonCode SAHLL be expressed using values from the NEMSIS_eDispatch_DispatchReason_VS ValueSet
- SHALL have a reasonReference and SHALL used the ClinicalImpression.text reference to express the Chief complaint of the patient 
- SHALL have Participants. Participant SHALL contain Type. Participant SHOULD Contaitn Period. Participant SHALL contain individual.
	- Practitioner SHOULD contain identifier AND name 
	- PractitionerRole SHALL contain identifiers, specialty, AND code
- SHALL have serviceProvider. serviceProvider SHALL be expressed using the Organization Reference. The Organization SHALL express the organizaiotn Identifiers AND the Organization name. 
- SHALL have Location. The Location SHALL contain the Scene location where the patient was taken from and SHALL use the us-core-location reference. The Location SHALL Contain the Destination location where the patient is transfered to at the completion of the Encounter and SHALL use the us-core-location reference.  
- SHALL Contain Transport Extension
"""


* identifier 1..*
* status 1..1
* status = #finished
* statusHistory 1..*
* extension contains StatusSubType named StatusSubType 0..*
* extension contains StatusHistoryObservation named OdomoterReadings 0..*
//Encunter type should be Ambulance, Medflight, should be set as an extensible code set
* class 1..1
//extend Coding V3 Value SetActEncount	erCode (extend) to include:* EMER TR (Emergecny Trasnport) "A patient encounter that takes place with an Emergency Medical Service where the patient receives immediate evaluation, treatment, and trasnportation to a treatment facility , provided until the cancellation of treatment or responsibility for the patient's care is transferred elsewhere (for example, the patient care is transferred to another Organization or provider.)"
// NON-EMER TR (Non-Emergecny Trasnport) ""A patient encounter that takes place with an Emergency Medical Service where the patient receives non-emergent evaluation, treatment, and trasnportation, provided until the cancellation of treatment, pateint is dropped off at destination, or responsibility for the patient's care is transferred elsewhere (for example, the patient care is transferred to another Organization or provider.)"
// Informed by the NEMSIS_eResponse_ResponseMode_VS value set. If the value is 4217001 "Emergent (Immediate Response)" OR 4217007 "Non-Emergent Upgraded to Emergent" the Value SHALL be EMER TR. If the Value is 4217005 "Non-Emergent" OR 4217003 "Emergent Downgraded to Non-Emergent" the Value SHALL be NON-EMER TR////
* classHistory 1..*
//This is where urgency responce and the urgency of trasnport is indicated
* type 1..*
* serviceType 1..1
//Should be have as main options $230 "Patient transport", $117 "Emergency Medical" or $465 "Trasnport", $225 "Air ambulance", $226 "Ambulance" 
* priority 1..1 
* extension contains PriorityDescriptors named PriorityDescriptors 0..*
* subject 1..1
* episodeOfCare 1..1
* basedOn 1..1
* participant 1..*
* participant.type 1..*
* period 1..1
* reasonCode 1..*
* diagnosis 1..*
//condition.category will = encounter-diagnosis and primary and scondary impressions should be indicated with the Diagnosis rank Number
* serviceProvider 1..1
* extension contains BarriersToPatientCare named Barriers 0..*
* extension contains ProtocolsUsed named ProtocolsUsed 0..* 
* extension contains Transport named Transport 1..1
* extension contains Incident named Incident 1..1
* extension contains Injury named Injury 0..1


Extension: StatusSubType
Id: StatusSubType
Title: "PCS Encounter status history sub-type"
Description: "Refinement of the Encounter Status History for steps within EMS"
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
//insert value set when ready (valueCodeableConcept from Encounter.statusHistorySubTypes.VS (example))

Extension: StatusHistoryObservation
Id: StatusHistoryObservation
Title: "OdomoterReadings"
Description: "OdomoterReadings for an ambulance aligning with status history times"
* value[x] only Quantity
// can this also be used to indicate status history delay reasons?? add delays

Extension: PriorityDescriptors
Id: PriorityDescriptors
Title: "Priority Descriptors"
Description: "The documentation of response mode techniques used for this EMS response."
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
//insert value set when ready (valueCodeableConcept from Encounter.statusHistorySubTypes.VS (example))

Extension: BarriersToPatientCare
Id: BarriersToPatientCare
Title: "Barriers To Patient Care"
Description: "Indication of whether or not there were any patient specific barriers to serving the patient."
* value[x] only CodeableConcept 
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
//insert value set when ready (valueCodeableConcept from Encounter.statusHistorySubTypes.VS (example))

Extension: Transport
Id: Transport
Title: "Transport"
Description: "Transport Information for the encounter."
* extension contains 
	NumberofPatients 0..1 and 
	TransportMode 0..1 and 
	TrasnportReasonCode 0..* and 
	ReasonForRefusal 0..* and
	TransportDisposition 0..1 and
	TransportDestination 0..1 and
	AdditonalTransportInformation 0..* 
* extension[NumberofPatients].value[x] only Quantity
* extension[TransportMode].value[x] only CodeableConcept 
* extension[TransportMode].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
* extension[TrasnportReasonCode].value[x] only CodeableConcept 
* extension[TrasnportReasonCode].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
* extension[ReasonForRefusal].value[x] only CodeableConcept 
* extension[ReasonForRefusal].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
* extension[TransportDisposition].value[x] only CodeableConcept 
* extension[TransportDisposition].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
* extension[TransportDestination].value[x] only Reference(Location)
* extension[AdditonalTransportInformation].value[x] only Reference(Observation)
//insert value set when ready (valueCodeableConcept from Encounter.statusHistorySubTypes.VS (example)) 

Extension: Incident
Id: Incident
Title: "Incident Observations"
Description: "The information for the Patient incident"
* extension contains 
	MassCasualtyIncident 0..1 and 
	NumberofPatients 0..1 and
	TriageClassification 0..1 and
	IncidentLocation 0..1 and
	IncidentObservations 0..*
* extension[MassCasualtyIncident].value[x] only CodeableConcept 
* extension[MassCasualtyIncident].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
* extension[NumberofPatients].value[x] only Quantity
* extension[TriageClassification].value[x] only CodeableConcept
* extension[TriageClassification].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example) 
* extension[IncidentLocation].value[x] only Reference(Location)
* extension[IncidentObservations].value[x] only Reference(Observation)

Extension: Injury 
Id: Injury
Title: "Injury Observations"
Description: "The indicators for Patient injury from the encounter."
* extension contains 
	PossibleInjury 0..1 and
	WorkRelatedInjury 0..1 and
	CauseOfInjury 1..* and
	MechanismOfInjury 1..*
* extension[PossibleInjury].value[x] only CodeableConcept
* extension[PossibleInjury].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
* extension[WorkRelatedInjury].value[x] only CodeableConcept
* extension[WorkRelatedInjury].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
* extension[CauseOfInjury].value[x] only Reference(Observation)
* extension[MechanismOfInjury].value[x] only Reference(Observation)

