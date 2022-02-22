Profile:   IHE_PCS_Encounter_ClinicalSubset
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.ClinicalSubset
Title: "IHE PCS Encounter Clinical Subset"
Description:      """
An IHE PCS Encounter Complete Report resource is used to deffine the emergency medical transport encounter of a patient,with only clinically relevant infromaiton.
- Identifier is Required
- Status Sub types are Required if Known
- statusHistory is required if known
- Status history observations are Optional
- encounter type is Required
- Service type is required if known 
- priority is required if known
- diagnosis arenrequired if known
- Barriers to care are required if KNown 
- Transport elements are Required if KNown
- MassCasualty incident elements are Required if known
OPEN ISSUE: How to properly represent location type in relation to the encounter : dispatch, Scene, ambulance, destination
	- Location.type in the location resource directed to a value set 
	- Location.type extension in the location section in the encounter
"""


* identifier 1..*
* status 1..1
* statusHistory 0..*
* extension contains StatusSubType named StatusSubType 0..*
* extension contains StatusHistoryObservation named StatusHistoryObservation 0..*
//Note: Encunter type should be Ambulance, Medflight, should be set as an extensible code set
* class 1..1
* type 1..*
* type from NEMSIS.Type.of.Service.Requested.VS (example)
//Note: Should have as main options $230 "Patient transport", $117 "Emergency Medical" or $465 "Trasnport", $225 "Air ambulance", $226 "Ambulance" 
* subject 1..1
* reasonCode 1..*
* diagnosis 0..*
//condition.category will = encounter-diagnosis and primary and scondary impressions should be indicated with the Diagnosis rank Number
* serviceProvider 1..1
* extension contains BarriersToPatientCare named Barriers 0..* 
* extension contains Transport named Transport 0..1
* extension contains MassCasualtyIncident named MassCasualtyIncident 0..1

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
* extension contains
	Delays 0..* and
	OdometerReadings 0..*
* entry[Delays].valueCodeableConcept
* entry[OdometerReadings].valueQuantity

Extension: Barriers
Id: BarriersToPatientCare
Title: "Barriers To Patient Care"
Description: "Indication of whether or not there were any patient specific barriers to serving the patient."
* value[x] only CodeableConcept
* valueCodeableConcept from NEMSIS.Barriers.to.Patient.Care.VS (example)

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
* extension[NumberofPatients].valueInteger
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
* extension[DisasterType].valueCodeableConcept from NEMSIS.Natural.Suspected.Disaster.VS (example)

* location ^slicing.discriminator.type = #pattern
* location ^slicing.discriminator.path = "$this"
* location ^slicing.rules = #open
* location ^slicing.ordered = false
* location ^slicing.description = "TBD"
* location 1..4
* location contains 
	Dispatch 0..1 MS and
	Scene 0..1 MS and 
	Ambulance 0..1 MS and
	Destination 0..1 MS and
* location[Dispatch].physicalType = #rd
* location[Scene].physicalType = #rd	
* location[Ambulance].physicalType = #ve
* location[Destination].physicalType = #bu