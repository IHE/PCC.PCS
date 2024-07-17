Instance:   ex-Procedure-Elina-R-Macias-External-Warming
InstanceOf: ProcedureUvIps 
Title:      "Paramdicine Summary Paramedicine Procedure-external warming example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "The instance for Patient Elina R Macias Procedure-external warming Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/medication-statement-status#completed
* code = $sct#431949004  "Active external warming of subject"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* performer.function = $sct#125677006   "Relative"
* performer.actor = Reference(RelatedPerson/ex-Practitioner-Ellen-Costa)
// more robust ?
* performedDateTime	= "2022-10-09"
* outcome = $sct#385669000 	"Successful"
// prior to EMS Flag



Instance:   ex-Procedure-Elina-R-Macias-Informing-Doctor
InstanceOf: ProcedureUvIps 
Title:      "Paramdicine Summary Paramedicine Procedure-Informing-Doctor example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "The instance for Patient Elina R Macias Procedure- Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/medication-statement-status#completed
* performedDateTime = "2022-10-09T08:50:00-05:00"
* code = $sct#304562007     "Informing doctor"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* performer.actor = Reference(Practitioner/ex-Practitioner-Chase-Grey)
* outcome = $sct#385669000 	"Successful"
// prior to EMS Flag
// order/ written order/ authorization


Instance:   ex-Procedure-Elina-R-Macias-Catheterisation-Of-Vein
InstanceOf: ProcedureUvIps 
Title:      "Paramdicine Summary Paramedicine Procedure-Catheterisation-Of-Vein example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "The instance for Patient Elina R Macias Procedure-Catheterisation-Of-Vein Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/medication-statement-status#completed
* performedDateTime = "2022-10-09T08:51:00-05:00"
* code = $sct#392230005 "Catheterisation of vein"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* performer.function = $sct#397897005   "Paramedic"
* performer.actor = Reference(Practitioner/ex-Practitioner-Ellen-Costa)
* usedReference = Reference(Device/ex-Device-Elina-R-Macias-Procedure-Catheterisation-Of-Vein)
* complication = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH
* outcome = $sct#385669000 	"Successful"
// prior to EMS Flag
// number of attempts 
// written orders?
// response 
* bodySite = $sct#64262003	"Structure of right forearm"
Instance:   ex-Device-Elina-R-Macias-Procedure-Catheterisation-Of-Vein
InstanceOf: Device 
Title:      "Paramdicine Summary Paramedicine Procedure-Catheterisation-Of-Vein example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "The instance for Patient Elina R Macias Procedure-Catheterisation-Of-Vein Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* type = $sct#19923001  "Catheter"
* property.type = $sct#255506008    "Dimensions"
* property.valueCode = $sct#264719001   "22G"




Instance:   ex-Procedure-Elina-R-Macias-Application-Of-Splint
InstanceOf: ProcedureUvIps 
Title:      "Paramdicine Summary Paramedicine Procedure-Application of splint example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "The instance for Patient Elina R Macias Procedure-Application of splint Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/event-status#completed
* performedDateTime = "2022-10-09T08:54:00-05:00"
* code = $sct#79321009 "Application of splint"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* performer.actor = Reference(Practitioner/ex-Practitioner-Chase-Grey)
* performedDateTime	= "2022-10-09T8:54:00-05:00"
// prior to EMS Flag
// written orders?/protocol 
// response


Instance:   ex-Procedure-Elina-R-Macias-Moving-Patient-Stretcher
InstanceOf: ProcedureUvIps 
Title:      "Paramdicine Summary Paramedicine Procedure-Moving-Patient-Stretcher example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "The instance for Patient Elina R Macias Procedure-Moving-Patient-Stretcher Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/event-status#completed
* performedDateTime = "2022-10-09T08:55:00-05:00"
* code = $sct#58715004 "Moving a patient to a stretcher"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* performer.actor = Reference(Practitioner/ex-Practitioner-Chase-Grey)
* outcome = $sct#385669000 	"Successful"
// prior to EMS Flag
// written orders?/protocol 
// response

