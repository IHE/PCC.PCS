Instance: ex-Allergies-Elina-R-Macias-Penicillin
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Penicillin utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = http://hl7.org/fhir/allergy-intolerance-type#allergy
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* category = http://hl7.org/fhir/allergy-intolerance-category#medication
* code = $ICD10-CM#Z88.0   "Allergy status to penicillin"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)

Instance: ex-Allergies-Elina-R-Macias-Aspirin
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Aspirin utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = http://hl7.org/fhir/allergy-intolerance-type#allergy
* category = http://hl7.org/fhir/allergy-intolerance-category#medication
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* code = $RxNorm#1191  "aspirin"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)

Instance: ex-Allergies-Elina-R-Macias-Acetaminophen
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Acetaminophen utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = http://hl7.org/fhir/allergy-intolerance-type#allergy
* category = http://hl7.org/fhir/allergy-intolerance-category#medication
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* code = $RxNorm#161  "acetaminophen"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)

Instance: ex-Allergies-Elina-R-Macias-Remdesivir
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Remdesivir utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = http://hl7.org/fhir/allergy-intolerance-type#allergy
* category = http://hl7.org/fhir/allergy-intolerance-category#medication
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* code = $RxNorm#2284718  "remdesivir"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)

Instance: ex-Allergies-Elina-R-Macias-Cats 
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Cats utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = http://hl7.org/fhir/allergy-intolerance-type#allergy
* category = http://hl7.org/fhir/allergy-intolerance-category#environment
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* code = $sct#232346004   "Cat allergy"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)

Instance: ex-Allergies-Elina-R-Macias-Apples
InstanceOf: IHE_PCC_mPSC_AllergyIntolerance
Usage: #example
Description: "The Example instance for Elina R Macias Allergy-Apples utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = http://hl7.org/fhir/allergy-intolerance-type#allergy
* category = http://hl7.org/fhir/allergy-intolerance-category#food
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* code = $sct#860604008   "Allergy to apple"
* patient = Reference(Patient/ex-Patient-Elina-R-Macias)