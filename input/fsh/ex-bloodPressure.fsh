Instance:   IHE-PCS-Encounter
InstanceOf: Encounter
Title: "IHE PCS Encounter"
Description:      "an encounter resource used to deffine an emergency medical encounter of a patient"
* identifier 1..*
* identifier =
* statusHistory 1..* 
* statusHistory =
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
*MassCasualtyIncident 0..*
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
* Location.arrival = 
* Location.destination 1..0
* Location.destination = reference(Location) 
* serviceProvider = 1..1
* component[1].valueQuantity = 90.0 'mm[Hg]'
* note.text = "a minimal blood pressure"