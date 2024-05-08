Profile:        Paramedicine_Incident
Parent:         Encounter
Id:             IHE.PCC.Paramedicine.Incident
Title:          "Incident"
Description:    "The event that is the main focus or cause for the Paramedicine Response."

* identifier MS 
* type MS 

* period MS 
* Period.start 1..1 MS 

* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "pattern"
* participant ^slicing.rules = #open
* participant ^slicing.description = "TBD"
* participant ^slicing.ordered = false
* participant contains otherResponders 0..* MS 
* participant[otherResponders].type MS 
* participant[otherResponders].individual only Reference(Practitioner or PractitionerRole)

* location 1..1 MS 
* partOf = Reference(IHE_PCC_ParamedicineSummary_Encounter_ClinicalSubset)

* serviceProvider 0..0
* hospitalization 0..0 
* account 0..0 
* diagnosis 0..0

