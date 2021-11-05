Instance:   example-Encounter-Complete
InstanceOf: Encounter
Title: "Example Encounter"
Description:      "holding typical values for the PCS Encounter resource"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subject = Reference(Patient/ex-patient)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#HH
* text = 'John Doe called 911 for an onset of cheat pain. EMS was sent to his house where they evaluated him and determined that he needed to go to the hospital for further vaaluation and care.'
* identifier.value = "1234567"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* status = #finished
* statusHistory.status[+] = #planned
* statusHistory.period.start[=] = "2021-11-05T16:30:25-7:00"
* statusHistory.status[+] = #arrived
* statusHistory.period.start[=] = "2021-11-05T16:32:58-7:00"
* statusHistory.status[+] = #triaged
* statusHistory.period.start[=] = "2021-11-05T16:33:15-7:00"
* statusHistory.status[+] = #in-progress
* statusHistory.period.start[=] = "2021-11-05T16:40:05-7:00"
* statusHistory.period.start[=] = "2021-11-05T16:55:42-7:00"
* statusHistory.status[+] = #finished
* statusHistory.period.start[=] = "2021-11-05T17:00:15-7:00"