Instance: ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Systolic-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodPressure-Systolic Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8480-6
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:00-05:00"
* method = $sct#239033002   "Digital examination"
* device = Reference(Device/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Device)
* valueQuantity = 102 $ucum#mmhg "mm[Hg]"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Diastolic-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodPressure-Diastolic Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8462-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:00-05:00"
* method = $sct#239033002   "Digital examination"
* device = Reference(Device/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Device)
* valueQuantity = 64 $ucum#mmhg "mm[Hg]"


Instance: ex-Patient-Elina-R-Macias-VitalSigns-HeartRate-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-HeartRate Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8867-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:00-05:00"
* valueQuantity = 80 $ucum#/min "/min"
* method = $sct#113011001   "Palpation"


Instance: ex-Patient-Elina-R-Macias-VitalSigns-PulseOximetry-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-OxygenSat Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#2708-6
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:00-05:00"
* valueQuantity = 90 $ucum#% "%"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-PulseRhythm-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-PulseRhythm Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#44969-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:00-05:00"
* valueCodeableConcept = $sct#248632004    "Regular intermission in pulse"


Instance: ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryRate-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-RespiratoryRate Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#9279-1
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:00-05:00"
* valueQuantity = 25 $ucum#/min "/min"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryEffort-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns 
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns- Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#80341-1
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:00-05:00"
* valueCodeableConcept = $sct#1290338002	"Normal respiratory effort"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Carbon-Monoxide-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Carbon Monoxide Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#19911-7
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:00-05:00"
* valueQuantity = 2.1 $ucum#% "%"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Blood-Glucose-Level-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodGlucoseLevel Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#2339-0
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:00-05:00"
* valueQuantity = 130 $ucum#mg/dl "mg/dl"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Temperature-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Temperature Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8310-5
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:00-05:00"
* valueQuantity = 35.2 $ucum#Cel "Cel"
* method = $sct#448093005   "Measurement of temperature using tympanic thermometer"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Estimated-Weight-1 
InstanceOf: IHE_PCC_mPSC_VitalSigns  
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Estimated-Weight Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8335-2
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:30-05:00"
* valueQuantity = 53.8 $ucum#Kg "kg"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-PainSeverity-1  
InstanceOf: IHE_PCC_mPSC_VitalSigns  
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Pain Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#38208-5
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:30-05:00"
* valueInteger = 8
* method = $sct#1284852002  "Numeric Pain Rating Scale"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-AVPU-1  
InstanceOf: IHE_PCC_mPSC_VitalSigns  
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-AVPU Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#67775-7
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T08:48:30-05:00"
* valueCodeableConcept = $sct#255373000     "Verbal"


Instance: ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Systolic-2
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodPressure-Systolic Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8480-6
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* method = $sct#239033002   "Digital examination"
* device = Reference(Device/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Device)
* valueQuantity = 98 $ucum#mmhg "mm[Hg]"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Diastolic-2
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodPressure-Diastolic Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8462-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* method = $sct#239033002   "Digital examination"
* device = Reference(Device/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Device)
* valueQuantity = 60 $ucum#mmhg "mm[Hg]"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-HeartRate-2 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-HeartRate Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8867-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* valueQuantity = 70 $ucum#/min "/min"
* method = $sct#113011001   "Palpation"


Instance: ex-Patient-Elina-R-Macias-VitalSigns-PulseOximetry-2 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-OxygenSat Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#2708-6
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* valueQuantity = 94 $ucum#% "%"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-PulseRhythm-2 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-PulseRhythm Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#44969-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* valueCodeableConcept = $sct#248632004    "Regular intermission in pulse"


Instance: ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryRate-2 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-RespiratoryRate Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#9279-1
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* valueQuantity = 22 $ucum#/min "/min"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryEffort-2 
InstanceOf: IHE_PCC_mPSC_VitalSigns  
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns- Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#80341-1
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* valueCodeableConcept = $sct#1290338002	"Normal respiratory effort"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Carbon-Monoxide-2 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Carbon Monoxide Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#19911-7
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Blood-Glucose-Level-2 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodGlucoseLevel Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#2339-0
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Temperature-2 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Temperature Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8310-5
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* valueQuantity = 35.6 $ucum#Cel "Cel"
* method = $sct#448093005   "Measurement of temperature using tympanic thermometer"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-PainSeverity-2  
InstanceOf: IHE_PCC_mPSC_VitalSigns 
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Pain Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#38208-5
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:00:00-05:00"
* valueInteger = 5
* method = $sct#1284852002  "Numeric Pain Rating Scale"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Systolic-3
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodPressure-Systolic Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8480-6
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* method = $sct#239033002   "Digital examination"
* device = Reference(Device/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Device)
* valueQuantity = 100 $ucum#mmhg "mm[Hg]"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Diastolic-3
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodPressure-Diastolic Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8462-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* method = $sct#239033002   "Digital examination"
* device = Reference(Device/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Device)
* valueQuantity = 62 $ucum#mmhg "mm[Hg]"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-HeartRate-3 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-HeartRate Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8867-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* valueQuantity = 66 $ucum#/min "/min"
* method = $sct#113011001   "Palpation"


Instance: ex-Patient-Elina-R-Macias-VitalSigns-PulseOximetry-3 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-OxygenSat Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#2708-6
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* valueQuantity = 95 $ucum#% "%"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-PulseRhythm-3
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-PulseRhythm Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#44969-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* valueCodeableConcept = $sct#248632004    "Regular intermission in pulse"


Instance: ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryRate-3 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-RespiratoryRate Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#9279-1
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* valueQuantity = 20 $ucum#/min "/min"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryEffort-3 
InstanceOf: IHE_PCC_mPSC_VitalSigns  
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns- Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#80341-1
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* valueCodeableConcept = $sct#1290338002	"Normal respiratory effort"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Carbon-Monoxide-3 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Carbon Monoxide Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#19911-7
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Blood-Glucose-Level-3 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodGlucoseLevel Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#2339-0
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Temperature-3 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Temperature Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8310-5
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* valueQuantity = 35.8 $ucum#Cel "Cel"
* method = $sct#448093005   "Measurement of temperature using tympanic thermometer"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-PainSeverity-3 
InstanceOf: IHE_PCC_mPSC_VitalSigns 
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Pain Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#38208-5
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:10:00-05:00"
* valueInteger = 5
* method = $sct#1284852002  "Numeric Pain Rating Scale"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Systolic-4
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodPressure-Systolic Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8480-6
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* method = $sct#239033002   "Digital examination"
* device = Reference(Device/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Device)
* valueQuantity = 96 $ucum#mmhg "mm[Hg]"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Diastolic-4
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodPressure-Diastolic Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8462-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* method = $sct#239033002   "Digital examination"
* device = Reference(Device/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Device)
* valueQuantity = 60 $ucum#mmhg "mm[Hg]"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Device
InstanceOf: Device
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodPressure-Diastolic Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = $sct#1287473000  "Automatic inflation electronic sphygmomanometer"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-HeartRate-4 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-HeartRate Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8867-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* valueQuantity = 68 $ucum#/min "/min"
* method = $sct#113011001   "Palpation"


Instance: ex-Patient-Elina-R-Macias-VitalSigns-PulseOximetry-4 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-OxygenSat Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#2708-6
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* valueQuantity = 95 $ucum#% "%"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-PulseRhythm-4
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-PulseRhythm Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#44969-4
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* valueCodeableConcept = $sct#248632004    "Regular intermission in pulse"


Instance: ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryRate-4 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-RespiratoryRate Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#9279-1
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* valueQuantity = 22 $ucum#/min "/min"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryEffort-4 
InstanceOf: IHE_PCC_mPSC_VitalSigns 
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns- Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#80341-1
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* valueCodeableConcept = $sct#1290338002	"Normal respiratory effort"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Carbon-Monoxide-4 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Carbon Monoxide Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#19911-7
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Blood-Glucose-Level-4 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-BloodGlucoseLevel Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#2339-0
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed

Instance: ex-Patient-Elina-R-Macias-VitalSigns-Temperature-4 
InstanceOf: IHE_PCC_mPSC_VitalSigns
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Temperature Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#8310-5
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* valueQuantity = 35.8 $ucum#Cel "Cel"
* method = $sct#448093005   "Measurement of temperature using tympanic thermometer"

Instance: ex-Patient-Elina-R-Macias-VitalSigns-PainSeverity-4 
InstanceOf: IHE_PCC_mPSC_VitalSigns 
Usage: #example
Description: "The instance for Patient Elina R Macias VitalSigns-Pain Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status  = http://hl7.org/fhir/observation-status#final
* code = $loinc#38208-5
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* effectiveDateTime = "2022-10-09T09:20:00-05:00"
* valueInteger = 5
* method = $sct#1284852002  "Numeric Pain Rating Scale"

