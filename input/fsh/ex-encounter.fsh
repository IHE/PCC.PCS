Instance:   example-Encounter-Complete
InstanceOf: Encounter
Title: "Example Encounter"
Description:      "holding typical values for the PCS Encounter resource"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subject = Reference(Patient/ex-patient)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#HH
* text = "John Doe called 911 for an onset of cheat pain. EMS was sent to his house where they evaluated him and determined that he needed to go to the hospital for further vaaluation and care." 