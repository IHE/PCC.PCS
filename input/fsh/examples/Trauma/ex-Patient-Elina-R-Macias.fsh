Instance: ex-Patient-Elina-R-Macias
InstanceOf: IHE_PCC_mPSC_Patient
Usage: #example
Description: "The Fall Example instance for the Paramedicine Patient Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[+].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
* identifier[=].value = "659JEX"
* identifier[=].system = "http://www.acme.com/identifiers/patient"
* identifier[=].assigner = Reference(Organization/ex-Organization-Paramedicine-Agency)

* identifier[+].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
* identifier[=].value = "430153583"
* identifier[=].system = "http://www.acme.com/identifiers/patient"

* name.family = "Macias"

* name.given = "Elina"

* name.given = "R"

* gender = #female 

* birthDate = "1941-08-04"

* address.use = #home 
* address.line = "520 South Pine Street"

* address.city = "City of Hope"

* address.district = "Hempstead County"

* address.postalCode = "71801"

* address.state = "Arkansas"

* address.country = "US"

* generalPractitioner[+] = Reference(Practitioner/ex-Patient-Elina-R-Macias-Practitioner-1)
* generalPractitioner[+] = Reference(Practitioner/ex-Patient-Elina-R-Macias-Practitioner-2)

Instance: ex-Patient-Elina-R-Macias-Practitioner-1
InstanceOf: Practitioner
Usage: #example
Description: "The Fall Example instance for Elina's practitioner-1 utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name.family = "Sadler"
* name.given = "Randall"
* name.given = "M"

Instance: ex-Patient-Elina-R-Macias-Practitioner-2
InstanceOf: Practitioner
Usage: #example
Description: "The Fall Example instance for Elina's practitioner-1 utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name.family = "Beck"
* name.given = "Darlene"
* name.given = "T"

