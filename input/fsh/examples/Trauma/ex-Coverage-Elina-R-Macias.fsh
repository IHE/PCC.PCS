Instance: ex-Coverage-Elina-R-Macias
InstanceOf: Coverage
Description: "The Fall Example instance for the Coverage Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MB
* identifier.value = 37468674
* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#SUBSUPP
* subscriber = Reference(Paitent/ex-Patient-Elina-R-Macias)
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* payor = Reference(Organization/ex-Coverage-Elina-R-Macias-Organization)
* order = 1
* beneficiary = Reference(Paitent/ex-Patient-Elina-R-Macias) 


Instance: ex-Coverage-Elina-R-Macias-Organization
InstanceOf: IHE_PCC_mPSC_Organization
Description: "The Fall Example instance for the Coverage organization utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier.value = 12345
* name = "Medicare"
* address.line = "PO Box 1437, Slot S401"
* address.city = "Little Rock"
* address.state = "Arkansas"
* address.postalCode = "72203-1437"
* address.country = "US"