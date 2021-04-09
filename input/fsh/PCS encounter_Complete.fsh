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
* period = [extension/slice]

* length 0..1 

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
//The Slice has the name Impressions 
* diagnosis ^slicing.discriminator.type = #pattern
* diagnosis ^slicing.discriminator.path = "code"
* diagnosis ^slicing.rules = #closed
* diagnosis.impressions contains
* diagnosis.impressions 1..*
* impressions = Reference (ClinicalImpression) 

//The Slice has the name possibleInjury 
* diagnosis ^slicing.discriminator.type = #pattern
* diagnosis ^slicing.discriminator.path = "code"
* diagnosis ^slicing.rules = #closed
* diagnosis.possibleInjury contains
* diagnosis.possibleInjury 0..1
* diagnosis.possibleInjury = Reference (ClinicalImpression)

//The Slice has the name barriersToCare 
* diagnosis ^slicing.discriminator.type = #pattern
* diagnosis ^slicing.discriminator.path = "code"
* diagnosis ^slicing.rules = #closed
* diagnosis.barriersToCare contains
* diagnosis.barriersToCare 0..*
* diagnosis.barriersToCare = Reference (ClinicalImpression)

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