Instance: ex-Patient
InstanceOf: Patient-uv-ips
Usage: #example
Description: "The Example instance for the Patient in PCS"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#US "United States of America"
* identifier[0].system = "http://trilliumbridge.eu/fhir/demos/eumfh/inject"
* identifier[=].value = "39-07"
* identifier[+].system = "http://trilliumbridge.eu/fhir/demos/eumfh/patient_id"
* identifier[=].value = "EUR01P0001"
* active = true
* name.family = "Heig"
* name.given = "Alexander"
* gender = #male
* birthDate = "1957"

