// TODO: are the 1 vs 2 vs 3 --> three revisions of the same Observation? They are modeled here as different Observations, not related or revisions.
// TODO: I had to convert some of the core vitalsigns into just Observation as sushi did not like valueQuantity. Worked when downgraded, so there must be something funky going on with core profiles


Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-Rhythm-1
InstanceOf: Observation
Usage: #inline
// changed to https://loinc.org/8884-9/ as heart rate rhythm observation is not a vital-sign
* id = "c48bd52a-3be5-11ec-8d3d-0242ac130003"
* status = #preliminary
* code = $loinc#8884-9 "Heart rate rhythm"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* dataAbsentReason = $NEMSIS#8801023
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* method = $NEMSIS#7701001


Instance: ex-EMS-Cardiac-Patient-Vitals-BloodPresssure-1 
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #inline
* id = "b6400438-3be4-11ec-8d3d-0242ac130003"
* status = #preliminary 
* component[SystolicBP].dataAbsentReason = $NEMSIS#8801023
* component[DiastolicBP].dataAbsentReason = $NEMSIS#8801023
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* method = $NEMSIS#7701001

Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-1
InstanceOf: Observation // http://hl7.org/fhir/StructureDefinition/heartrate
Usage: #inline
* id = "f37d99c2-3be5-11ec-8d3d-0242ac130003"
* status = #preliminary
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* code = $loinc#8867-4 "Heart rate"

Instance: ex-EMS-Cardiac-Patient-Vitals-Pulse-Oximetry-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #inline
* id = "96c73962-3be6-11ec-8d3d-0242ac130003"
* status = #preliminary
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* code = $loinc#2708-6


Instance: ex-EMS-Cardiac-Patient-Vitals-Respiratory-Rate-1
InstanceOf: Observation // http://hl7.org/fhir/StructureDefinition/resprate
Usage: #inline
* id = "e13e79e2-3be6-11ec-8d3d-0242ac130003"
* status = #preliminary
* code = $loinc#9279-1
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-End-Tidal-Carbon-Dioxide-ETCO2-1
InstanceOf: Observation
Usage: #inline
// Changed to https://loinc.org/19889-5/ as carbon dioxide level is not a vital-sign
* id = "381975fa-3be7-11ec-8d3d-0242ac130003"
* status = #preliminary
* code = $loinc#19889-5 "Carbon dioxide/Gas.total.at end expiration in Exhaled"
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Carbon-Monoxide-CO-1
InstanceOf: Observation
Usage: #inline
// Changed to https://loinc.org/19911-7/ as carbon monoxide is not a vital-sign
* id = "64b3acd4-3be7-11ec-8d3d-0242ac130003"
* status = #preliminary
* code = $loinc#19911-7 "Diffusion capacity.carbon monoxide"
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Blood-Glucose-Level-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "7d4f0fb4-125e-440a-ae81-7e0c82fdb9b1"
* status = #preliminary
* code = $loinc#2339-0
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-1
InstanceOf: Observation
Usage: #inline
// Modeled this from https://www.hl7.org/fhir/observation-example-glasgow.html
// note I just replicated that example here. I did not try to find all the proper codes for your example
* id = "964b6a8e-cf0a-4441-9e11-4a864c3cfa29"
* status = #final
* code = $loinc#9269-2
* valueQuantity = 13 '{score}'
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* component[+].code = $loinc#9268-4 "Glasgow coma score motor"
* component[=].valueCodeableConcept.coding[+] = http://acme.ec/codes#5 "Localizes painful stimuli"
* component[=].valueCodeableConcept.coding[+] = $loinc#LA6566-9 "Localizing pain"
* component[=].valueCodeableConcept.text = "5 (Localizes painful stimuli)"
* component[+].code = $loinc#9270-0 "Glasgow coma score verbal"
* component[=].valueCodeableConcept.coding[+] = http://acme.ec.codes#4 "Confused, disoriented"
* component[=].valueCodeableConcept.coding[+] = $loinc#LA6560-2 "Confused"
* component[=].valueCodeableConcept.text = "4 (Confused, disoriented)"
* component[+].code = $loinc#9267-6 "Glasgow coma score eye opening"
* component[=].valueCodeableConcept.coding[+] = http://acme.ec.codes#4 "Opens eyes spontaneously"
* component[=].valueCodeableConcept.coding[+] = $loinc#LA6556-0 "Eyes open spontaneously"
* component[=].valueCodeableConcept.text = "4 (Opens eyes spontaneously)"




Instance: ex-EMS-Cardiac-Patient-Vitals-Temperature-1
InstanceOf: Observation // http://hl7.org/fhir/StructureDefinition/bodytemp
Usage: #inline
* id = "c5020bf0-3bef-11ec-8d3d-0242ac130003"
* status = #preliminary
* code = $loinc#8310-5
* dataAbsentReason = $NEMSIS#8801023
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Level-of-Responsiveness-AVPU-1
InstanceOf: Observation
Usage: #inline
// Changed to https://loinc.org/67775-7/ as responsiveness is not a vital-sign
// TODO see https://loinc.org/LL1845-8/
* id = "ad6589c4-a929-4dc4-bcf4-0ce63f733a95"
* status = #final
* code = $loinc#67775-7 "Level of responsiveness"
* valueCodeableConcept = urn:oid:2.16.840.1.113883.17.3.5.21#3326007 "Unresponsive"
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pain-Scale-Score-1
InstanceOf: Observation
Usage: #inline
// TODO note I changed this to a pain observation pattern as pain is not a vital sign
* id = "8ad91b35-9e62-4eef-9d29-de06f463511b"
* status = #preliminary
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* code.coding[1] = $SCT#225908003 "Pain Score"
* valueQuantity.value = 9

Instance: ex-EMS-Cardiac-Patient-Vitals-Stroke-Scale-Score-1
InstanceOf: Observation
Usage: #inline
// Changed to be based on https://loinc.org/70184-7/   as stroke scale is not a vital-sign
* id = "e439221c-7899-4bcc-a6b4-1054f4305b48"
* status = #preliminary
* code = $loinc#70184-7 "Level of conciousness [NIH Stroke Scale]"
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* method = $SCT#7701001 "Not Applicable"

Instance: ex-EMS-Cardiac-Patient-Vitals-Reperfusion-Checklist-1
InstanceOf: Observation
Usage: #inline
// Changed to be based on https://loinc.org/67523-1/    as Reperfusion is not a vital-sign
* id = "ec61ff08-e60c-49e6-8091-12109d278dde"
* status = #preliminary
* code = $loinc#67523-1 "Contraindication for thrombolytic use NEMSIS"
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)


Instance: ex-EMS-Cardiac-Patient-Vitals-BloodPresssure-2 
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #inline
* id = "86d600a0-0764-4bc9-b1a0-5dfffb617a24"
* status = #final 
* component[SystolicBP].valueQuantity = 0 'mm[Hg]'
* component[DiastolicBP].valueQuantity = 0 'mm[Hg]'
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* method = $SCT#3308005 "Cuff-Automated"
// [Note: NEMSIS Values]

Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-Rhythm-2
InstanceOf: Observation
Usage: #inline
// changed to https://loinc.org/8884-9/ as heart rate rhythm observation is not a vital-sign
* id = "0973da60-38cc-11ec-8d3d-0242ac130003"
* status = #final
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
InstanceOf: Observation // http://hl7.org/fhir/StructureDefinition/heartrate
Usage: #inline
* id = "5055df00-24a6-4531-bc54-22a4bfe0159e"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#8867-4 "Heart rate"
* valueQuantity = 185 '/min' 
* method = $SCT#3311005 "Electronic Monitor - Cardiac"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pulse-Oximetry-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #inline
* id = "4f5a1b9-d44d-4cb5-8491-16f9c37f3790"
* status = #preliminary
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* code = $loinc#2708-6

Instance: ex-EMS-Cardiac-Patient-Vitals-Respiratory-Rate-2
InstanceOf: Observation // http://hl7.org/fhir/StructureDefinition/resprate
Usage: #inline
* id = "093b485e-4511-418f-b607-cfaec2996e4d"
* status = #final
* code = $loinc#9279-1
* valueQuantity = 185 '/min'
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-End-Tidal-Carbon-Dioxide-ETCO2-2
InstanceOf: Observation
Usage: #inline
// Changed to https://loinc.org/19889-5/ as carbon dioxide level is not a vital-sign
* id = "4757a8f6-5765-4333-b5de-ca31a25553c2"
* status = #preliminary
* code = $loinc#19889-5 "Carbon dioxide/Gas.total.at end expiration in Exhaled"
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Carbon-Monoxide-CO-2
InstanceOf: Observation
Usage: #inline
// Changed to https://loinc.org/19911-7/ as carbon monoxide is not a vital-sign
* id = "ba7139e1-9064-4293-94e6-4f5e9ccc972a"
* status = #preliminary
* code = $loinc#19911-7 "Diffusion capacity.carbon monoxide"
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Blood-Glucose-Level-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "ef4fdaf1-095b-4db0-915d-338c19fe9a7d"
* status = #final
* code = $loinc#2339-0
* valueQuantity = 105 'mg/mL'
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-2
InstanceOf: Observation
Usage: #inline
* id = "44c24aba-2298-49a8-9d67-e44a7b46c09f"
// Modeled this from https://www.hl7.org/fhir/observation-example-glasgow.html
// note I just replicated that example here. I did not try to find all the proper codes for your example
* status = #final
* code = $loinc#9269-2
* valueQuantity = 13 '{score}'
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* component[+].code = $loinc#9268-4 "Glasgow coma score motor"
* component[=].valueCodeableConcept.coding[+] = http://acme.ec/codes#5 "Localizes painful stimuli"
* component[=].valueCodeableConcept.coding[+] = $loinc#LA6566-9 "Localizing pain"
* component[=].valueCodeableConcept.text = "5 (Localizes painful stimuli)"
* component[+].code = $loinc#9270-0 "Glasgow coma score verbal"
* component[=].valueCodeableConcept.coding[+] = http://acme.ec.codes#4 "Confused, disoriented"
* component[=].valueCodeableConcept.coding[+] = $loinc#LA6560-2 "Confused"
* component[=].valueCodeableConcept.text = "4 (Confused, disoriented)"
* component[+].code = $loinc#9267-6 "Glasgow coma score eye opening"
* component[=].valueCodeableConcept.coding[+] = http://acme.ec.codes#4 "Opens eyes spontaneously"
* component[=].valueCodeableConcept.coding[+] = $loinc#LA6556-0 "Eyes open spontaneously"
* component[=].valueCodeableConcept.text = "4 (Opens eyes spontaneously)"




Instance: ex-EMS-Cardiac-Patient-Vitals-Temperature-2
InstanceOf: Observation // http://hl7.org/fhir/StructureDefinition/bodytemp
Usage: #inline
* id = "7cbaa1c3-e793-4516-95ed-af6783532feb"
* status = #final
* code = $loinc#8310-5
* valueQuantity = 36.1 'Cel'
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* method = $SCT#3325017 "Skin Probe"
// [Note: NEMSIS Values]

Instance: ex-EMS-Cardiac-Patient-Vitals-Level-of-Responsiveness-AVPU-2
InstanceOf: Observation
Usage: #inline
// Changed to https://loinc.org/67775-7/ as responsiveness is not a vital-sign
* id = "6ec67b5f-fa07-46f9-aa09-857b475ce30f"
* status = #final
* code = $loinc#67775-7 "Level of responsiveness"
* valueCodeableConcept = urn:oid:2.16.840.1.113883.17.3.5.21#3326007 "Unresponsive"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pain-Scale-Score-2
InstanceOf: Observation
Usage: #inline
// TODO note I changed this to a pain observation pattern as pain is not a vital sign
* id = "66721b82-aaeb-4568-928e-d49145e2bad9"
* status = #preliminary
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* code.coding[1] = $SCT#225908003 "Pain Score"
* valueQuantity.value = 8

Instance: ex-EMS-Cardiac-Patient-Vitals-Stroke-Scale-Score-2
InstanceOf: Observation
Usage: #inline
// Changed to be based on https://loinc.org/70184-7/   as stroke scale is not a vital-sign
* id = "bb282e3a-ca42-4984-9859-e32dd013fed0"
* status = #preliminary
* code = $loinc#70184-7 "Level of conciousness [NIH Stroke Scale]"
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* method = $SCT#7701001 "Not Applicable"

Instance: ex-EMS-Cardiac-Patient-Vitals-Reperfusion-Checklist-2
InstanceOf: Observation
Usage: #inline
// Changed to be based on https://loinc.org/67523-1/    as Reperfusion is not a vital-sign
* id = "a23d6cb2-c238-4b7a-abcd-7bdd6966fa65"
* status = #preliminary
* code = $loinc#67523-1 "Contraindication for thrombolytic use NEMSIS"
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-BloodPresssure-3 
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #inline
* id = "387b36eb-9220-4068-ae2f-21707522aab6"
* status = #final 
* component[SystolicBP].valueQuantity = 85.0 'mm[Hg]'
* component[DiastolicBP].valueQuantity = 54.0 'mm[Hg]'
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* method = $SCT#3308005 "Cuff-Automated"
// [Note: NEMSIS Values]

Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-Rhythm-3
InstanceOf: Observation
Usage: #inline
// changed to https://loinc.org/8884-9/ as heart rate rhythm observation is not a vital-sign
* id = "9fdcb6f1-c3a3-490f-ba00-0c260d619411"
* status = #final
* code = $loinc#8884-9 "Heart rate rhythm"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* valueCodeableConcept.coding[+] = $SCT#9901009 "Atrial Flutter" 
* valueCodeableConcept.coding[+] = $SCT#9901069 "Ventricular Tachycardia (With Pulse)"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* device = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)
* method.coding[+] = $SCT#258181008 "Electrocardiogram analysis"
//Note: Verify, translated from NEMSIS]
* method.coding[+] = $SCT#3304007 "12 Lead-Left Sided (Normal)"
// [Note: NEMSIS Values]
* derivedFrom = Reference(Media/832a7212-38cf-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Heart-Rate-3
InstanceOf: Observation // http://hl7.org/fhir/StructureDefinition/heartrate
Usage: #inline
* id = "3ec08244-00f1-41ac-a251-b70c0d069cf1"
* status = #final
* valueQuantity = 98 '/min'
* method = $SCT#3311005 "Electronic Monitor - Cardiac"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#8867-4 "Heart rate"

Instance: ex-EMS-Cardiac-Patient-Vitals-Pulse-Oximetry-3
InstanceOf: Observation // http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #inline
* id = "74b8ed2b-08ec-4ec8-bac8-c61154558c33"
* status = #final
* valueQuantity = 91.0 '%'
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* code = $loinc#2708-6

Instance: ex-EMS-Cardiac-Patient-Vitals-Pulse-Rhythm-3
InstanceOf: Observation
Usage: #inline
// changed to https://loinc.org/67519-9/ as pulse rhythm assessment is not a vital-sign
// note that the value 3313005 is not found on that loinc page which does have a bunch of NEMSIS codes
* id = "fee522f6-9a32-4ad7-b906-4e61de240a2e"
* status = #final
* code = $loinc#67519-9 "Cardiac rhythm NEMSIS"
* valueCodeableConcept = $SCT#3313005 "Regularly Irregular"
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Respiratory-Rate-3
InstanceOf: Observation // http://hl7.org/fhir/StructureDefinition/resprate
Usage: #inline
* id = "1a21143f-8676-4c23-a312-9ed25cef0254"
* status = #final
* code = $loinc#9279-1
* valueQuantity = 48 '/min'
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-End-Tidal-Carbon-Dioxide-ETCO2-3
InstanceOf: Observation
Usage: #inline
// Changed to https://loinc.org/19889-5/ as carbon dioxide level is not a vital-sign
* id = "caf96813-eada-4b1e-a4e6-99e446834bbc"
* status = #final
* code = $loinc#19889-5 "Carbon dioxide/Gas.total.at end expiration in Exhaled"
* valueQuantity = 32 '%'
//* valueQuantity.unit = $UCUM#[ETCO2Type = mmHg]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Carbon-Monoxide-CO-3
InstanceOf: Observation
Usage: #inline
// Changed to https://loinc.org/19911-7/ as carbon monoxide is not a vital-sign
* id = "0e4e5415-8a8b-470e-9ce2-05a79f7f48ae"
* status = #preliminary
* code = $loinc#19911-7 "Diffusion capacity.carbon monoxide"
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Blood-Glucose-Level-3
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* id = "a0ca7a99-8132-4efa-8068-03282c3c4eff"
* status = #final
* code = $loinc#2339-0
* valueQuantity = 108 'mg/mL'
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Glasgow-Coma-Score-3
InstanceOf: Observation
Usage: #inline
// Modeled this from https://www.hl7.org/fhir/observation-example-glasgow.html
// note I just replicated that example here. I did not try to find all the proper codes for your example
* id = "59276b4d-51e0-4799-b79a-e4737efb4ef8"
* status = #final
* code = $loinc#9269-2
* valueQuantity = 13 '{score}'
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T10:52:03-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* component[+].code = $loinc#9268-4 "Glasgow coma score motor"
* component[=].valueCodeableConcept.coding[+] = http://acme.ec/codes#5 "Localizes painful stimuli"
* component[=].valueCodeableConcept.coding[+] = $loinc#LA6566-9 "Localizing pain"
* component[=].valueCodeableConcept.text = "5 (Localizes painful stimuli)"
* component[+].code = $loinc#9270-0 "Glasgow coma score verbal"
* component[=].valueCodeableConcept.coding[+] = http://acme.ec.codes#4 "Confused, disoriented"
* component[=].valueCodeableConcept.coding[+] = $loinc#LA6560-2 "Confused"
* component[=].valueCodeableConcept.text = "4 (Confused, disoriented)"
* component[+].code = $loinc#9267-6 "Glasgow coma score eye opening"
* component[=].valueCodeableConcept.coding[+] = http://acme.ec.codes#4 "Opens eyes spontaneously"
* component[=].valueCodeableConcept.coding[+] = $loinc#LA6556-0 "Eyes open spontaneously"
* component[=].valueCodeableConcept.text = "4 (Opens eyes spontaneously)"






Instance: ex-EMS-Cardiac-Patient-Vitals-Temperature-3
InstanceOf: Observation // http://hl7.org/fhir/StructureDefinition/bodytemp
Usage: #inline
* id = "369d0828-c27a-4047-97bd-5d0da9d2436d"
* status = #final
* code = $loinc#8310-5
* valueQuantity = 36.8 'Cel'
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* method = $SCT#3325017 "Skin Probe"
// [Note: NEMSIS Values]

Instance: ex-EMS-Cardiac-Patient-Vitals-Level-of-Responsiveness-AVPU-3
InstanceOf: Observation
Usage: #inline
// Changed to https://loinc.org/67775-7/ as responsiveness is not a vital-sign
* id = "72e8c109-c43b-4fe0-b4d8-36d74612f9ea"
* status = #final
* code = $loinc#67775-7 "Level of responsiveness"
* valueCodeableConcept = urn:oid:2.16.840.1.113883.17.3.5.21#3326007 "Unresponsive"
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: ex-EMS-Cardiac-Patient-Vitals-Pain-Scale-Score-3
InstanceOf: Observation
Usage: #inline
// TODO note I changed this to a pain observation pattern as pain is not a vital sign
* id = "40b02e04-4212-4346-8661-164e4151a207"
* status = #preliminary
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* code.coding[1] = $SCT#225908003 "Pain Score"
* valueQuantity.value = 8

Instance: ex-EMS-Cardiac-Patient-Vitals-Stroke-Scale-Score-3
InstanceOf: Observation
Usage: #inline
// Changed to be based on https://loinc.org/70184-7/   as stroke scale is not a vital-sign
* id = "946a66f9-d0de-409a-bf93-e20726810482"
* status = #preliminary
* code = $loinc#70184-7 "Level of conciousness [NIH Stroke Scale]"
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* method = $SCT#7701001 "Not Applicable"

Instance: ex-EMS-Cardiac-Patient-Vitals-Reperfusion-Checklist-3
InstanceOf: Observation
Usage: #inline
// Changed to be based on https://loinc.org/67523-1/    as Reperfusion is not a vital-sign
* id = "bb9752e5-a2a7-4723-b27d-1ba07dc936b6"
* status = #preliminary
* code = $loinc#67523-1 "Contraindication for thrombolytic use NEMSIS"
* dataAbsentReason = $NEMSIS#8801023
// [Note: NEMSIS Values]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effectiveDateTime = "2021-10-06T11:07:04-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

