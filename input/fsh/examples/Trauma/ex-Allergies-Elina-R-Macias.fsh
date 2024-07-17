Instance: ex-Allergies-Elina-R-Macias-Penicillin
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Penicillin utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = #allergy
* clinicalStatus = http://hl7.org/fhir/ValueSet/allergyintolerance-clinical#active
* category = #medication
* code = $ICD10#Z88.0   "Personal history of allergy to penicillin"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)

Instance: ex-Allergies-Elina-R-Macias-Aspirin
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Aspirin utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = #allergy
* category = #medication
* clinicalStatus = http://hl7.org/fhir/ValueSet/allergyintolerance-clinical#active
* code = $RxNorm#1191  "aspirin"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)

Instance: ex-Allergies-Elina-R-Macias-Acetaminophen
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Acetaminophen utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = #allergy
* category = #medication
* clinicalStatus = http://hl7.org/fhir/ValueSet/allergyintolerance-clinical#active
* code = $RxNorm#161  "acetaminophen"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)

Instance: ex-Allergies-Elina-R-Macias-Remdesivir
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Remdesivir utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = #allergy
* category = #medication
* clinicalStatus = http://hl7.org/fhir/ValueSet/allergyintolerance-clinical#active
* code = $RxNorm#2284718  "remdesivir"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)

Instance: ex-Allergies-Elina-R-Macias-Cats 
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Cats utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = #allergy
* category = #environment
* clinicalStatus = http://hl7.org/fhir/ValueSet/allergyintolerance-clinical#active
* code = $sct#232346004   "Cat allergy"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)

Instance: ex-Allergies-Elina-R-Macias-Apples
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Apples utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = #allergy
* category = #food
* clinicalStatus = http://hl7.org/fhir/ValueSet/allergyintolerance-clinical#active
* code = $sct#860604008   "Allergy to apple"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)