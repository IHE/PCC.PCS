Instance:   ex-Organization-Paramedicine-Agency
InstanceOf: IHE_PCC_mPSC_Organization
Title:      "Paramdicine Summary Paramedicine Organization example utilizing data from the NEMSIS pretesting examples."
Description: "Paramedicince Agency Organization example for Paramdicine Summary of Care"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST

* identifier.use[+] = #official  
* identifier.type[=] = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* identifier.value[=] = "501"
* identifier.assigner[=] = Reference(Organization/ex-Organization-Paramedicine-Agency-StateID-Assigner)	

* identifier.use[+] = #official  
* identifier.type[=] = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* identifier.value[=] = "350-501"

* identifier.use[+] = #official  
* identifier.type[=] = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
* identifier.value[=] = "3502360501"
* identifier.system[=] = "http://hl7.org/fhir/sid/us-npi"

* active = true

* name = "Paramedicine Agency Example Organization"

* address.state[+] = "Arkansas"

* type[+] = http://terminology.hl7.org/CodeSystem/organization-type#prov
* type[+] = $sct#792847005  "Emergency ambulance service"
* type[+] = $sct#409971007  "Emergency medical services"
* type[+] = $sct#413294000  "Community health services"



Instance:   ex-Organization-Paramedicine-Agency-StateID-Assigner
InstanceOf: OrganizationUvIps 
Title:      "Paramdicine Agency-StateID-Assigner."
Description: "The State that assigned the Paramedicine Agency's unique ID"
Usage: #example

* name = "Arkansas"