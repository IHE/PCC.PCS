Profile:   IHE_PCS_Encounter_CompleteReport
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.CompleteReport
Title: "IHE PCS Encounter Complete Report"
Description:      """
An IHE PCS Encounter Complete Report resource is used to deffine the full emergency medical transport encounter of a patient,
- SHALL have identifiers
- SHALL have a Subject. 
- SHALL reference episodeOfCare. The episodeOfCare SHALL contain the episodeOfCare identifiers
- SHALL contain MassCasualtyIncident.   
- SHALL Contain BarriersToCare.
- SHALL have a status 
- SHALL have a statusHistory
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
//Note: Encunter type should be Ambulance, Medflight, should be set as an extensible code set
* class 1..1
* class from NEMSIS.Type.of.Service.Requested.VS (example)
* type 1..*
//Note: Should have as main options $230 "Patient transport", $117 "Emergency Medical" or $465 "Trasnport", $225 "Air ambulance", $226 "Ambulance" 
* serviceType 1..1
* serviceType from NEMSIS.Level.of.Care.Provided.per.Protocol.VS (example)
* priority 1..1 
* priority from NEMSIS.Response.Mode.to.Scene.VS (example)
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
* extension contains MassCasualtyIncident named MassCasualtyIncident 0..1

* location.entry ^slicing.discriminator.type = ##pattern
* location.entry ^slicing.discriminator.path = "encounter.location"
* location.entry ^slicing.rules = #open
* location.entry ^slicing.ordered = false
* location.entry ^slicing.description = "Slicing to accomodate the different locations that take place during a Paramedicine Encounter"
* entry contains
	Ambulance 1..1 and
	VehicalDispatch 0..1 and
	Scene 1..1 and
	Destination 0..1 and

Extension: StatusSubType
Id: StatusSubType
Title: "PCS Encounter status history sub-type"
Description: "Refinement of the Encounter Status History for steps within EMS"
* value[x] only CodeableConcept
* valueCodeableConcept from NEMSIS.StatusHistorySubType.VS (example)
//NOTE: Status sub-type is used to further defffine the steps used in EMS. For the Planned status there WILL be sub status types to have timestamps for the call for help, the Dispatch request, the Unit request, and start time of en route.
//FOR the Arrived status there WILL be a sub status type to deffine the Arrival on scene/origin and the arrival at patient side/patient contact time. Includes Arrived at Staging Area
//FOR the in progress status there will be Sub types to deffine when the transport begins, arrival at destination time, and the trasnfer of care. includes rrived at destination/Landing Area
//there WILL not be addtional SUb types for cancelled and Completed. 
//THE "Unit Back at Home Location Date/Time" , and the "Back in service" will be subtypes of "other". 

Extension: StatusHistoryObservation
Id: StatusHistoryObservation
Title: "Status History Observations"
Description: "Observatons related to the encounter status"
* value[x] = reference(Observation)

Extension: PriorityDescriptors
Id: PriorityDescriptors
Title: "Priority Descriptors"
Description: "The documentation of response mode techniques used for this EMS response."
* value[x] only CodeableConcept
* valueCodeableConcept from NEMSIS.Additional.Response.Mode.Descriptors.VS (example)

Extension: Barriers
Id: BarriersToCare
Title: "Barriers To Patient Care"
Description: "Indication of whether or not there were any patient specific barriers to serving the patient."
* extension[BarriersToPatientCare].valueCodeableConcept from NEMSIS.Barriers.to.Patient.Care.VS (example)

Extension: Transport
Id: Transport
Title: "Transport"
Description: "Transport Information for the encounter."
* extension contains
	Priority 0..1 and
	PriorityDescriptors 0..* and
	NumberofPatients 0..1 and 
	TansportReasonCode 0..* and 
	Disposition 0..1 and 
	DestinationReason 0..* and
	RefusalReason 0..*
* extension[Priority].valueCodeableConcept from NEMSIS.Transport.Mode.from.Scene.VS (example)
* extension[PriorityDescriptors].valueCodeableConcept from NEMSIS.Additional.Transport.Mode.Descriptors.VS (example)  
* extension[NumberofPatients].value[x] 
* extension[TansportReasonCode].valueCodeableConcept
* extension[Disposition].valueCodeableConcept from NEMSIS.Transport.Disposition.VS (example) 
* extension[DestinationReason].valueCodeableConcept from NEMSIS.Reason.for.Choosing.Destination.VS (example) 
* extension[RefusalReason].valueCodeableConcept from NEMSIS.Reason.for.Refusal.Release.VS (example) 

Extension: MassCasualtyIncident
Id: MassCasualtyIncident
Title: "Mass Casualty Incident"
Description: "The information reatlated to Paramedicine encounters for mass casualty incidents."
* extension contains
		MassCasualtyIncidentIndicator 0..1 and
		NumberofPatients 0..1 and
		TriageClassification 0..1 and 
		DisasterType 0..1 
//Note: eDisposition.29 - Crew Disposition
* extension[MassCasualtyIncidentIndicator].valueCodeableConcept from http://terminology.hl7.org/ValueSet/v2-0136
* extension[NumberofPatients].value[x]
* extension[TriageClassification].valueCodeableConcept from NEMSIS.Triage.Classification.for.MCI.Patient.VS (example)
* extension[DisasterType].valueCodeableConcept from NEMSIS.Natural.Suspected.Intentional.or.Unintentional.Disaster.VS (example)

