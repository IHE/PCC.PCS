Instance:   ex-PCS-Patient-Cardiac
InstanceOf: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Title: "PCS Example Cardiac Patient"
Description: "The patient from which all the Cardiac example resources relate"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* id = "ea25ec4c-38bd-11ec-8d3d-0242ac130003"
* identifier.value[+] = "78HU-3D7D"
* identifier.type[=] = 	http://terminology.hl7.org/CodeSystem/v2-0203#PI
//NEMSIS ePatient.01 - EMS Patient ID
* identifier.value[+] = "S14957440"
* identifier.type[=] = http://terminology.hl7.org/CodeSystem/v2-0203#DL
//NEMSIS ePatient.21 - Driver's License Number
* identifier.assigner[=] = Reference(Organization/....)
//NEMSIS ePatient.20 - State Issuing Driver's License
* name.family = "Schroeder"
//NEMSIS ePatient.02 - Last Name
* name.given = "Lily-Rose"
//NEMSIS ePatient.03 - First Name
* telecom.system[+] = #phone
* telecom.value[=] = "928-350-5671"
* telecom.use[=] = #home
* telecom.system[+] = #phone
* telecom.value[=] = "928-998-3679"
* telecom.use[=] = #mobile
//NEMSIS ePatient.18 - Patient's Phone Number
* gender = #female
//NEMSIS ePatient.13 - Gender
* birthDate = "1955-10-07"
//NEMSIS ePatient.17 - Date of Birth
* address.use = #home
* address.line[+] = "1644 W 13th St"
* address.line[=] = "Unit A"
//NEMSIS ePatient.05 - Patient's Home Address
* address.city = "City of Yuma"
//NEMSIS ePatient.06 - Patient's Home City
* address.district = "Yuma County"
//NEMSIS ePatient.07 - Patient's Home County
* address.state = "Arizona"
//NEMSIS ePatient.08 - Patient's Home State
* address.postalCode = "85364"
//NEMSIS ePatient.09 - Patient's Home ZIP Code
* address.country = "US"
//NEMSIS ePatient.10 - Patient's Country of Residence
* contact.relationship = http://hl7.org/fhir/uv/ips/ValueSet/personal-relationship-uv-ips#SPS
* contact.name.family = "Schroeder"
* contact.name.given[+] = "Frank"
* contact.name.given[=] = "R."
* contact.telecom.system[+] = #phone
* contact.telecom.value[=] = "928-350-5671"
* contact.telecom.use[=] = #home
* contact.telecom.system[+] = #phone
* contact.telecom.value[=] = "928-998-3678"
* contact.telecom.use[=] = #mobile
* contact.address.line[+] = "1644 W 13th St"
* contact.address.line[=] = "Unit A"
* contact.address.city = "Yuma"
* contact.address.state = "Arizona"
* contact.address.postalCode = "85364"
* contact.address.country = "US"

Instance: Inline-Instance-for-EMS-ex-Cardiac-patient-Patient-generalPractitioner
InstanceOf: Practitioner
Usage: #inline
* id = cf1f71bc-38c1-11ec-8d3d-0242ac130003
* name.family[+] = "Parker"
//NEMSIS eHistory.02 - Last Name of Patient's Practitioner
* name.given[=] = "Glenda"
//NEMSIS eHistory.03 - First Name of Patient's Practitioner
* name.given[=] = "D"
//NEMSIS eHistory.04 - Middle Name/Initial of Patient's Practitioner
* name.family[+] = "Santos"
//NEMSIS eHistory.02 - Last Name of Patient's Practitioner
* name.given[=] = "Allen"
//NEMSIS eHistory.03 - First Name of Patient's Practitioner

Instance: Inline-Instance-for-EMS-ex-Cardiac-patient-Patient-RelatedPerson
InstanceOf: RelatedPerson
Usage: #inline
* id = "c70c8063-85b0-4346-8fc7-1ca1966ca4ed"
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SPS
//NEMSIS ePayment.32 - Closest Relative/ Guardian Relationship
* name.family = "Schroeder"
//NEMSIS ePayment.23 - Closest Relative/Guardian Last Name
* name.given[+] = "Frank"
//NEMSIS ePayment.24 - Closest Relative/ Guardian First Name
* name.given[=] = "R."
//NEMSIS ePayment.25 - Closest Relative/ Guardian Middle Initial/Name
* telecom.system[+] = #phone
* telecom.value[=] = "928-350-5671"
* telecom.use[=] = #home
* telecom.system[+] = #phone
* telecom.value[=] = "928-998-3678"
* telecom.use[=] = #mobile
//NEMSIS ePayment.31 - Closest Relative/ Guardian Phone Number
* address.line[+] = "1644 W 13th St"
* address.line[=] = "Unit A"
//NEMSIS ePayment.26 - Closest Relative/ Guardian Street Address
* address.city = "Yuma"
//NEMSIS ePayment.27 - Closest Relative/ Guardian City
* address.state = "Arizona"
* address.postalCode = "85364"
//NEMSIS ePayment.29 - Closest Relative/ Guardian ZIP Code
* address.country = "US"
//NEMSIS ePayment.28 - Closest Relative/ Guardian State
* gender = #male
* birthDate = "1956-08-21"