Instance:   ex-CauseOfInjury
InstanceOf: Observation
Title: "Example of a Cause Of Injury observation"
Description:      "holding typical values for cause of injury"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#11373-8 
* valueString = "Fell off bike whule riding it down the street."

Instance:   ex-CauseOfInjury-DataAbsent
InstanceOf: Observation
Title: "Example of a Cause Of Injury observation when data is absent"
Description:      "holding typical values for cause of injury"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#11373-8 
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable

