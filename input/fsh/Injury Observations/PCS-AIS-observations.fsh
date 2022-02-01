Profile:        Abbreviated-Injury-Scale-panel-AAAM
Parent:         Observation
Id:             Abbreviated.Injury.Scale.panel.AAAM
Title:          "Abbreviated Injury Scale panel AAAM"
Description:    "Contains the observations for the Abbreviated Injury Scale (AIS©) predot code [LOINC:75890-4], AIS severity score [LOINC:75891-2], and AIS version code [LOINC:76066-0]. The AIS version must be reported along with the AIS severity score in order to accurately interpret the score."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#76067-8 
* value[x] only valueCodeableConcept
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1
//* hasMember Reference(Abbreviated_Injury_Scale_severity_score_AAAM and AIS_predot_code and AIS_version)
//Note: verify if this is the right method for doing an observation panel


Profile:        Abbreviated_Injury_Scale_severity_score_AAAM
Parent:         Observation
Id:             Abbreviated.Injury.Scale.severity.score.AAAM
Title:          "Abbreviated Injury Scale severity score AAAM"
Description:    "The Abbreviated Injury Scale (AIS©) predot code [LOINC:75890-4] is used to determine the AIS severity score, a 6 point ordinal scale where 1 = minor, 2 = moderate, 3 = serious, 4 = severe, 5 = critical, and 6 = maximal (injury is currently untreatable). The AIS severity score indicates the relative risk of "threat to life" in an average person who sustains the AIS coded injury as his or her only injury."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#75891-2
* value[x] only valueCodeableConcept
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1
* hasMember Reference(AIS_version and AIS_predot_code)



Profile:        AIS_predot_code
Parent:         Observation
Id:             AIS.Predot.Code
Title:          "AIS Predot Code"
Description:    "The Abbreviated Injury Scale (AIS©) predot code that reflects the patient's injuries. The predot code is the six digits preceding the decimal point of an associated AIS severity code, shown as 12(34)(56).7 where 1 = body region, 2 = type of anatomical structure, 3,4 = specific anatomical structure, 5,6 = level of injury and 7 = severity score based on predot code. For example, a femoral shaft fracture may be coded as 851814.3 where 851814 if the numerical identifier (predot code) and 3 is the AIS severity score [LOINC:75891-2]. The predot code is further defined as 8 = Body Region: Lower Extremity, 5 = Type of Anatomic Structure: Skeletal, 18 = Specific Anatomic Structure: Femur, and 14 = Level of injury: Shaft."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#75890-4
* value[x] only valueCodeableConcept
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1


Profile:        AIS_version
Parent:         Observation
Id:             AIS.Version
Title:          "AIS version"
Description:    "This term is used to report the Abbreviate Injury Scale (AIS©) version used when reporting a patient's AIS severity score [LOINC:75891-2]. The AIS versions are not interchangeable and require translation to merge."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#76066-0
* value[x] only valueInteger
* subject 1..1
* subject only Reference(Patient)
* encounter 1..1
