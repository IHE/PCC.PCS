Instance:   IHE-PCS-Encounter-CompleteReport
InstanceOf: Encounter
Title: "IHE PCS Encounter"
Description:      "an encounter resource used to deffine an emergency medical encounter of a patient"
* identifier 1..*
* status 1..1 
* status = [extend]
* statusHistory 1..* 
* statusHistory = [extend]
* class 1..1
* class = [extend] 
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "$this"
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
* note.text = "a minimal blood pressure"