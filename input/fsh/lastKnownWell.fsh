Profile:        Last_Known_Well
Parent:         Observation
Id:             Last.Known.Well
Title:          "Last Known Well"
Description:    "The estimated date and time the patient was last known to be well or in their usual state of health. This is described or estimated by the patient, family, and/or bystanders."

//* code = $loinc#67517-3
//Proper loinc code needs to be requested or found
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


Instance: Ex-LastKnownWell
InstanceOf: Last_Known_Well
Usage: #example
Description: "The Example instance for last known well observation"

* status  = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2023-08-03T14:14:45-05:00"
* valueDateTime = "2023-08-03T13:50:45-05:00"
