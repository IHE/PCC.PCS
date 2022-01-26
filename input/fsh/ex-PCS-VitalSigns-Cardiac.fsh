Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-Rhythm-1
InstanceOf: VitalSigns
Usage: #inline
* id = c48bd52a-3be5-11ec-8d3d-0242ac130003
* satus = #final
* code = $loinc#8884-9 "Heart rate rhythm"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* dataAbsentReason = $NEMSIS#8801023
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* method = $NEMSIS#7701001

Instance: ex-EMS-Cardiac-Patient-Vitals-BloodPresssure-1 
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #inline
* id = b6400438-3be4-11ec-8d3d-0242ac130003
* status = #final 
* component:SystolicBP.dataAbsentReason = $NEMSIS#8801023
* component:DiastolicBP.dataAbsentReason = $NEMSIS#8801023
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* method = $NEMSIS#7701001

Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/heartrate
Usage: #inline
* id = "f37d99c2-3be5-11ec-8d3d-0242ac130003"
* status = #final
* valueInteger = 0
* method = $NEMSIS#3311005
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pulse-Oximetry-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #inline
* id = 96c73962-3be6-11ec-8d3d-0242ac130003
* satus = #final
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Respiratory-Rate-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/resprate
Usage: #inline
* id = "e13e79e2-3be6-11ec-8d3d-0242ac130003"
* satus = #final
* valueInteger = 0
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-End-Tidal-Carbon-Dioxide-ETCO2-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = 381975fa-3be7-11ec-8d3d-0242ac130003
* satus = #final
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Carbon-Monoxide-CO-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = 64b3acd4-3be7-11ec-8d3d-0242ac130003
* satus = #final
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Blood-Glucose-Level-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = 7d4f0fb4-125e-440a-ae81-7e0c82fdb9b1
* satus = #final
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Eye-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "964b6a8e-cf0a-4441-9e11-4a864c3cfa29"
* satus = #final
//TODO: JFM commented out the following as not complete
//* valueCodeableConcept = $1 "No eye movement when assessed (All Age Groups)"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Verbal-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "58b0e7ac-3be8-11ec-8d3d-0242ac130003"
* satus = #final
//TODO: JFM 
//* valueCodeableConcept = $1 "No verbal/vocal response (All Age Groups)"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Motor-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "6f2c57a0-3be8-11ec-8d3d-0242ac130003"
* satus = #final
//TODO: JFM 
//* valueCodeableConcept = $1 "No Motor Response (All Age Groups"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Qualifier-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "6d85a7f6-3bef-11ec-8d3d-0242ac130003"
* satus = #final
* valueInteger = "3"
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Temperature-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodytemp
Usage: #inline
* id = c5020bf0-3bef-11ec-8d3d-0242ac130003
* satus = #final
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Level-of-Responsiveness-AVPU-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "ad6589c4-a929-4dc4-bcf4-0ce63f733a95"
* satus = #final
* valueCodeableConcept = $NEMSIS#3326007
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pain-Scale-Score-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = 8ad91b35-9e62-4eef-9d29-de06f463511b
* satus = #final
* valueCodeableConcept = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Stroke-Scale-Score-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = e439221c-7899-4bcc-a6b4-1054f4305b48
* satus = #final
* valueCodeableConcept = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* method = $SCT#7701001 "Not Applicable"

Instance: ex-EMS-Cardiac-Patient-Vitals-Reperfusion-Checklist-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = ec61ff08-e60c-49e6-8091-12109d278dde
* satus = #final
* valueCodeableConcept = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)


Instance: ex-EMS-Cardiac-Patient-Vitals-BloodPresssure-2 
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #inline
* id = "86d600a0-0764-4bc9-b1a0-5dfffb617a24"
* status = #final 
* component.component:SystolicBP.value[x].value = 0
* component.component:DiastolicBP.value[x].value = 0
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* method = $SCT#3308005 "Cuff-Automated"
// [Note: NEMSIS Values]

Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-Rhythm-2
InstanceOf: VitalSigns
Usage: #inline
* id = "0973da60-38cc-11ec-8d3d-0242ac130003"
* satus = #final
* code = $loinc#8884-9 "Heart rate rhythm"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* valueCodeableConcept = $loinc#427.41 "Ventricular fibrillation" 
// Note: ICD10 code translation. Origional NEMSIS Code is 	9901067 "Ventricular Fibrillation"]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* device = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)
* method = $SCT#258181008 "Electrocardiogram analysis"
//Note: Verify, translated from NEMSIS]
* derivedFrom = Reference(Media/832a7212-38cf-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/heartrate
Usage: #inline
* id = "5055df00-24a6-4531-bc54-22a4bfe0159e"
* status = #final
* valueInteger = 0
* method = $SCT#3311005 "Electronic Monitor - Cardiac"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pulse-Oximetry-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #inline
* id = "4f5a1b9-d44d-4cb5-8491-16f9c37f3790"
* satus = #final
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Respiratory-Rate-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/resprate
Usage: #inline
* id = "093b485e-4511-418f-b607-cfaec2996e4d"
* satus = #final
* valueInteger = 0
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-End-Tidal-Carbon-Dioxide-ETCO2-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = 4757a8f6-5765-4333-b5de-ca31a25553c2
* satus = #final
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Carbon-Monoxide-CO-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = ba7139e1-9064-4293-94e6-4f5e9ccc972a
* satus = #final
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Blood-Glucose-Level-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "ef4fdaf1-095b-4db0-915d-338c19fe9a7d"
* satus = #final
* valueInteger = 105
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Eye-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "44c24aba-2298-49a8-9d67-e44a7b46c09f"
* satus = #final
//* valueCodeableConcept = $1 "No eye movement when assessed (All Age Groups)"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Verbal-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "da9470e7-f6ed-4643-9b10-8a59310bb286"
* satus = #final
//* valueCodeableConcept = $1 "No verbal/vocal response (All Age Groups)"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Motor-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "85cf8976-f1b2-4337-8658-26210f5df666"
* satus = #final
//* valueCodeableConcept = $1 "No Motor Response (All Age Groups"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Qualifier-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "03d0db0e-3852-4add-b33a-db8e6aea5f2b"
* satus = #final
* valueInteger = "3"
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Temperature-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodytemp
Usage: #inline
* id = "7cbaa1c3-e793-4516-95ed-af6783532feb"
* satus = #final
* valueQuantity = 36.1
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* method = $SCT#3325017 "Skin Probe"
// [Note: NEMSIS Values]

Instance: ex-EMS-Cardiac-Patient-Vitals-Level-of-Responsiveness-AVPU-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "6ec67b5f-fa07-46f9-aa09-857b475ce30f"
* satus = #final
* valueCodeableConcept = $SCT#3326007 "Unresponsive"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pain-Scale-Score-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "66721b82-aaeb-4568-928e-d49145e2bad9"
* satus = #final
* valueCodeableConcept = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Stroke-Scale-Score-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = bb282e3a-ca42-4984-9859-e32dd013fed0
* satus = #final
* valueCodeableConcept = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* method = $SCT#7701001 "Not Applicable"

Instance: ex-EMS-Cardiac-Patient-Vitals-Reperfusion-Checklist-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = a23d6cb2-c238-4b7a-abcd-7bdd6966fa65
* satus = #final
* valueCodeableConcept = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-BloodPresssure-3 
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #inline
* id = "387b36eb-9220-4068-ae2f-21707522aab6"
* status = #final 
* component.component:SystolicBP.value[x].value = 85
* component.component:DiastolicBP.value[x].value = 54
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* method = $SCT#3308005 "Cuff-Automated"
// [Note: NEMSIS Values]

Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-Rhythm-3
InstanceOf: VitalSigns
Usage: #inline
* id = "9fdcb6f1-c3a3-490f-ba00-0c260d619411"
* satus = #final
* code = $loinc#8884-9 "Heart rate rhythm"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* valueCodeableConcept[+] = $SCT#9901009 "Atrial Flutter" 
* valueCodeableConcept[+] = $SCT#9901069 "Ventricular Tachycardia (With Pulse)"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* device = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)
* method[+] = $SCT#258181008 "Electrocardiogram analysis"
//Note: Verify, translated from NEMSIS]
* method[+] = $SCT#3304007 "12 Lead-Left Sided (Normal)"
// [Note: NEMSIS Values]
* derivedFrom = Reference(Media/832a7212-38cf-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/heartrate
Usage: #inline
* id = "3ec08244-00f1-41ac-a251-b70c0d069cf1"
* status = #final
* valueInteger = 98
* method = $SCT#3311005 "Electronic Monitor - Cardiac"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pulse-Oximetry-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #inline
* id = "74b8ed2b-08ec-4ec8-bac8-c61154558c33"
* satus = #final
* valueInteger = 91
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pulse-Rhythm-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "fee522f6-9a32-4ad7-b906-4e61de240a2e"
* satus = #final
* valueCodeableConcept[+] = $SCT#3313005 "Regularly Irregular"
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Respiratory-Rate-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/resprate
Usage: #inline
* id = "1a21143f-8676-4c23-a312-9ed25cef0254"
* satus = #final
* valueInteger = 48
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-End-Tidal-Carbon-Dioxide-ETCO2-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "caf96813-eada-4b1e-a4e6-99e446834bbc"
* satus = #final
* valueQuantity.value = 32
//* valueQuantity.unit = $UCUM#[ETCO2Type = mmHg]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Carbon-Monoxide-CO-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = 0e4e5415-8a8b-470e-9ce2-05a79f7f48ae
* satus = #final
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Blood-Glucose-Level-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "a0ca7a99-8132-4efa-8068-03282c3c4eff"
* satus = #final
* valueInteger = 108
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Eye-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "59276b4d-51e0-4799-b79a-e4737efb4ef8"
* satus = #final
//* valueCodeableConcept = $1 "No eye movement when assessed (All Age Groups)"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Verbal-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "32511f84-f0fe-48f7-9616-ccb10fb57375"
* satus = #final
//* valueCodeableConcept = $1 "No verbal/vocal response (All Age Groups)"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Motor-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "2d5475c0-827f-4697-9d83-54e666b3562c"
* satus = #final
//* valueCodeableConcept = $1 "No Motor Response (All Age Groups"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-Qualifier-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "4bcea68a-378c-41b7-85e8-f1f8134e55a1"
* satus = #final
* valueIntegerInteger = "3"
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Temperature-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodytemp
Usage: #inline
* id = "369d0828-c27a-4047-97bd-5d0da9d2436d"
* satus = #final
* valueQuantity.value = 36.8
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* method = $SCT#3325017 "Skin Probe"
// [Note: NEMSIS Values]

Instance: ex-EMS-Cardiac-Patient-Vitals-Level-of-Responsiveness-AVPU-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "72e8c109-c43b-4fe0-b4d8-36d74612f9ea"
* satus = #final
* valueCodeableConcept = $SCT#3326007 "Unresponsive"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pain-Scale-Score-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = 40b02e04-4212-4346-8661-164e4151a207
* satus = #final
* valueCodeableConcept = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Stroke-Scale-Score-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = 946a66f9-d0de-409a-bf93-e20726810482
* satus = #final
* valueCodeableConcept = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* method = $SCT#7701001 "Not Applicable"

Instance: ex-EMS-Cardiac-Patient-Vitals-Reperfusion-Checklist-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = bb9752e5-a2a7-4723-b27d-1ba07dc936b6
* satus = #final
* valueCodeableConcept = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

