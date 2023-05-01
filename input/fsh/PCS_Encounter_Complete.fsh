Profile:   IHE_PCS_Encounter_CompleteReport
Parent: IHE_PCS_Encounter_ClinicalSubset
Id:             IHE.PCC.PCS.Encounter.CompleteReport
Title: "IHE PCS Encounter Complete Report"
Description:      """
An IHE PCS Encounter Complete Report resource is used to deffine the full emergency medical transport encounter of a patient,
- identifiers are Required if Known
- Status SHALL be Finished  
- Status History is required
- Status History Observations are Required if Known
- Class is required
- Type is Required
- Service type is required  
- Priority is required 
- Priority Descriptors are required if KNown 
- Subject is required
-  Based on is Required if Known 
- Participants are required 
- Participant types are required if known
-  Period is required 
- Reason code is required
- Diagnosis is required 
- Barriers to care are required if known 
- MassCasualty incident is required if Known 
- Transport elements are required if known 
OPEN ISSUE: How to properly represent location type in relation to the encounter : dispatch, Scene, ambulance, destination
- Location ambulance is required 
- Location Vehical dispatch is required if known 
- Location Scene is required 
- Location Destination is Required 
	- Location.type in the location resource directed to a value set 
	- Location.type extension in the location section in the encounter
"""


* status = #finished
* statusHistory 1..*
* extension contains StatusSubType named StatusSubType 0..*
* extension contains StatusHistoryObservation named StatusHistoryObservation 0..*
//Note: Should have as main options $230 "Patient transport", $117 "Emergency Medical" or $465 "Trasnport", $225 "Air ambulance", $226 "Ambulance" 
* serviceType 1..1
* serviceType from NEMSIS.Level.of.Care.Provided.per.Protocol.VS (example)
* priority 1..1 
* priority from NEMSIS.Response.Mode.to.Scene.VS (example)
* extension contains PriorityDescriptors named PriorityDescriptors 0..*
* basedOn 1..1
* participant 1..*
* participant.type 1..*
* period 1..1
* diagnosis 1..*
//condition.category will = encounter-diagnosis and primary and scondary impressions should be indicated with the Diagnosis rank Number



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

* location 1..*
* location ^slicing.discriminator.type = #pattern
* location ^slicing.discriminator.path = "$this"
* location ^slicing.rules = #open
* location ^slicing.ordered = false
* location ^slicing.description = "TBD"
* location contains 
	Dispatch 0..1 MS and
	Scene 0..1 MS and 
	Ambulance 0..1 MS and
	Destination 0..1 MS
* location[Dispatch].physicalType = #rd
* location[Scene].physicalType = #ho	
// Note: ho for scene is just an example, scene can be multiple location types may need to be resolved as an example 
* location[Ambulance].physicalType = #ve
* location[Destination].physicalType = #bu


Extension: StatusHistoryObservation
Id: StatusHistoryObservation
Title: "Status History Observations"
Description: "Observatons related to the encounter status"
* extension contains
	Delays 0..* and
	OdometerReadings 0..*
* entry[Delays].valueCodeableConcept
* entry[OdometerReadings].valueQuantity

Extension: PriorityDescriptors
Id: PriorityDescriptors
Title: "Priority Descriptors"
Description: "The documentation of response mode techniques used for this EMS response."
* value[x] only CodeableConcept
* valueCodeableConcept from NEMSIS.Additional.Response.Mode.Descriptors.VS (example)

