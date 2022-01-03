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
	Refusal 0..* and  
	// NOTE: Refused (qualifier value) (443390004) 
	TransportDisposition 0..1 and
	TransportDestination 0..1 and
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

* extension[TriageClassification].value[x] only CodeableConcept
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
