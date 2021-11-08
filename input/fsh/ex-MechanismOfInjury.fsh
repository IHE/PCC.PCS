Instance:   ex-MechanismOfInjury
InstanceOf: Observation
Title: "Example of a Mechanism Of Injury observation"
Description:      "holding typical values for Mechanism of injury"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#67494-5
* valueCodeableConcept = http://snomed.info/sct#425359009

Instance:   ex-MechanismOfInjury-DataAbsent
InstanceOf: Observation
Title: "Example of a Mechanism Of Injury observation when data is absent"
Description:      "holding typical values for Mechanism of injury"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#67494-5
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable