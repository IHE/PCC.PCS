Instance: ex-Patient-Elina-R-Macias-Composition-ClinicalSubset
InstanceOf: IHE_PCC_mPSC_Composition_ClinicalSubset
Usage: #example
Description: "The instance for Patient Elina R Macias Composition Clinical Subset Resource utilizing data from the NEMSIS 2023-EMS-3-FallTransport_v350 example"

* identifier = "4c0358a1-70fd-4a69-a987-5f29537c4280" 
* type = $loinc#18761-7
* category[+] = $loinc#67796-3 
* category[+] = $loinc#34133-9
* confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* language = http://tools.ietf.org/html/bcp47#en-US
* title = "mobile Paramedicine Summary of Care Clinical Subset"
* date = "2022-10-09T09:30:10-5:00"
* subject = Reference(Patient/ex-Patient-Elina-R-Macias)
* subject only Reference(IHE_PCC_mPSC_Patient)
* author[+] = Reference(Practitioner/ex-Practitioner-Ellen-Costa)
* author[+] = Reference(Deviec/ex-Patient-Elina-R-Macias-Device-Authoring-Software)
* custodian = Reference(Organization/ex-Organization-Paramedicine-Agency)
* event[careProvisioningEvent].code =  http://terminology.hl7.org/CodeSystem/v3-ActClass#PCPR
* event[careProvisioningEvent].period.start = "2022-10-09T08:10:12-5:00"
* encounter = Reference(Encounter/ex-Patient-Elina-R-Macias-Encounter)

 
* section[sectionDetailedChiefComplaint].text = "Fall"
* section[sectionDetailedChiefComplaint].entry[chiefComplaint] = Reference(Condition/ex-Problem-Elina-R-Macias-CheifComplaint)

* section[sectionPresentIllnessHx].dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable

* section[sectionProblems].entry[+] = Reference(Condition/ex-Problem-Elina-R-Macias-Hip-Injury)
* section[sectionProblems].entry[+] = Reference(Condition/ex-Problem-Elina-R-Macias-Multiple-Injury)
* section[sectionProblems].entry[+] = Reference(Condition/ex-Problem-Elina-R-Macias-Secondary-Complaint-1)
* section[sectionProblems].entry[+] = Reference(Condition/ex-Problem-Elina-R-Macias-Secondary-Complaint-2)

* section[sectionMedications].entry[medicationStatement] = Reference(MedicationStatement/ex-Patient-Elina-R-Macias-MedicationStatement-Warfarin)

* section[sectionAllergies].entry[allergyOrIntolerance][+] = Reference(AllergyIntolerance/ex-Allergies-Elina-R-Macias-Penicillin)
* section[sectionAllergies].entry[allergyOrIntolerance][+] = Reference(AllergyIntolerance/ex-Allergies-Elina-R-Macias-Aspirin)
* section[sectionAllergies].entry[allergyOrIntolerance][+] = Reference(AllergyIntolerance/ex-Allergies-Elina-R-Macias-Acetaminophen)
* section[sectionAllergies].entry[allergyOrIntolerance][+] = Reference(AllergyIntolerance/ex-Allergies-Elina-R-Macias-Remdesivir)
* section[sectionAllergies].entry[allergyOrIntolerance][+] = Reference(AllergyIntolerance/ex-Allergies-Elina-R-Macias-Cats)
* section[sectionAllergies].entry[allergyOrIntolerance][+] = Reference(AllergyIntolerance/ex-Allergies-Elina-R-Macias-Apples)

* section[sectionPastIllnessHx].dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown 

* section[sectionProceduresHx].dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown 
  
* section[sectionImmunizations].entry[immunization][+] = Reference(Immunization/ex-Patient-Elina-R-Macias-Immunization-TDaP)
* section[sectionImmunizations].entry[immunization][+] = Reference(Immunization/ex-Patient-Elina-R-Macias-Immunization-Influenza-Seasonal)
* section[sectionImmunizations].entry[immunization][+] = Reference(Immunization/ex-Patient-Elina-R-Macias-Immunization-MMR)
* section[sectionImmunizations].entry[immunization][+] = Reference(Immunization/ex-Patient-Elina-R-Macias-Immunization-Other-NotListed)


* section[sectionReviewOfSystems].entry[+] = Reference(Observation/ex-Observation-Elina-R-Macias-Last-Known-Well)

* section[sectionAssessments].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Assessments-GlasgowComaScore-1)
* section[sectionAssessments].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Assessments-GlasgowComaScore-2)
* section[sectionAssessments].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Assessments-GlasgowComaScore-3)
* section[sectionAssessments].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Assessments-GlasgowComaScore-4)
* section[sectionAssessments].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Acuity-2-Initial)
* section[sectionAssessments].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Acuity-1-Dispatch)
* section[sectionAssessments].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Acuity-2-Final)



* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Systolic-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Diastolic-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-HeartRate-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PulseOximetry-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PulseRhythm-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryRate-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryEffort-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Carbon-Monoxide-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Blood-Glucose-Level-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Temperature-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Estimated-Weight-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PainSeverity-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-AVPU-1)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Systolic-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Diastolic-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-HeartRate-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PulseOximetry-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PulseRhythm-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryRate-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryEffort-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Carbon-Monoxide-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Blood-Glucose-Level-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Temperature-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PainSeverity-2)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Systolic-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Diastolic-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-HeartRate-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PulseOximetry-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PulseRhythm-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryRate-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryEffort-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Carbon-Monoxide-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Blood-Glucose-Level-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Temperature-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PainSeverity-3)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Systolic-4)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-BloodPressure-Diastolic-4)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-HeartRate-4)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PulseOximetry-4)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PulseRhythm-4)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryRate-4)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-RespiratoryEffort-4)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Carbon-Monoxide-4)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Blood-Glucose-Level-4)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-Temperature-4)
* section[sectionVitalSigns].entry[vitalSign][+] = Reference(Observation/ex-Patient-Elina-R-Macias-VitalSigns-PainSeverity-4)


* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Skin)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Head)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Face)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Neck)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Heart)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Abdomen)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Pelvis-and-Genitourinary-1)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Pelvis-and-Genitourinary-2)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Pelvis-and-Genitourinary-3)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Back-and-Spine)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Extremities)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Extremities-Foot-1)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Extremities-Foot-2)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Extremities-Foot-3)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Eye)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Lungs)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Chest-Anterior)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Chest-Posterior)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Nervous-System)
* section[sectionCodedDetailPhysicalExamination].entry[+] = Reference(Observation/ex-Patient-Elina-R-Macias-Physical-Findings-Mental-Status)


* section[sectionTreatment].section[proceduresPerformed].entry[+] = Reference(Procedure/ex-Procedure-Elina-R-Macias-External-Warming)
* section[sectionTreatment].section[proceduresPerformed].entry[+] = Reference(Procedure/ex-Procedure-Elina-R-Macias-Informing-Doctor)
* section[sectionTreatment].section[proceduresPerformed].entry[+] = Reference(Procedure/ex-Procedure-Elina-R-Macias-Catheterisation-Of-Vein)
* section[sectionTreatment].section[proceduresPerformed].entry[+] = Reference(Procedure/ex-Procedure-Elina-R-Macias-Application-Of-Splint)
* section[sectionTreatment].section[proceduresPerformed].entry[+] = Reference(Procedure/ex-Procedure-Elina-R-Macias-Moving-Patient-Stretcher)
* section[sectionTreatment].entry[+] = Reference(Observation/ex-Observation-Elina-R-Macias-BarriersTocare-Language)
* section[sectionTreatment].entry[+] = Reference(Observation/ex-Observation-Elina-R-Macias-BarriersTocare-HearingImpaired)


* section[sectionTreatment].section[medicationsAdministered].entry = Reference(MedicationAdministration/ex-MedicationAdministration-Elina-R-Macias-Morphine)

* section[sectionInjuryIncidentDescription].entry[patientActivity][+] = Reference(Observation/ex-Observation-Elina-R-Macias-Activity-Laundry)
* section[sectionInjuryIncidentDescription].entry[patientActivity][+] = Reference(Observation/ex-Observation-Elina-R-Macias-Activity-Vacuuming)
* section[sectionInjuryIncidentDescription].entry[injuryMechanism] = Reference(Observation/ex-Observation-Elina-R-Macias-Mechanism-Of-Injury)
* section[sectionInjuryIncidentDescription].entry[heightOfFall] = Reference(Observation/ex-Observation-Elina-R-Macias-Height-of-Fall)

