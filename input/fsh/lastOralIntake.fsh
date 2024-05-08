Profile:        Last_Oral_Intake
Parent:         Observation
Id:             Last.Oral.Intake
Title:          "Last oral intake Observation"
Description:    "Date and Time of last oral intake."

* code = $loinc#67517-3
* value[x] 1..1
* value[x] only dateTime


Instance: Ex-LastOralIntake
InstanceOf: Last_Oral_Intake
Usage: #example
Description: "The Example instance for Last Oral intake observation"

* status  = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2023-08-03T14:14:45-05:00"
* valueDateTime = "2023-08-03T12:00:00-05:00"