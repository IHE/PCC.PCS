Instance: ex-Patient-Elina-R-Macias-Immunization-TDaP 
InstanceOf: ImmunizationUvIps
Usage: #example
Description: "The instance for Patient Elina R Macias immunization-TDaP  Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/immunization-status#final
* vaccineCode = http://hl7.org/fhir/sid/cvx#20 "diphtheria, tetanus toxoids and acellular pertussis vaccine"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)
* occurrenceDateTime = "1950"

Instance: ex-Patient-Elina-R-Macias-Immunization-Influenza-Seasonal
InstanceOf: ImmunizationUvIps
Usage: #example
Description: "The instance for Patient Elina R Macias immunization-Influenza-Seasonal Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/immunization-status#final
* vaccineCode = http://hl7.org/fhir/sid/cvx#141 "Influenza, seasonal, injectable"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)
* occurrenceDateTime = "2022"

Instance: ex-Patient-Elina-R-Macias-Immunization-MMR 
InstanceOf: ImmunizationUvIps
Usage: #example
Description: "The instance for Patient Elina R Macias immunization-MMR Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/immunization-status#final
* vaccineCode = http://hl7.org/fhir/sid/cvx#3 "measles, mumps and rubella virus vaccine"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)
* occurrenceDateTime = "1950"

Instance: ex-Patient-Elina-R-Macias-Immunization-Other-NotListed
InstanceOf: ImmunizationUvIps
Usage: #example
Description: "The instance for Patient Elina R Macias immunization-Other-NotListed Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/immunization-status#final
* vaccineCode = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-immunization-info
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)
* occurrenceDateTime = "2022"
