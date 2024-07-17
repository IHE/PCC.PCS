Instance:   ex-ServiceRequest-Elina-R-Macias
InstanceOf: IHE_PCC_mPSC_ServiceRequest 
Title:      "Paramdicine Summary Paramedicine Service Request example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "The Service Request instance for Patient Elina R Macias Service Request, utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/ValueSet/request-status#active
* intent = http://hl7.org/fhir/ValueSet/request-intent#plan
* category[+] = $sct#409971007  "Emergency medical services"
* category[+] = $sct#792847005  "Emergency ambulance service"
* priority = http://hl7.org/fhir/ValueSet/request-priority#asap
* code = $sct#310000008 "Accident and Emergency service"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* reasonCode = $sct#1912002 "Fall"
* performer = Reference(Organization/ex-Organization-Dispatch-Agency-Texarkana-Arkansas-Police-Department)


Instance:   ex-Organization-Dispatch-Agency-Texarkana-Arkansas-Police-Department
InstanceOf: IHE_PCC_mPSC_Organization
Title:      "Paramdicine Summary Paramedicine Organization example utilizing data from the NEMSIS pretesting examples."
Description: "Paramedicince Agency Organization example for Paramdicine Summary of Care"
Usage: #example

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name = "Texarkana Arkansas Police Department"