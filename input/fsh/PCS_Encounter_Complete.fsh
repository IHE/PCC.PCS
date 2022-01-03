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
* extension contains StatusHistoryObservation named StatusHistoryObservation 0..*
//Encunter type should be Ambulance, Medflight, should be set as an extensible code set
* class 1..1
//Type of service requested
* type 1..*
//Should be Responce urgency, have as main options $230 "Patient transport", $117 "Emergency Medical" or $465 "Trasnport", $225 "Air ambulance", $226 "Ambulance" 
* serviceType 1..1
//Level of care provided eDisposition.32 - Level of Care Provided per Protocol should extend to include level of service ePayment.50 - CMS Service Level
* priority 1..1 
* extension contains PriorityDescriptors named PriorityDescriptors 0..*
* subject 1..1
* basedOn 1..1
* participant 1..*
* participant.type 1..*
* period 1..1
* reasonCode 1..*
* diagnosis 1..*
//condition.category will = encounter-diagnosis and primary and scondary impressions should be indicated with the Diagnosis rank Number
* serviceProvider 1..1
* extension contains BarriersToPatientCare named Barriers 0..* 
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
//NOTE: Status sub-type is used to further defffine the steps used in EMS. For the Planned status there WILL be sub status types to have timestamps for the call for help, the Dispatch request, the Unit request, and start time of en route.
//FOR the Arrived status there WILL be a sub status type to deffine the Arrival on scene/origin and the arrival at patient side/patient contact time. Includes Arrived at Staging Area
//FOR the in progress status there will be Sub types to deffine when the transport begins, arrival at destination time, and the trasnfer of care. includes rrived at destination/Landing Area
//ther WILL not be addtional SUb types for cancelled and Completed. 
//THE "Unit Back at Home Location Date/Time" , and the "Back in service" will be subtypes of "other". 

Extension: StatusHistoryObservation
Id: StatusHistoryObservation
Title: "Status History Observations"
Description: "Observatons related to the encounter status"
* extension contains
	OdomoterReadings 0..1 and 
	Delays 0..*
* extension[OdomoterReadings].value[x] only Quantity
* extension[Delays].value[x] only CodeableConcept 
* extension[Delays].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)

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
	Priority 0..1 and 
	PriorityDescriptors 0..* and
	TrasnportReasonCode 0..* and
	Justification for Transfer or Encounter and 
	Reason for Interfacility Transfer/Medical Transport and 
	Refusal 0..* and  
	// NOTE: Refused (qualifier value) (443390004) 
	TransportDisposition 0..1 and
	TransportDestination 0..1 and
	TransportPosition 0..* and
	PatientMovedMethod 0..* and
	TransportAuthorization  0..1 and 
	AdditonalTransportInformation 0..* 
* extension[NumberofPatients].value[x] only Quantity
* extension[TransportMode].value[x] only CodeableConcept 
* extension[TransportMode].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
* extension[TrasnportReasonCode].value[x] only CodeableConcept 
* extension[TrasnportReasonCode].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
// also include ePayment.47 - Ambulance Conditions Indicator
* extension[ReasonForRefusal] contains
	Reason 0..* and
	InstructionsProvided 0..* 
	// eDisposition.26 - Disposition Instructions Provided should be in the plan of care section... 

* extension[ReasonForRefusal].value[x] only CodeableConcept 
* extension[ReasonForRefusal].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)

* extension[TransportAuthorization] contains 
	code 
	PriorAuthorization
* extension[TransportDisposition] contains 
	disposition
	RoundTripReason
* extension[TransportDisposition].value[x] only CodeableConcept 
* extension[TransportDisposition].valueCodeableConcept from http://hl7.org/fhir/ValueSet/encounter-status (example)
* extension[TransportDestination] contains
	DestinationReason 1..* and 
	DestinationType 0..1 and 
	HospitalCapability 0..* and
	HospitalInPatientDestination 0..1 and 
	Pre-ArrivalAlertorActivation 0..1 and
* extension[TransportDestination].value[x] only Reference(Location)
* extension[PatientMovedMethod] contains 
	ToAmbulance 0..* and 
	FromAmbulance 0..* and
	StretcherPurposeDescription 0..1
* extension[AdditonalTransportInformation].value[x] only Reference(Observation)
//insert value set when ready (valueCodeableConcept from Encounter.statusHistorySubTypes.VS (example)) 

Extension: Incident
Id: Incident
Title: "Incident Observations"
Description: "The information for the Patient incident"
* extension contains
	FirstOnScene 0..1 and
	OtherParticipants 0..1 and
	MassCasualtyIncident 0..1 and 
	NumberofPatients 0..1 and
	TriageClassification 0..1 and
	IncidentLocation 0..1 and
	PatientContact 0..1 and 
	Patient Evaluation/care 0..1 and 
	CareDisposition 0..1 and 
//Note: eDisposition.29 - Crew Disposition
	IncidentObservations 0..*
* extension[MassCasualtyIncident].value[x] only CodeableConcept 
* extension[MassCasualtyIncident].valueCodeableConcept from https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL365-8 (recommended)
* extension[NumberofPatients].value[x] only CodeableConcept 
* extension[NumberofPatients].valueCodeableConcept from https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL365-8 (recommended)
* extension[TriageClassification] contains
	Trauma Triage Criteria

.value[x] only CodeableConcept
* extension[TriageClassification].valueCodeableConcept from https://fhir.loinc.org/CodeSystem/$lookup?system=http://loinc.org&code=75616-3 (example), https://fhir.loinc.org/CodeSystem/$lookup?system=http://loinc.org&code=75636-1 (example)
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
	MechanismOfInjury 1..* and 
	VehicalCrashObservations 0..* and 
	FallObservations 0..*
	Personal Protective Equipment Used(by patient)
* extension[PossibleInjury].value[x] only CodeableConcept
* extension[PossibleInjury].valueCodeableConcept from https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL3044-6 (recommended)
* extension[WorkRelatedInjury].value[x] only CodeableConcept
* extension[WorkRelatedInjury].valueCodeableConcept from https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL3044-6 (recommended)
* extension[CauseOfInjury].value[x] only Reference(Observation)
* extension[MechanismOfInjury].value[x] only Reference(Observation)

//VALUESET TODOs:
// participant.type, statusHistorySubType, delays, encounter types, priority, PriorityDescriptors, barriers to care, TrasnportReasonCode, ReasonForRefusal, TransportDisposition, TriageClassification, 

ValueSet: PCS_Encounter_BarriersToCare_vs
Description:  "Indication of whether or not there were any patient specific barriers to serving the patient."
Id: PCS.Encounter.BarriersToCare.vs
// Note: potential vlaue set
///Spiritual or religious belief   1400009
Cultural belief conflict   704301008
Religious belief and healthcare recommendation conflict   714668003
Spiritual beliefs conflicting with healthcare plan   422930008

Developmental disorder   5294002

Hearing loss   15188001

Psychic conflict   44440005
Interference with vision   246638009

Language barrier   422693009
None   260413007
Obesity   414916001

Interference with vision   246638009
Disturbance in speech   29164008

Unconscious   418107008
Uncooperative behavior   248042003

Physical restraint 386423001


Mental distress   271596009
Emotional upset   309838005///

ValueSet: PCS_NEMSIS_BarriersToCare_vs
Description:  "Indication of whether or not there were any patient specific barriers to serving the patient."
Id: PCS.NEMSIS.BarriersToCare.vs
* NEMSIS#3101001	"Cultural, Custom, Religious"
* NEMSIS#3101003	"Developmentally Impaired"
* NEMSIS#3101005	"Hearing Impaired"
* NEMSIS#3101007	"Language"
* NEMSIS#3101009	"None Noted"
* NEMSIS#3101011	"Obesity"
* NEMSIS#3101013	"Physical Barrier (Unable to Access Patient)"
* NEMSIS#3101015	"Physically Impaired"
* NEMSIS#3101017	"Physically Restrained"
* NEMSIS#3101019	"Psychologically Impaired"
* NEMSIS#3101021	"Sight Impaired"
* NEMSIS#3101023	"Speech Impaired"
* NEMSIS#3101025	"Unattended or Unsupervised (including minors)"
* NEMSIS#3101027	"Unconscious"
* NEMSIS#3101029	"Uncooperative"
* NEMSIS#3101031	"State of Emotional Distress"
* NEMSIS#3101033	"Alcohol Use, Suspected"
* NEMSIS#3101035	"Drug Use, Suspected"

ValueSet: PCS_Encounter_Priority_vs
Description:  "The types of EMS events that the encounter covers."
Id: PCS.Encounter.Priority.vs
//Note: from = http://terminology.hl7.org/CodeSystem/v3-ActPriority 
* #UR	"urgent"
* #EM	"emergency"
* #R	"routine"
* #A	"ASAP"
//Note: from  = SNOMEDCT
#88694003	"Immediate"
#25876001	"Emergency"
#394849002	"High priority"
#394848005	"Normal priority"
#50811001	"Routine"
#49499008	"Stat"
/// Note : from NEMSIS
	4217001	Emergent (Immediate Response)
	4217003	Emergent Downgraded to Non-Emergent
	4217005	Non-Emergent
	4217007	Non-Emergent Upgraded to Emergent///

ValueSet: PCS_Encounter_serviceType_vs
Description:  "The values for ther service type of an EMS Encounter."
Id: PCS.Encounter.serviceType.vs
codes from system http://terminology.hl7.org/CodeSystem/service-type
* #230	"Patient transport"
* #117	"Emergency Medical"
* #465	"Trasnport"
* #225	"Air ambulance"
* #226	"Ambulance" 

ValueSet: PCS_statusHistorySubTypes_vs
Description:  "The values for the Encounter Status History defining the steps within EMS"
Id: PCS.statusHistorySubTypes.vs
*SNOMEDCT#405796007	"Time of call for help"
*SNOMEDCT#385644000	"Requested"
*SNOMEDCT#385644000	"Requested"
*SNOMEDCT#385645004	"Accepted"
*SNOMEDCT#398101002	"In transit"
//*SNOMEDCT#405798008	"Time of arrival of emergency services" OR
// *LOINC#88095-5  "Time of arrival of first responder" OR
// *LOINC#51999-1  "Ambulance transport, Time ambulance arrived at scene Date and time"

* #	""
// Patient Contact time

*LOINC#56858-4  "Time received by accepting facility or unit" 
// OR *LOINC#56857-6  "Time accepted for admission or transfer"

*LOINC#88079-9 	"Transport start time"
*LOINC#11288-8  "Arrival time documented"

*LOINC#56858-4  "Time received by accepting facility or unit" 
// OR *LOINC#56857-6  "Time accepted for admission or transfer"

*		"Requested"
*		"Notified"
*		"Acknowledged" -- maybe equal to planned 
*		"en route"
*		"Arrived at location"
*		"Arrived at patient"
*		"Trasnport started"
*		"Arrived at destination"
*		"Arrived at destination/Landing Area"
*		"Arrived at Staging Area"
*		"Care Transfered"
*		"Back in service"
*		"Back at Home Location"

*	"PSAP Call Date/Time" - Requested -- Time of call for help (observable entity) 405796007
*	"Dispatch Notified Date/Time" - Requested
// Requested (qualifier value) 385644000 SNOMEDCT
* 	"Unit Notified by Dispatch Date/Time" - Notified
// Requested (qualifier value) 385644000 SNOMEDCT how to differentiate?
*	"Dispatch Acknowledged Date/Time" - Acknowledged
// Accepted (qualifier value) 385645004 SNOMEDCT
*	"Unit En Route Date/Time" - en route
// In transit (attribute) ConceptId: 398101002 SNOMEDCT
*	"Unit Arrived on Scene Date/Time" - Arrived/location Time of arrival of emergency services (observable entity)  405798008
//  	88095-5 	Time of arrival of first responder LOINC
// 51999-1 	Ambulance transport, Time ambulance arrived at scene Date and time

*	"Arrived at Patient Date/Time" - Arrived at patient
// Request LOINC code .... LOINC-XXX 

*	"Transfer of EMS Patient Care Date/Time" - CareTransfered
// 56857-6 Time accepted for admission or transfer LOINC possible but may be hospital specific
//  	56858-4 	Time received by accepting facility or unit LOINC  
*	"Unit Left Scene Date/Time" - Trasnport In progress --- In progress (qualifier value) 385651009
// 	88079-9 	Transport start time LOINC 
*	"Arrival at Destination Landing Area Date/Time" - Arrived/Destination
// 11288-8 Arrival time documented LOINC
*	"Patient Arrived at Destination Date/Time" - Arrived/Destination
// 11288-8 Arrival time documented LOINC
*	"Destination Patient Transfer of Care Date/Time" - CareTransfered/destination
// 56857-6 Time accepted for admission or transfer LOINC 
*	"Unit Back in Service Date/Time" - Back in service
// Subtype of other... 
*	"Unit Canceled Date/Time" - cancelled 
// FHIR canceled concept no extension peice 
*	"Unit Back at Home Location Date/Time" - Back at home location
// Subtype of other... 
// 11288-8 Arrival time documented LOINC
*	"EMS Call Completed Date/Time" - Completed
// FHIR completed concept no extension peice 

*	"Unit Arrived at Staging Area Date/Time" - Arrived/StagingArea

//Note: dateTime 911 was called is the occurance of the occurrence[x] of the service request... also maybe dispatch notified (2 service requests?) or is the 911 call an event that triggers the encounter

Transport delay (finding) SNOMEDCT 420066004

 	75523-1 	Discharge time LOINC 
	 	75522-3 	Admission time LOINC 
		52455-3 	Admission date LOINC 
	 	21611-9 	Age estimated 
		51996-7 	Ambulance transport, Distance and time transported information Set
		69476-0 	Responding unit arrived with the patient at the destination or transfer point [Date and time] Vehicle LOINC NEMSIS
		69469-5 	911 call to public safety answering point or other designated entity requesting EMS services [Date and time] Facility LOJNC NEMSIS
		 	67517-3 	Last oral intake [Date and time] LOINC NEMSIS
			 	88092-2 	Rescue operation end [Date and time] LOINC Trauma 
	74205-6 	Alcohol use [NTDS] LOINC 
	74204-9 	Drug use [NTDS]
	 	88673-9 	Handover LOINC Trauma Handover/trasnfer of care
	88079-9 	Transport start time LOINC Trauma 
	88095-5 	Time of arrival of first responder
	 	67775-7 	Level of responsiveness
		 	88067-4 	EMS unit on scene LOINC Trauma 
			 	11288-8 	Arrival time documented LOINC Trauma 
				 	56853-5 	ED outcome LOINC Trauma 
					 	11457-9 	Safety equipment used LOINC Trauma 
						 	56857-6 	Time accepted for admission or transfer LOINC Trauma 
							56858-4 	Time received by accepting facility or unit LOINC Trauma 
							 	52011-4 	Ambulance transport, Other patient identifier LOINC 
	 	67510-8 	CPR technique LOINC Trauma 
		 	11453-8 	Receiving facility EMS system LOINC ED
			 	56814-7 	Prehospital care LOINC ED 
				52007-2Ambulance transport, Number of patients LOINC 
				 	91901-9 	Response team [Type] LOINC Public health 
Procedure code 1889001 	Patient transfer, in-hospital, unit-to-unit 
4563007 	Hospital admission, transfer from other hospital or health care facility
				