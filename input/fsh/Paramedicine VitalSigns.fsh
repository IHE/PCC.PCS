Profile:        ParamedicineVitalSigns
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.pcs.paramedicinceVitalSigns
Title:          "IHE PCS Profile ParamedicinceVitalSigns Observation"
Description:    "A profile on the Observation that declares how FooBar will Create/Update for body weight measurements."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code from Paramedicine_VitalSigns_VS (extensible) 
* effectiveDateTime 1..1
* subject 1..1
* subject only Reference(Patient)



Profile:        EndTitleCarbonDioxide
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.EndTitleCarbonDioxide
Title:          "IHE PCS End Title Carbon Dioxide (ETCO2) Observation"
Description:    """
CO2 content is a measurement of total CO2 in the blood. Most of it is in the form of bicarbonate (HCO3) controlled by the kidney. 
A small amount (5%) of CO2 is dissolved in the blood as insoluble carbonic acid (H2CO3). Changes in CO2 content generally relate to metabolic issues, 
renal function and unusual losses (diarrhea). Respiratory disease can ultimately effect CO2 content, but only slightly and only if prolonged. 
(Operational Medicine 2001, Arterial Blood Gas, Brookside Associates Medical Education Division) """

* code = $loinc#19889-5
* value[x] 1..1
* value[x] only Quantity
* value[x].code = $ucum#%

Instance: ex-EndTitleCarbonDioxide
InstanceOf: EndTitleCarbonDioxide
Usage: #example
Description: "The Example instance for the EndTitleCarbonDioxide vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 4.2 '%'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

	
Profile:        CarbonMonoxide
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.CarbonMonoxide
Title:          "IHE PCS Carbon Monoxide (CO) Observation"
Description:    """
Diffusing capacity (DLCO) is the carbon monoxide uptake from a single inspiration in a standard time (usually 10 sec). 
Since air consists of very minute or trace quantities of carbon monoxide (CO), 10 seconds is considered to be the standard time for inhalation, 
then rapidly blow it out (exhale). The exhaled gas is tested to determine how much of the tracer gas was absorbed during the breath. This will pick up diffusion impairments, 
for instance in pulmonary fibrosis. This must be corrected for anemia (because rapid CO diffusion is dependent on hemoglobin in RBC's; a low hemoglobin concentration, anemia, 
will reduce DLCO) and pulmonary hemorrhage (excess RBC's in the interstitium or alveoli can absorb CO and artificially increase the DLCO capacity). Atmospheric pressure and/or
altitude will also affect measured DLCO, and so a correction factor is needed to adjust for standard pressure. Online calculators are available to correct for hemoglobin levels 
and altitude and/or pressure where the measurement was taken.  """

* code = $loinc#19911-7
* value[x] 1..1
* value[x] only Quantity
* value[x].code = $ucum#%

Instance: ex-CarbonMonoxide
InstanceOf: CarbonMonoxide
Usage: #example
Description: "The Example instance for the CarbonMonoxide vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 80 '%'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        BloodGlucoseLevel
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.BloodGlucoseLevel
Title:          "IHE PCS Carbon Monoxide (CO) Observation"
Description:    """
Glucose (C6H12O6) is a simple monosaccharide and monomer of carbohydrates. Glucose provides energy for cellular processes and aids metabolism within the body. When food is ingested, 
the carbohydrates within the food are broken down into glucose molecules. Blood glucose content is significant in determining an individual's overall state of health. An elevated blood 
glucose level is called hyperglycemia and a deficient blood glucose level is called hypoglycemia. When an individual is hyperglycemic and cannot properly regulate their blood glucose level 
they are considered diabetic. Type 1 diabetes is caused by the immune system attacking pancreatic beta cells (cells that produce insulin) and Type 2 diabetes is caused by insulin resistance.
[MedlinePlus Encyclopedia:003482]. """

* code = $loinc#2339-0
* value[x] 1..1
* value[x] only Quantity
* value[x].code = $ucum#mg/dl

Instance: ex-BloodGlucoseLevel
InstanceOf: BloodGlucoseLevel
Usage: #example
Description: "The Example instance for the CarbonMonoxide vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 112 'mg/dl'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)


Profile:        GlasgowComaScoreEye
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.GlasgowComaScoreEye
Title:          "IHE PCS Glasgow Coma Score-Eye Observation"
Description:    """
The Glasgow Coma Scale (GCS) is a clinical scale used to reliably measure a person's level of consciousness after a brain injury. This observation subset of the GCS assesses a person based on 
their ocular response. """

* code = $loinc#2339-0
* value[x] 1..1
* value[x] only CodeableConcept

Instance: ex-GlasgowComaScoreEye
InstanceOf: GlasgowComaScoreEye
Usage: #example
Description: "The Example instance for the Glasgow Coma Score - Eye vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = #3
// Needs confirmation 
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        GlasgowComaScoreMotor
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.GlasgowComaScoreMotor
Title:          "IHE PCS Glasgow Coma Score-Motor Observation"
Description:    """
The Glasgow Coma Scale (GCS) is a clinical scale used to reliably measure a person's level of consciousness after a brain injury. This observation subset of the GCS assesses a person based on 
their motoric response. """

* code = $loinc#9268-4
* value[x] 1..1
* value[x] only CodeableConcept

Instance: ex-GlasgowComaScoreMotor
InstanceOf: GlasgowComaScoreMotor
Usage: #example
Description: "The Example instance for the Glasgow Coma Score-Motor vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = #6
// Needs confirmation 
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        GlasgowComaScoreVerbal
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.GlasgowComaScoreVerbal
Title:          "IHE PCS Glasgow Coma Score-Verbal Observation"
Description:    """
The Glasgow Coma Scale (GCS) is a clinical scale used to reliably measure a person's level of consciousness after a brain injury. This observation subset of the GCS assesses a person based on 
their oral response. """

* code = $loinc#9270-0
* value[x] 1..1
* value[x] only CodeableConcept

Instance: ex-GlasgowComaScoreVerbal
InstanceOf: GlasgowComaScoreVerbal
Usage: #example
Description: "The Example instance for the Glasgow Coma Score-Verbal vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = #5
// Needs confirmation 
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        TotalGlasgowComaScore
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.TotalGlasgowComaScore
Title:          "IHE PCS Total Glasgow Coma Score Observation"
Description:    """
The Glasgow Coma Scale is reported as the combined score of each test (E for eye, V for Verbal, and M for Motor). """

* code = $loinc#9269-2
* value[x] only integer

Instance: ex-TotalGlasgowComaScore
InstanceOf: TotalGlasgowComaScore
Usage: #example
Description: "The Example instance for the Total Glasgow Coma Score vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueInteger = 14
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        GlasgowQualifier
Parent:         Observation
Id:             IHE.pcs.GlasgowQualifier
Title:          "IHE PCS Glasgow Qualifier Observation"
Description:    """
Glasgow coma score special circumstances. """

* code = $loinc#55285-1
* value[x] only CodeableConcept

Instance: ex-GlasgowQualifier
InstanceOf: GlasgowQualifier
Usage: #example
Description: "The Example instance for the Glasgow Qualifier observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $NEMSIS#3322003
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        PainScaleScore
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.PainScaleScore
Title:          "IHE PCS Pain Scale Score Observation"
Description:    """
Evaluation of the patient for the presence or absence of pain, and its severity using a standardized tool at the time of the palliative care initial encounter. """

* code = $loinc#38208-5
* value[x] only integer
//Note: 


Instance: ex-PainScaleScore
InstanceOf: PainScaleScore
Usage: #example
Description: "The Example instance for the Pain Scale Score observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueInteger = 3
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        PainScaleType
Parent:         Observation
Id:             IHE.pcs.PainScaleType
Title:          "IHE PCS Pain Scale Type Observation"
Description:    """
The method in which the pain score is obtained. """

* code = $loinc#38208-5
* value[x] only CodeableConcept

Instance: ex-PainScaleType
InstanceOf: PainScaleType
Usage: #example
Description: "The Example instance for the Pain Scale Type observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = https://loinc.org/LL3883-7#LA25254-6
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        StrokeScaleScore
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.StrokeScaleScore
Title:          "IHE PCS Stroke Scale Score Observation"
Description:    """
Used to gauge the severity of a stroke. Patients are given more points for greater deficiencies. A score of 0 indicates that the test is normal.  """

* code = $loinc#72089-6 
* value[x] only integer

Instance: ex-StrokeScaleScore
InstanceOf: StrokeScaleScore
Usage: #example
Description: "The Example instance for the Stroke Scale Score vital signs observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueInteger = 15
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        StrokeScaleScoreInterpretation
Parent:         Observation
Id:             IHE.pcs.StrokeScaleScoreInterpretation
Title:          "IHE PCS Stroke Scale Score Interpretation Observation"
Description:    """
The interpretation of the Stroke Scale score as positive, negative, or unconclusive.  """

* code = $loinc#67520-7
* value[x] only CodeableConcept 
* valueCodeableConcept from Stroke_Scale_Score_Interpretation_VS (preferred)

Instance: ex-StrokeScaleScoreInterpretation
InstanceOf: StrokeScaleScoreInterpretation
Usage: #example
Description: "The Example instance for the Stroke Scale Score Interpretation observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#10828004
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        StrokeScaleType
Parent:         Observation
Id:             IHE.pcs.StrokeScaleType
Title:          "IHE PCS Stroke Scale Type Observation"
Description:    """
The interpretation of the Stroke Scale score as positive, negative, or unconclusive.  """

* code = $loinc#67521-5
* value[x] only CodeableConcept 


Instance: ex-StrokeScaleType
InstanceOf: StrokeScaleType
Usage: #example
Description: "The Example instance for the Stroke Scale Type observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = https://loinc.org/LL1847-4#LA17113-4
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        Apgar1Minute
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.Apgar1Minute
Title:          "IHE PCS Apgar 1 Minute vital sign Observation"
Description:    """
The Apgar score is a scoring system doctors and nurses use to assess newborns after they’re born. Taken at 1 minute after birth. """

* code = $loinc#48334-7 


Instance: ex-Apgar1Minute
InstanceOf: Apgar1Minute
Usage: #example
Description: "The Example instance for Apgar 1 Minute vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueInteger = 8
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        Apgar5Minute
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.Apgar5Minute
Title:          "IHE PCS Apgar 5 Minute vital sign Observation"
Description:    """
The Apgar score is a scoring system doctors and nurses use to assess newborns after they’re born. Taken at 5 minutes after birth. """

* code = $loinc#48333-9  


Instance: ex-Apgar5Minute
InstanceOf: Apgar5Minute
Usage: #example
Description: "The Example instance for Apgar 5 Minute vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueInteger = 10
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        Apgar10Minute
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.Apgar10Minute
Title:          "IHE PCS Apgar 10 Minute vital sign Observation"
Description:    """
The Apgar score is a scoring system doctors and nurses use to assess newborns after they’re born. Taken at 10 minutes after birth. """

* code = $loinc#48332-1 


Instance: ex-Apgar10Minute
InstanceOf: Apgar10Minute
Usage: #example
Description: "The Example instance for Apgar 10 Minute vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueInteger = 10
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        RespiratoryEffort
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.RespiratoryEffort
Title:          "IHE PCS Respiratory Effort vital sign Observation"
Description:    """
Increased work of breathing, or respiratory distress, suggest that the patient is having significant difficulty breathing that requires immediate assessment and management. """

* code = $loinc#80341-1 
* value[x] only CodeableConcept 

Instance: ex-RespiratoryEffort
InstanceOf: RespiratoryEffort
Usage: #example
Description: "The Example instance for Respiratory Effort vital sign observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = https://loinc.org/LL3854-8#LA25370-0
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        LevelOfResponsiveness
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.LevelOfResponsiveness
Title:          "IHE PCS Level Of Responsiveness Observation"
Description:    """
Increased work of breathing, or respiratory distress, suggest that the patient is having significant difficulty breathing that requires immediate assessment and management. """

* code = $loinc#67775-7  
* value[x] only CodeableConcept 
* valueCodeableConcept from Level_Of_Responsiveness_VS (preferred) 

Instance: ex-LevelOfResponsiveness
InstanceOf: LevelOfResponsiveness
Usage: #example
Description: "The Example instance for Level Of Responsiveness observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#248234008
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)


Profile:        BodyweightEstimated
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.BodyweightEstimated
Title:          "IHE PCS Body weight Estimated Observation"
Description:    """
The patient's body weight either measured or estimated. """

* code = $loinc#8335-2  
* value[x] only Quantity

Instance: ex-BodyweightEstimated
InstanceOf: BodyweightEstimated
Usage: #example
Description: "The Example instance forBody weight Estimated observation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueQuantity = 50 'kg'
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)

Profile:        LengthBasedTapeMeasure
Parent:         IHE.pcs.paramedicinceVitalSigns
Id:             IHE.pcs.LengthBasedTapeMeasure
Title:          "IHE PCS Length-based tape measureObservation"
Description:    """
The patient's body weight either measured or estimated. """

* code = $loinc#67670-0  
* value[x] only CodeableConcept 
* valueCodeableConcept from Length_Based_Tape_Measure_VS (preferred) 

Instance: ex-LengthBasedTapeMeasure
InstanceOf: LengthBasedTapeMeasure
Usage: #example
Description: "The Example instance for Length-based tape measureobservation"
* status = http://hl7.org/fhir/observation-status#final
* effectiveDateTime = "2021-10-06T10:52:30-07:00"
* valueCodeableConcept = $sct#444489001
* performer = Reference(Practitioner/ex-Practitioner)
* subject = Reference(Patient/ex-Patient)