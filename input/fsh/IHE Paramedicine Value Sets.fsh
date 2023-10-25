

ValueSet: Paramedicine_VitalSigns_VS
Description: "Vital signs that should be used in the Paramedicine Summary doucmentation"
Id: Paramedicine.VitalSigns.VS
* codes from system http://hl7.org/fhir/ValueSet/observation-vitalsignresult 
* $loinc#19889-5      "End Title Carbon Dioxide (ETCO2)"
* $loinc#19911-7      "Carbon Monoxide (CO)"
* $loinc#2339-0       "Blood Glucose Level"
* $loinc#9267-6       "Glasgow Coma Score-Eye"
* $loinc#9268-4       "Glasgow Coma Score-Motor"
* $loinc#9270-0       "Glasgow Coma Score-Verbal"
* $loinc#9269-2       "Total Glasgow Coma Score"
* $loinc#55285-1      "Glasgow Qualifier"
* $loinc#38208-5      "Pain Scale Score"
* $loinc#80316-3       "Pain Scale Type"
* $loinc#72089-6       "Stroke Scale Score"
* $loinc#67520-7       "Stroke Scale Score Interpretation"
* $loinc#67521-5       "Stroke Scale Type"
* $loinc#48334-7       "Apgar 1 Minute"
* $loinc#48333-9       "Apgar 5 Minute"
* $loinc#48332-1       "Apgar 10 Minute"
* $loinc#80341-1       "Respiratory Effort"
* $loinc#67775-7       "Level Of Responsiveness"


ValueSet: Stroke_Scale_Score_Interpretation_VS
Description: "The interpretation vales of the Stroke Scale score as positive, negative, or unconclusive."
Id: Stroke.Scale.Score.Interpretation.VS
 
* $sct#10828004      "Positive"
* $sct#260385009      "Negative"
// Note: * $sct#      "Non-conclusive" may need to be requested from snomed


ValueSet: Stroke_Scale_Type_VS
Description: "The Stroke assesment used to identify a stroke"
Id: Stroke.Scale.Type.VS
 
* $sct#450741005     "National Institutes of Health stroke scale (assessment scale)"
* $sct#1287356003      "Cincinnati Prehospital Stroke Scale (assessment scale)"
// Request from SNOMED * $sct#      "Los Angeles prehospital stroke screen (LAPSS)"
// Request from SNOMED * $sct#      "Massachusetts stroke scale (MSS)"
// Request from SNOMED * $sct#      "Miami Emergency Neurologic Deficit Exam (MEND)"
// Request from SNOMED * $sct#      "FAST-ED"
// Request from SNOMED * $sct#      "Boston stroke scale (BOSS)"
// Request from SNOMED * $sct#      "Ontario prehospital stroke scale (OPSS)"
// Request from SNOMED * $sct#      "Melbourne ambulance stroke screen (MASS)"
// Request from SNOMED * $sct#      "Rapid arterial occlusion evaluation (RACE)"
// Request from SNOMED * $sct#      "Los angeles motor score (LAMS)"


ValueSet: Level_Of_Responsiveness_VS
Description: "The Stroke assesment used to identify a stroke"
Id: Level.Of.Responsiveness.VS
 
* $sct#248234008     "Mentally alert (finding)"
* $sct#288598006      "Ability to use verbal communication (observable entity)"
* $sct#422768004      "Unresponsive (finding)"
* $sct#450847001      "Responds to pain (finding)"
