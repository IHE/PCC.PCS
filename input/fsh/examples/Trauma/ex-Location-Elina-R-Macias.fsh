Instance:   ex-Location-Elina-R-Macias-Dispatch
InstanceOf: IHE_PCC_mPSC_Location
Title:      "Paramdicine Summary Paramedicine Dispatch Location example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "Paramdicine Summary Paramedicine Dispatch Location example utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name = "Texarkana Arkansas Station"
* position.longitude = 33.460
* position.latitude = 94.002
* type = $sct#34261000087105
* address.state[+] = "Arkansas"


Instance:   ex-Location-Elina-R-Macias-Vehicle
InstanceOf: IHE_PCC_mPSC_Vehicle
Title:      "Paramdicine Summary Paramedicine Vehicle example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "Paramdicine Summary Paramedicine vehicle example utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier.value = "501.183"
* name = "GA 11"
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#AMB
* physicalType = $sct#44613004    "Ground transport ambulance"


Instance:   ex-Location-Elina-R-Macias-Incident
InstanceOf: IHE_PCC_mPSC_Location
Title:      "Paramdicine Summary Paramedicine incident location example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "Paramdicine Summary Paramedicine incident location utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type[+] = $sct#419955002 "Residential institution"
* type[+] = $sct#702869004 "Incident site"
* type[+] = $ICD10#Y92.0 "Non-institutional (private) residence as the place of occurrence of the external cause"
* position.longitude = 33.663
* position.latitude = 93.594
* address.line = "520 South Pine Street"
* address.line = "Unit A"
* address.city = "City of Hope"
* address.district = "Hempstead County"
* address.postalCode = "71801"
* address.state = "Arkansas"
* address.country = "US"