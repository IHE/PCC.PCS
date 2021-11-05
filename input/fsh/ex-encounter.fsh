Instance:   example-Encounter-Complete
InstanceOf: Encounter
Title: "Example Encounter"
Description:      "holding typical values for the PCS Encounter resource"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subject = Reference(Patient/ex-patient)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#HH
* identifier.value = "1234567"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* status = #finished
* statusHistory.status[+] = #planned
* statusHistory.period.start[=] = 2021-11-05T16:30:25
* statusHistory.status[+] = #arrived
* statusHistory.period.start[=] = 2021-11-05T16:32:58
* statusHistory.status[+] = #triaged
* statusHistory.period.start[=] = 2021-11-05T16:33:15
* statusHistory.status[+] = #in-progress
* statusHistory.period.start[=] = 2021-11-05T16:40:05
* statusHistory.period.end[=] = 2021-11-05T16:55:42
* statusHistory.status[+] = #finished
* statusHistory.period.start[=] = 2021-11-05T17:00:15