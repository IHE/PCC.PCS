Profile:        Last_Known_Well
Parent:         Observation
Id:             Last.Known.Well
Title:          "Last Known Well"
Description:    "The estimated date and time the patient was last known to be well or in their usual state of health. This is described or estimated by the patient, family, and/or bystanders."

//Proper loinc code needs to be requested or found
* value[x] 1..1
* value[x] only dateTime



Instance: Ex-LastKnownWell
InstanceOf: Last_Known_Well
Usage: #example
Description: "The Example instance for last known well observation"
* code = http://loinc.org#67517-3
* status  = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2023-08-03T14:14:45-05:00"
* valueDateTime = "2023-08-03T12:00:00-05:00"
