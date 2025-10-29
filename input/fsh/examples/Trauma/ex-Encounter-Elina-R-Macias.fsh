Instance: ex-Patient-Elina-R-Macias-Encounter
InstanceOf: IHE_PCC_mPSC_Encounter
Usage: #example
Description: "The instance for Patient Elina R Macias Encounter Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = http://hl7.org/fhir/encounter-status#in-progress
* identifier = "350-20221009012"
* period.start = "2022-10-09T09:38:43-05:00"
* statusHistory.status[+] = http://hl7.org/fhir/encounter-status#planned
* statusHistory.period.start[=] = "2022-10-09T08:10:12-05:00"
* statusHistory.period.end[=] = "2022-10-09T08:45:58-05:00"
* statusHistory.status[+] = http://hl7.org/fhir/encounter-status#arrived
* statusHistory.period.start[=] = "2022-10-09T08:45:58-05:00"
* statusHistory.period.end[=] = "2022-10-09T08:46:30-05:00"
* statusHistory.status[+] = http://hl7.org/fhir/encounter-status#triaged
* statusHistory.period.start[=] = "2022-10-09T08:46:30-05:00"
* statusHistory.period.end[=] = "2022-10-09T08:46:30-05:00"
* serviceType = http://terminology.hl7.org/CodeSystem/service-type#117 "Emergency Medical"
* priority = $sct#394848005 "Normal priority"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* basedOn = Reference(ServiceRequest/ex-ServiceRequest-Elina-R-Macias)
* participant.individual[+] = Reference(Practitioner/ex-Practitioner-Chase-Grey)
* participant.type[=] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF
* participant.period.start[=] = "2022-10-09T08:45:58-5:00"
* participant.period.end[=] = "2022-10-09T08:58:24-5:00"
* participant.individual[+] = Reference(Practitioner/ex-Practitioner-Chase-Grey)
* participant.type[=] = $sct#236320001 "Vehicle driver"
* participant.period.start[=] = "2022-10-09T08:17:36-5:00"
* participant.period.end[=] = "2022-10-09T08:45:58-5:00"
* participant.individual[+] = Reference(Practitioner/ex-Practitioner-Chase-Grey)
* participant.type[=] = $sct#236320001 "Vehicle driver"
* participant.period.start[=] = "2022-10-09T08:58:24-5:00"
* participant.period.end[=] = "2022-10-09T09:35:10-5:00"
* participant.individual[+] = Reference(Practitioner/ex-Practitioner-Ellen-Costa)
* participant.type[=] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant.period.start[=] = "2022-10-09T08:45:58-5:00"
* participant.period.end[=] = "2022-10-09T08:58:24-5:00"
* participant.individual[+] = Reference(Practitioner/ex-Practitioner-Ellen-Costa)
* participant.type[=] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant.period.start[=] = "2022-10-09T08:58:24-5:00"
* participant.period.end[=] = "2022-10-09T09:38:43-5:00"
* reasonCode = $sct#1912002 "Fall"
* location.location[+] = Reference(Location/ex-Location-Elina-R-Macias-Vehicle)
* location.period.start[=] = "2022-10-09T08:58:24-5:00"
* location.period.end[=] = "2022-10-09T09:35:10-5:00"
* location.location[+] = Reference(Location/ex-Location-Elina-R-Macias-Incident)
* location.period.start[=] = "2022-10-09T08:10:12-5:00"
* location.period.end[=] = "2022-10-09T08:58:24-5:00"
* location.location[+] = Reference(Location/ex-Location-Elina-R-Macias-Destination)
* location.period.start[=] = "2022-10-09T09:35:10-5:00"