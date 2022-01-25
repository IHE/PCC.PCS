Instance:   ex-Coverage-Cardiac
InstanceOf: Coverage
Title: "Cardiac example Patient Covereage"
Description:      "holding typical values for coverage in the PCS complete report"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* id = "e84a6e0b-7607-4529-8afc-40a02ebf4d24"
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP
* order = 1
//Note: translated from primary to number values 
* subscriber = Reference(RelatedPerson/c70c8063-85b0-4346-8fc7-1ca1966ca4ed)
* subscriberId = "S9387H"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#spouse
* class.type = http://terminology.hl7.org/CodeSystem/coverage-class#group 
* class.value = "1080"
* class.name = "Family"
* payor = Reference(Organization/60593cfa-123e-4ca0-b763-dfd70ff81cc8)


Instance: Inline-Instance-for-Coverage-Organization
InstanceOf: Organization
Usage: #inline
* id = "60593cfa-123e-4ca0-b763-dfd70ff81cc8"
* identifier.value = "UHC"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NIIP
* name = "United Healthcare"
* address.line[+] = "1 E Washington St"
* address.line[=] = "Ste 1700"
* address.city[+] = "Phoenix"
* address.state[+] = "Arizona"
* address.postalCode[+] = "85004"
* address.Country[+] = "US"
* telecom[+] = "866-414-1959"
* telecom.system[=] = http://hl7.org/fhir/contact-point-system#work
* telecom[+] = "877-844-4999"
* telecom.system[=] = http://hl7.org/fhir/contact-point-system#work
