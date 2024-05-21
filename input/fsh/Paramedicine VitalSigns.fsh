Profile:        ParamedicineVitalSigns
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.pcs.paramedicinceVitalSigns
Title:          "IHE PCS Profile ParamedicinceVitalSigns Observation"
Description:    "IHE PCS ParamedicinceVitalSigns Observation deffines the minimum requirements for all the vital signs observations supported in this IG."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
//* code = $loinc#



Profile:        Mean_Arterial_Pressure
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.Mean.Arterial.Pressure
Title:          "Mean Arterial Pressure"
Description:    "Intravascular mean blood Pressure"
* category 1..1
* code = $loinc#8478-0
* value[x] 1..1 MS 
* value[x] only Quantity
* valueQuantity.code 1..1 
* valueQuantity.system 1..1
* valueQuantity.value 1..1
* valueQuantity.unit MS 
* valueQuantity.system = $ucum 
* valueQuantity.code = #mm[Hg]
* dataAbsentReason MS



Profile:        End_Title_Carbon_Dioxide_ETCO2
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.End.Title.Carbon.Dioxide.ETCO2
Title:          "End Title Carbon Dioxide ETCO2"
Description:    "CO2 content is a measurement of total CO2 in the blood. Most of it is in the form of bicarbonate (HCO3) controlled by the kidney. A small amount (5%) of CO2 is dissolved in the blood as insoluble carbonic acid (H2CO3). Changes in CO2 content generally relate to metabolic issues, renal function and unusual losses (diarrhea). Respiratory disease can ultimately effect CO2 content, but only slightly and only if prolonged. (Operational Medicine 2001, Arterial Blood Gas, Brookside Associates Medical Education Division)."
* category 1..1
* code = $loinc#19889-5
* value[x] 1..1 MS 
* value[x] only Quantity
* valueQuantity.code 1..1 
* valueQuantity.system 1..1
* valueQuantity.value 1..1
* valueQuantity.unit MS 
* valueQuantity.system = $ucum 
* valueQuantity.code = #mm[Hg]
* dataAbsentReason MS


Profile:        Carbon_Monoxide_CO
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.Carbon.Monoxide.CO
Title:          "Carbon Monoxide CO"
Description:    "Diffusing capacity (DLCO) is the carbon monoxide uptake from a single inspiration in a standard time (usually 10 sec). Since air consists of very minute or trace quantities of carbon monoxide (CO), 10 seconds is considered to be the standard time for inhalation, then rapidly blow it out (exhale). The exhaled gas is tested to determine how much of the tracer gas was absorbed during the breath. This will pick up diffusion impairments, for instance in pulmonary fibrosis. This must be corrected for anemia (because rapid CO diffusion is dependent on hemoglobin in RBC's; a low hemoglobin concentration, anemia, will reduce DLCO) and pulmonary hemorrhage (excess RBC's in the interstitium or alveoli can absorb CO and artificially increase the DLCO capacity). Atmospheric pressure and/or altitude will also affect measured DLCO, and so a correction factor is needed to adjust for standard pressure. Online calculators are available to correct for hemoglobin levels and altitude and/or pressure where the measurement was taken. ."
* category 1..1
* code = $loinc#19911-7
* value[x] 1..1 MS 
* value[x] only Quantity
* valueQuantity.code 1..1 
* valueQuantity.system 1..1
* valueQuantity.value 1..1
* valueQuantity.unit MS 
* valueQuantity.system = $ucum 
* valueQuantity.code = #mm[Hg]
* dataAbsentReason MS

Profile:        Pain_Scale_Score
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.Pain.Scale.Score
Title:          "Pain Scale Score"
Description:    "Pain severity Reported."
* category 1..1
* code = $loinc#72514-3
* value[x] 1..1 MS 
* method 1..1 MS 
* dataAbsentReason MS
// Pain Scale type shall be deffined in the method section



Profile:        General_APGAR_Score 
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.APGAR.Score 
Title:          "General APGAR Score"
Description:    "a new method of evaluation of the newborn infant. General Value."
* category 1..1
// * code = $loinc#9272-6 proper LOINC needs to be requested 
* value[x] 1..1 MS 
* dataAbsentReason MS
* value[x] only integer



Profile:        APGAR_Score_1_Minute 
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.APGAR.Score.1.Minute 
Title:          "APGAR Score 1 Minute "
Description:    "a new method of evaluation of the newborn infant. At 1 minute post birth."
* category 1..1
* code = $loinc#9272-6
* value[x] 1..1 MS 
* dataAbsentReason MS
* value[x] only integer



Profile:        APGAR_Score_5_Minute 
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.APGAR.Score.5.Minute 
Title:          "APGAR Score 5 Minute "
Description:    "a new method of evaluation of the newborn infant. At 5 minutes post birth."
* category 1..1
* code = $loinc#9274-2
* value[x] 1..1 MS 
* dataAbsentReason MS
* value[x] only integer



Profile:        APGAR_Score_10_Minute 
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.APGAR.Score.10.Minute 
Title:          "APGAR Score 10 Minute "
Description:    "a new method of evaluation of the newborn infant. At 10 minutes post birth."
* category 1..1
* code = $loinc#9271-8
* value[x] 1..1 MS 
* dataAbsentReason MS
* value[x] only integer



Profile:        Respiratory_Effort 
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.Respiratory.Effort
Title:          "Respiratory Effort"
Description:    "The indication of the effor used to breath. e.g. Labored, unlabored etc."
* category 1..1
* code = $loinc#80341-1
* value[x] 1..1 MS 
* dataAbsentReason MS
* value[x] only CodeableConcept



Profile:        Level_Of_Responsiveness_AVPU
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.Level.Of.Responsiveness.AVPU
Title:          "Level Of Responsiveness AVPU"
Description:    "a scale that is useful to rapidly grade a patient's gross level of consciousness, responsiveness, or mental status."
* category 1..1
* code = $loinc#67775-7
* value[x] 1..1 MS 
* dataAbsentReason MS
* value[x] only CodeableConcept



Profile:        Body_Height_Lying
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.Body.Height.Lying
Title:          "Body Height Lying"
Description:    "The length of the body that is measured while lying down. commonly used in pediatric care."
* category 1..1
* code = $loinc#67775-7
* value[x] 1..1 MS 
* dataAbsentReason MS


Profile:        Heart_Rate_Rhythm
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.Heart.Rate.Rhythm
Title:          "Heart Rate Rhythm"
Description:    "TBD"
* category 1..1
* code = $loinc#67775-7
* value[x] 1..1 MS 
* value[x] only Quantity
* dataAbsentReason MS



Profile:        Type_Of_Arrhythmia_EKG
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.Type.Of.Arrhythmia.EKG
Title:          "Type Of Arrhythmia EKG"
Description:    "Arrhythmia type interpreted by an EKG"
* category 1..1
* code = $loinc#76281-5
* value[x] 1..1 MS 
* value[x] only Quantity
* dataAbsentReason MS