Profile:   IHE_PCS_Encounter_CLinicalSubset
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.Complete Report
Title: "IHE PCS Encounter CLinical Subset"
Description:      "an encounter resource used to deffine an emergency medical encounter of a patient

* identifier 1..*
* status 1..1 
* status = [extend]
* statusHistory 1..* 
* statusHistory = [extend]
* class 1..1
* class = [extend] 
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = $this
* class ^slicing.rules = #closed
* class 0..1
* class contains
	classType
* serviceType 1..1 
* serviceType =
* priority 1..1
slice: 
* priority.priorityObservations 0..*
* priority.priorityObservations = 
* period 1..1 
* period = [extension/slice]
* length 0..1 
* reasonCode 1..1 
* reasonCode =
slice:
*MassCasualtyIncident 0..1
*MassCasualtyIncident.NumberOfPatients 0..1
*MassCasualtyIncident.NumberOfPatients = boulian y/n 
*MassCasualtyIncident.triageClassification 0..1
*MassCasualtyIncident.triageClassification = 
* diagnosis 0..* 
slice:
* diagnosis.impressions 1..*
* diagnosis = 
Slice:
* diagnosis.possibleInjury
* diagnosis = 
Slice:
* diagnosis.barriersToCare 0..*
* diagnosis = 
* Location 1..*
slice: 
* Location.arrival 1..1
* Location.arrival = Reference(Location)
* Location.destination 1..0
* Location.destination = Reference(Location) 
* serviceProvider = 1..1
* component[1].valueQuantity = 90.0 'mm[Hg]'
* note.text = a minimal blood pressure

"
* identifier 1..*
// TODO add an extension element to statusHistory.status holding refined status for EMS  
* class from NEMSIS.eResponse.VS
* statusHistory.extension contains StatusHistorySubType named subType 1..1

Extension: StatusHistorySubType
Id: Encounter.statusHistorySubType
Description: "Refinement of the Encounter status for steps within EMS"
Title: "PCS Encounter status history sub-type"
* value[x] only CodeableConcept
* valueCodeableConcept from Encounter.statusHistorySubTypes.VS

CodeSystem: StatusHistorySubType
Id: Encounter.statusHistorySubType.CS
* #arrived "Arrived on scene"
* #stablized "Stablized patient"
* #flipped "Flipped patient over"
* #painted "Painted toenails of patient"

ValueSet: StatusHistorySubTypes
Id: Encounter.statusHistorySubTypes.VS
* codes from system Encounter.statusHistorySubType.CS

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
