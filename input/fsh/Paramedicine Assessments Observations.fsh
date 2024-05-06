Profile:        Assessment-GlasgowComaScale
Parent:         Observation
Id:             Assessment.GlasgowComaScale
Title:          "Glasgow Coma Scale Assessment Observation"
Description:    "The Glasgow Coma Scale is a neurological scale for assessing a person's level of consciousness, both for initial as well as continuing assessment. A patient is assessed against the criteria of the scale, and the resulting points give the Glasgow Coma Score (or GCS)."

* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code  = $loinc#35088-4
* effectiveDateTime 1..1 MS 
* subject 1..1 MS 
* component 1..* MS 
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "TBD"
* component ^slicing.ordered = false
* component contains 
    GlasgowComaScoreEye 1..1 and 
    GlasgowComaScoreMotor 1..1 and 
    GlasgowComaScoreVerbal 1..1 and 
    GlasgowComaScoreTotal 1..1 
* component[GlasgowComaScoreEye].code = $loinc#9267-6
* component[GlasgowComaScoreMotor].code = $loinc#9268-4
* component[GlasgowComaScoreVerbal].code = $loinc#9270-0
* component[GlasgowComaScoreTotal].code = $loinc#9269-2


Profile:        Triage-Acuity-Assessment
Parent:         Observation
Id:             Triage.Acuity.Assessment
Title:          "Acuity Assessment"
Description:    "Triage Data"

* code = $loinc#11283-9 
* subject only Reference(Patient)
* encounter MS 
* value only CodeableConcept MS 
* dataAbsentReason MS 
* derivedFrom 1..* MS 