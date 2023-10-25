Profile:        Last_Oral_Intake
Parent:         Observation
Id:             Last.Oral.Intake
Title:          "Last oral intake Observation"
Description:    "Date and Time of last oral intake."

* code = $loinc#67517-3
* value[x] 1..1
* value[x] only dateTime
* status = #final

* implicitRules 0..0
* language 0..0
* contained 0..0
* modifierExtension 0..0
* issued 0..0
* interpretation 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* component 0..0
* note 0..0


Instance: Ex-LastOralIntake
InstanceOf: Last_Oral_Intake
Usage: #example
Description: "The Example instance for Last Oral intake observation"

* status  = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2023-08-03T14:14:45-05:00"
* valueDateTime = "2023-08-03T12:00:00-05:00"