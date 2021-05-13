Profile:   IHE_PCS_Encounter_CompleteReport
Parent: IHE.PCC.PCS.Encounter.ClinicalSubset
Id:             IHE.PCC.PCS.Encounter.CompleteReport
Title: "IHE PCS Encounter Complete Report"
Description:      "an encounter resource used to deffine an emergency medical encounter of a patient"

* identifier 1..* 

* subject = Reference(StructureDefinition-us-core-patient) 1..1

* episodeOfCare = Reference(episodeOfCare) 1..1
* episodeOfCare.identifier 1..1
* episodeOfCare.text 1..1

* basedOn = Reference(ServiceRequest) 1..1
* ServiceRequest.category 1..1
* ServiceRequest.reasonCode 1..1
* ServiceRequest.Coverage 0..1

* statusHistory 1..* 
* statusHistory = [extend]

* class 1..1
* class ^slicing.discriminator.type = #pattern
* class ^slicing.discriminator.path = "code"
* class ^slicing.rules = #closed
* class 0..1
* class contains
	classType 0..1
	classType = 

* serviceType 1..1 
* serviceType =

* priority 1..1
//The Slice has the name priorityObservations 
* priority ^slicing.discriminator.type = #pattern
* priority ^slicing.discriminator.path = "code"
* priority ^slicing.rules = #closed
* priority.priorityObservations 0..*
* priority.priorityObservations = 

* period 1..1 

* length 1..1 

* reasonCode 1..1 
* reasonCode =

//The Slice has the name MassCasualtyIncident
* encounter ^slicing.discriminator.type = #value
* encounter ^slicing.discriminator.path = "system"
* encounter ^slicing.rules = #closed
*MassCasualtyIncident contains
*MassCasualtyIncident 0..1
*MassCasualtyIncident = boulian y/n 
*MassCasualtyIncident.NumberOfPatients 0..1
*MassCasualtyIncident.triageClassification 0..1
*MassCasualtyIncident.triageClassification = 


* diagnosis 0..*

* diagnosis.use (prefeered bingisngs value set of codes)  
* diagnosis.use from (ADD value set)


//The Slice has the name possibleInjury 
* diagnosis ^slicing.discriminator.type = #pattern
* diagnosis ^slicing.discriminator.path = "code"
* diagnosis ^slicing.rules = #closed
* diagnosis.possibleInjury contains
* diagnosis.possibleInjury 0..1


//The Slice has the name barriersToCare 
* diagnosis ^slicing.discriminator.type = #pattern
* diagnosis ^slicing.discriminator.path = "code"
* diagnosis ^slicing.rules = #closed
* diagnosis.barriersToCare contains
* diagnosis.barriersToCare 0..*
3

//The Slice has the name destination 
* Location ^slicing.discriminator.type = #pattern
* Location ^slicing.discriminator.path = "code"
* Location ^slicing.rules = #closed
* Location.destination contains
* Location.destination 1..1
* Location.destination = Reference (Location)

//The Slice has the name Scene 
* Location ^slicing.discriminator.type = #pattern
* Location ^slicing.discriminator.path = "code"
* Location ^slicing.rules = #closed
* Location.Scene contains
* Location.Scene 1..1
* Location.Scene = Reference (Location)


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