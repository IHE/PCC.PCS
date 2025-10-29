Instance: ex-Patient-Elina-R-Macias-Transport
InstanceOf: IHE_PCC_Patient_Transport
Usage: #example
Description: "The instance for Patient Elina R Macias Transport Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = http://hl7.org/fhir/encounter-status#in-progress
* type = $sct#715537001 "Transportation by ambulance"
* serviceType = http://terminology.hl7.org/CodeSystem/service-type#117 "Emergency Medical"
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#A
* period.start = "2022-10-09T08:58:24-05:00"
* Location[+] = Reference(Location/ex-Location-Elina-R-Macias-Destination)
* Location[+] = Reference(Location/ex-Location-Elina-R-Macias-Vehicle)