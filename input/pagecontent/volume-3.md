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

[Cardiac Rhythm]()
[ECGType]()
[ECGInterpretationMethod]()
[SystolicBloodPressure]()
[DiastolicBloodPressure]()
[Mean Arterial Pressure]()
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
