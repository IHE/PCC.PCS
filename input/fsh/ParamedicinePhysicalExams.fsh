Profile:        SkinAssesment
Parent:         Observation
Id:             IHE.pcc.SkinAssesment
Title:          "IHE Skin Assesment Panel Observation"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#72284-3
* effectiveDateTime 1..1
* status = #final
* subject 1..1
* dataAbsentReason MS
* subject only Reference(Patient)
* performer 1..*
* hasmember only Reference(ColorOfSkin or MoistureOfSkin or TemperatureOfSkin or TurgorOfSkin)

Instance: ex-SkinAssesment
InstanceOf: SkinAssesment
Usage: #example
Description: "The Example instance for the SkinAssesment observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* hasmember = Reference(ex-ColorOfSkin and ex-MoistureOfSkin  and ex-TemperatureOfSkin  and ex-TurgorOfSkin)


Profile:        ColorOfSkin
Parent:         Observation
Id:             IHE.pcc.ColorOfSkin
Title:          "IHE Color Of Skin assesment Observation"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#39107-8
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Color_Of_Skin_VS (extensible)

Instance: ex-ColorOfSkin
InstanceOf: ColorOfSkin
Usage: #example
Description: "The Example instance for the ColorOfSkin observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#297952003


Profile:        MoistureOfSkin
Parent:         Observation
Id:             IHE.pcc.MoistureOfSkin
Title:          "IHE MoistureOfSkin Of Skin assesment Observation"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#39129-2
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Moisture_Of_Skin_VS (extensible)

Instance: ex-MoistureOfSkin
InstanceOf: MoistureOfSkin
Usage: #example
Description: "The Example instance for the MoistureOfSkin observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#702756006


Profile:        TemperatureOfSkin
Parent:         Observation
Id:             IHE.pcc.TemperatureOfSkin
Title:          "IHE temperature Of Skin assesment Observation"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#39106-0
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Temperature_Of_Skin_VS (extensible)

Instance: ex-TemperatureOfSkin
InstanceOf: TemperatureOfSkin
Usage: #example
Description: "The Example instance for the TemperatureOfSkin observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#297977002


Profile:        TurgorOfSkin
Parent:         Observation
Id:             IHE.pcc.TurgorOfSkin
Title:          "IHE turgor Of Skin assesment Observation"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#39109-4
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Turgor_Of_Skin_VS (extensible)

Instance: ex-TurgorOfSkin
InstanceOf: TurgorOfSkin
Usage: #example
Description: "The Example instance for the TurgorOfSkin observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#297956000


Profile:        HeadAssessment
Parent:         Observation
Id:             IHE.pcc.HeadAssessment
Title:          "IHE Head assesment exam"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#8701-5
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Paramedicine_Assessment_Findings_VS (extensible)
* bodySite 1..1
* bodySite = $sct#69536005

Instance: ex-HeadAssessment
InstanceOf: HeadAssessment
Usage: #example
Description: "The Example instance for the Head assesment exam"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#247348008

Profile:        FaceAssessment
Parent:         Observation
Id:             IHE.pcc.FaceAssessment
Title:          "IHE Face assesment exam"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#32432-7
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Paramedicine_Assessment_Findings_VS (extensible)
* bodySite 1..1
* bodySite = $sct#89545001

Instance: ex-FaceAssessment
InstanceOf: FaceAssessment
Usage: #example
Description: "The Example instance for the Face assesment exam"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#247348008

Profile:        NeckAssessment
Parent:         Observation
Id:             IHE.pcc.NeckAssessment
Title:          "IHE Neck assesment exam"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#11442-1
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Neck_Assessment_VS (extensible)
* bodySite 1..1
* bodySite = $sct#45048000

Instance: ex-NeckAssessment
InstanceOf: NeckAssessment
Usage: #example
Description: "The Example instance for the Neck assesment exam"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#247348008


Profile:        HeartAssessment
Parent:         Observation
Id:             IHE.pcc.HeartAssessment
Title:          "IHE Heart assesment exam"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#11442-1
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Heart_Assessment_VS (extensible)
* bodySite 1..1
* bodySite = $sct#80891009

Instance: ex-HeartAssessment
InstanceOf: HeartAssessment
Usage: #example
Description: "The Example instance for the Heart exam"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#281900007

Profile:        AbdominalAssessment
Parent:         Observation
Id:             IHE.pcc.AbdominalAssessment
Title:          "IHE Abdominal assesment exam"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#11442-1
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Abdominal_Assessment_VS (extensible)
* bodySite 1..1
* bodySite from Abdominal_Assessment_Finding_Location_VS (extensible)

Instance: ex-AbdominalAssessment
InstanceOf: AbdominalAssessment
Usage: #example
Description: "The Example instance for the Abdominal exam"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#169564004
* bodySite = $sct#302553009

Profile:        PelvisGenitourinaryAssessment
Parent:         Observation
Id:             IHE.pcc.PelvisGenitourinaryAssessment
Title:          "IHE Pelvis Genitourinary assesment exam"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#11442-1
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Pelvis_Genitourinary_Assessment_VS (extensible)
* bodySite 1..1

Instance: ex-PelvisGenitourinaryAssessment
InstanceOf: PelvisGenitourinaryAssessment
Usage: #example
Description: "The Example instance for the Pelvis/Genitourinary exam"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#77493009 
* bodySite = $sct#63337009


Profile:        BackandSpineAssessment
Parent:         Observation
Id:             IHE.pcc.BackandSpineAssessment
Title:          "IHE back and spine assesment exam"
Description:    "TBD."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#32476-4
* effectiveDateTime 1..1
* dataAbsentReason MS
* status = #final
* subject 1..1
* subject only Reference(Patient)
* performer 1..*
* value[x] only CodeableConcept 
* valueCodeableConcept from Back_Spine_Assessment_VS (extensible)
* bodySite 1..1
* bodySite from Back_Spine_Assessment_Finding_Location_VS (extensible)

Instance: ex-BackandSpineAssessment
InstanceOf: BackandSpineAssessment
Usage: #example
Description: "The Example instance for the back and spine exam"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)
* valueCodeableConcept = $sct#169564004
* bodySite = $sct#727234005


//eExam.ExtremityGroup

//eExam.15 - Extremity Assessment Finding Location

//eExam.16 - Extremities Assessment

//eExam.EyeGroup

//eExam.17 - Eye Assessment Finding Location

//eExam.18 - Eye Assessment

//eExam.LungGroup

//eExam.22 - Lung Assessment Finding Location

//eExam.23 - Lung Assessment

//eExam.ChestGroup

//eExam.24 - Chest Assessment Finding Location

//eExam.25 - Chest Assessment

//eExam.19 - Mental Status Assessment

//eExam.20 - Neurological Assessment

//eExam.21 - Stroke/CVA Symptoms Resolved