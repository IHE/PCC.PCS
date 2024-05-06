Volume 3 contains content profiles.

This section corresponds to Content Module [domain-ZZ]

## 1:XX.6 : Paramedicine Summary Specification 
The Antepartum Summary represents a summary of the most critical information to an antepartum care provider regarding the status of a patient’s pregnancy. This document content module is a Medical Summary and inherits all header constraints from Medical Summary (1.3.6.1.4.1.19376.1.5.3.1.1.2).

### 1:X.6.1 Format Code

The following new Format Codes are introduced with the PCS Profile. A complete listing of IHE Format Codes can be found at http://wiki.ihe.net/index.php/IHE_Format_Codes.

* Paramedicine Care Summary – Clinical Subset (PCS-CS)
* Paramedicine Care Summary – Complete Report (PCS-CR)


### 1:X.6.2 LOINC Code
The LOINC code for this document is 67796-3 EMS patient care report

### 1:X.6.3 Standards
* [HL7 CDA Release 2.0](http://www.hl7.org/documentcenter/public/standards/dstu/CDAR2_IG_PROCNOTE_DSTU_R1_2010JUL.zip)
* [HL7 CDA® R2 Implementation Guide International Patient Summary STU Release 1](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=483)
* [SNOMED International](http://www.snomed.org/snomed-ct/get-snomed-ct)
* [LOINC](http://www.regenstrief.org/medinformatics/loinc/)
* [ISO/DIS 27269 Health informatics — The international patient summary](https://www.iso.org/standard/79491.html)
* [HL7 Version 3 Domain Analysis Model, Emergency Medical Services, Release 1](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=421)
* [HL7 version 3 Domain Information Model; Emergency Model Services, release 1](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=302 )
* [FHIR R4](http://hl7.org/fhir/R4/)

### 1:X.6.4 Specification

This specification is fully deffined at this published URL (http://build.fhir.org/ig/IHE/PCC.APS/branches/master/artifacts.html)


Vital Signs 
The following Vital signs Should be references within the Vital Signs section of the composition:


| Code 	    | Code System | Description	| ValueType	| Value Units	|
|-----------|-------------|-------------|-----------|---------------|
| 8480-6    | LOINC       | [Systolic Blood Pressure](http://hl7.org/fhir/StructureDefinition/bp)           |           |               |
| 8462-4    | LOINC       | [Diastolic Blood Pressure](http://hl7.org/fhir/StructureDefinition/bp)            |           |               |
| 85354-9   | LOINC       | [Blood pressure systolic and diastolic](http://hl7.org/fhir/StructureDefinition/bp)           |           |               |
| 8478-0    | LOINC       | Mean Arterial Pressure           |           |               |
| 8310-5    | LOINC       | [Body Temperature](http://hl7.org/fhir/StructureDefinition/bodytemp)           |           |               |
| 72089-6   | LOINC       | Stroke Score            |           |               |
| 8867-4    | LOINC       | [Heart Rate](http://hl7.org/fhir/StructureDefinition/heartrate)            |           |               |
| 67670-0   | LOINC       | Cardiac Rhythm            |           |               |
| 19889-5   | LOINC       | END TITLE CARBON DIOXIDE (ETCO2)           |           |               |
| 2708-6    | LOINC       | [Pulse Oximetry(SPO2)](http://hl7.org/fhir/StructureDefinition/oxygensat)           |           |               |
| 19911-7   | LOINC       | CARBON MONOXIDE (CO)            |           |               |
| 2339-0    | LOINC       | BLOOD GLUCOSE LEVEL             |           |               |
| 35088-4   | LOINC       | GLASGOW COMA Scale Panel            |           |               |
| 9267-6    | LOINC       | GLASGOW COMA SCORE-EYE            |           |               |
| 9268-4    | LOINC       | GLASGOW MOTOR            |           |               |
| 9270-0    | LOINC       | GLASGOW COMA SCORE.VERBAL           |           |               |
| 9269-2    | LOINC       | TOTAL GLASGOW COMA SCORE            |           |               |
| 55285-1   | LOINC       | GLASGOW QUALIFIER            |           |               |
| 38208-5   | LOINC       | PAIN SCALE SCORE           |           |               |
| 80316-3   | LOINC       | PAIN SCALE TYPE           |           |               |
| 72089-6   | LOINC       | STROKE SCALE SCORE            |           |               |
| 67520-7   | LOINC       | Stroke Scale Score Interpretation             |           |               |
| 67521-5   | LOINC       | STROKE SCALE TYPE            |           |               |
| XXX       | LOINC       | APGAR Generic           |           |               |
| 48334-7   | LOINC       | APGAR 1 MINUTE            |           |               |
| 48333-9   | LOINC       | APGAR 5 MINUTE            |           |               |
| 48332-1   | LOINC       | APGAR 10 MINUTE            |           |               |
| 80341-1   | LOINC       | RESPIRATORY EFFORT             |           |               |
| 67775-7   | LOINC       | RESPONSIVENESS ASSESSMENT AT FIRST ENCOUNTER           |           |               |
| 9279-1    | LOINC       | [Respiratory Rate](http://hl7.org/fhir/StructureDefinition/resprate)            |           |               |
| 8302-2    | LOINC       | [Body Height](http://hl7.org/fhir/StructureDefinition/bodyheight)              |           |               |
| 8306-3    | LOINC       | Body Length              |           |               |
| 29463-7   | LOINC       | [Body Weight](http://hl7.org/fhir/StructureDefinition/bodyweight)              |           |               |
| 85353-1   | LOINC       | [Vital Signs Panel](http://hl7.org/fhir/StructureDefinition/vitalspanel)            |           |               |
| 273885003 | SNOMED-CT   | Revised Trauma Score            |           |               |
| 8884-9    | LOINC       | Heart Rate Rhythm            |           |               |


The Method of Measurement SHALL be included in the Vital Signs Observation for the following vital signs:
•	Systolic Blood Pressure
•	Diastolic Blood Pressure
•	Mean Arterial Pressure
•	Temperature
•	Stroke Score
•	 and Heart Rate (if LOINC value 8886-4 is designated).
Cardiac Rhythm

the following assessment sections/panles should be documented 
Skin Assessment
Head Assessment
Face Assessment
Neck Assessment
Heart Assessment
Abdomen Assessment
Pelvis/Genitourinary Assessment
Back and Spine Assessment
Extremities Assessment
Eye Assessment
    80310-6  Pupil assessment panel
Lung Assessment
Chest Assessment
Mental Status Assessment
Neurological Assessment
Wound assessment panel
Pain assessment panel
acuitty assessment 11283-9 R ACUITY ASSESSMENT


Stroke/CVA Symptoms Resolved


functional Status scales 
pain scale 
Physical Function Section 


airway assessment panel
breathing assessment panel
circulation assessment panel 
disability assessment panel


46012-1 Panel Modes of transfer

Intravenous Fluids Administered
[Cardiac Rhythm]()
[ECGType]()
[ECGInterpretationMethod]()
[SystolicBloodPressure](http://hl7.org/fhir/StructureDefinition/bp)
[DiastolicBloodPressure](http://hl7.org/fhir/StructureDefinition/bp)
[Mean Arterial Pressure](http://hl7.org/fhir/StructureDefinition/bp)
[HeartRate](http://hl7.org/fhir/StructureDefinition/heartrate)
[PulseOximetry](http://hl7.org/fhir/StructureDefinition/oxygensat)
[HeartRateRhythm]()
[RespiratoryRate](http://hl7.org/fhir/StructureDefinition/resprate)
[Respiratory Effort]()
[End Tidal Carbon Dioxide (ETCO2)]()
[Carbon Monoxide (CO)]()
[BloodGlucoseLevel]()
[GlasgowComaScore-Eye]()
[GlasgowComaScore-Verbal]()
[GlasgowComaScore-Motor]()
[GlasgowComaScore-Qualifier]()
[GlasgowComaScore-Total]()
[Temperature](http://hl7.org/fhir/StructureDefinition/bodytemp)
[LevelOfResponsiveness]()
[PainSeverity]()
[Pain Scale Type]()
[StrokeScaleScore]()
[StrokeScaleType]()
[ContraindicationForThrombolyticUse]()
[APGAR 1 MINUTE]()
[APGAR 5 MINUTE]()
[APGAR 10 MINUTE]()
[RevisedTraumaScore]()

Exams
The following Vital signs Should be references within the Physical Exams section of the composition:
[Body Weight](http://hl7.org/fhir/StructureDefinition/bodyweight)
[Length Based Tape Measure]()
[Skin Assessment]()
[Head Assessment]()
[Face Assessment]()
[Neck Assessment]()
[Heart Assessment]()
[Abdomen Assessment]()
[Back and Spine Assessment]()
[Extremities Assessment]()
[Eye Assessment]()
[Lung Assessment]()
[Chest Assessment]()
[Mental Status Assessment]()
[Neurological Assessment]()
[Stroke/CVA Symptoms Resolved]()

### 1:X.6.5 Conformance
N/A
