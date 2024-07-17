Instance:   ex-Problem-Elina-R-Macias-Hip-Injury
InstanceOf: ConditionUvIps
Title:      "Paramdicine Summary Paramedicine Problem Hip Injury example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "The Condition instance for Patient Elina R Macias Hip Injry, utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus  = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed
* code = $ICD10#S79.91 "Unspecified injury of hip"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* onsetDateTime = "2022-10-09T07:30:00-05:00"
* evidence.code = $ICD10#M25.55 "Pain in hip"


Instance:   ex-Problem-Elina-R-Macias-Multiple-Injury
InstanceOf: ConditionUvIps
Title:      "Paramdicine Summary Paramedicine Problem Multiple Injury example for NEMSIS 2023-EMS-3-FallTransport_v350 pretesting example."
Description: "The Condition instance for Patient Elina R Macias Multiple Injry, utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus  = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed
* code = $ICD10#T07 "Unspecified multiple injuries"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* onsetDateTime = "2022-10-09T07:30:00-05:00"
* evidence.code[+] = $ICD10#M79.6 "Pain in limb, hand, foot, fingers and toes"
* evidence.code[+] = $ICD10#M54.5 "Low back pain"
* evidence.code[+] = $ICD10#R60.9 "Edema, unspecified"
* evidence.code[+] = $ICD10#R22 "Localized swelling, mass and lump of skin and subcutaneous tissue"

