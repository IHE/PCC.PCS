Instance:   ex-patient
InstanceOf: Patient
Title: "Example Patient"
Description: "The patient from which all the example relate"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier.value[+] = "56AD-4B6H-IHE"
* identifier.type[=] = http://terminology.hl7.org/CodeSystem/v2-0203#MR
// Note: EMS Patient ID acts as a Medical Record Number 
* identifier.value[+] = "S15965668"
* identifier.type[=] = http://terminology.hl7.org/CodeSystem/v2-0203#DL 
* name[+].family = "IHEDoe"
* name[=].given = "IHEJohn"
* name[=].given = "D."
* telecom.system[+] = #phone
* telecom.value[=] = "436-325-5872"
* telecom.use[=] = #home
* telecom.system[+] = #phone
* telecom.value[=] = "436-966-2896"
* telecom.use[=] = #mobile
* gender = #male
* birthDate = "1961-08-10"
* address.use = #home
* address.line[+] = "1056 State St"
* address.line[=] = "Unit 10"
* address.city = "Madison"
* address.district = "Dane County"
* address.state = "WI"
* address.postalCode = "53726"
* address.country = "USA"

* generalPractitioner = Reference(Practitioner/ex-practitioner)

//TODO create New Patient resource to contain patient Race and Cencus tract code 