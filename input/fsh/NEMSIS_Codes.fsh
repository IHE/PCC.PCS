CodeSystem:  NEMSIS
Title: "NEMSIS"
Description: "some useful description"
Id: NEMSIS
* #2223001	"Emergent (Immediate Response)"
* #2223003	"Emergent Downgraded to Non-Emergent"
* #2223005	"Non-Emergent"
* #2223007	"Non-Emergent Upgraded to Emergent"


ValueSet: NEMSIS_eResponse_TypeOfServiceRequested_VS
Description:  "The type of service or category of service requested of the EMS Agency responding for this specific EMS event."
Id: NEMSIS.eResponse.TypeofServiceRequested.VS
* NEMSIS#2205001	"Emergency Response (Primary Response Area)"
* NEMSIS#2205003	"Emergency Response (Intercept)"
* NEMSIS#2205009	"Emergency Response (Mutual Aid)"
* NEMSIS#2205005	"Hospital-to-Hospital Transfer"
* NEMSIS#2205015	"Hospital to Non-Hospital Facility Transfer"
* NEMSIS#2205017	"Non-Hospital Facility to Non-Hospital Facility Transfer"
* NEMSIS#2205019	"Non-Hospital Facility to Hospital Transfer"
* NEMSIS#2205007	"Other Routine Medical Transport"
* NEMSIS#2205011	"Public Assistance"
* NEMSIS#2205013	"Standby"
* NEMSIS#2205021	"Support Services"
* NEMSIS#2205023	"Non-Patient Care Rescue/Extrication"
* NEMSIS#2205025	"Crew Transport Only"
* NEMSIS#2205027	"Transport of Organs or Body Parts"
* NEMSIS#2205029	"Mortuary Services"
* NEMSIS#2205031	"Mobile Integrated Health Care Encounter"
* NEMSIS#2205033	"Evaluation for Special Referral/Intake Programs"
* NEMSIS#2205035	"Administrative Operations"

ValueSet: NEMSIS_eResponse_ResponseMode_VS
Description:  "The indication whether the response was emergent or non-emergent. An emergent response is an immediate response."
Id: NEMSIS.eResponse.ResponseMode.VS
* NEMSIS#2223001 "Emergent (Immediate Response)"
* NEMSIS#2223003 "Emergent Downgraded to Non-Emergent"
* NEMSIS#2223005 "Non-Emergent"
* NEMSIS#2223007 "Non-Emergent Upgraded to Emergent"

ValueSet: NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS
Description:  "The documentation of response mode techniques used for this EMS response."
Id: NEMSIS.eResponse.AdditionalResponseModeDescriptors.VS
* NEMSIS#2224001	"Intersection Navigation-Against Normal Light Patterns"
* NEMSIS#2224003	"Intersection Navigation-With Automated Light Changing Technology"
* NEMSIS#2224005	"Intersection Navigation-With Normal Light Patterns"
* NEMSIS#2224007	"Scheduled"
* NEMSIS#2224009	"Speed-Enhanced per Local Policy"
* NEMSIS#2224011	"Speed-Normal Traffic"
* NEMSIS#2224013	"Unscheduled"
* NEMSIS#2224015	"Lights and Sirens"
* NEMSIS#2224017	"Lights and No Sirens"
* NEMSIS#2224019	"No Lights or Sirens"
* NEMSIS#2224021	"Initial No Lights or Sirens, Upgraded to Lights and Sirens"
* NEMSIS#2224023	"Initial Lights and Sirens, Downgraded to No Lights or Sirens"

ValueSet: NEMSIS_ePayment_CMSServiceLevel_VS
Description:  "The CMS service level for this EMS encounter."
Id: NEMSIS.ePayment.CMSServiceLevel.VS
* NEMSIS#2650001	"ALS, Level 1"
* NEMSIS#2650003	"ALS, Level 1 Emergency"
* NEMSIS#2650005	"ALS, Level 2"
* NEMSIS#2650007	"BLS"
* NEMSIS#2650009	"BLS, Emergency"
* NEMSIS#2650011	"Fixed Wing (Airplane)"
* NEMSIS#2650013	"Paramedic Intercept"
* NEMSIS#2650015	"Specialty Care Transport"
* NEMSIS#2650017	"Rotary Wing (Helicopter)"

ValueSet: NEMSIS_ePayment_ResponseUrgency_VS
Description:  "The urgency in which the EMS agency began to mobilize resources for this EMS encounter."
Id: NEMSIS.Payment.ResponseUrgency.VS
* NEMSIS#2640001	"Immediate"
* NEMSIS#2640003	"Non-Immediate"

ValueSet: NEMSIS_eScene_TriageClassificationforMCIPatient_VS
Description:  "The color associated with the initial triage assessment/classification of the MCI patient."
Id: NEMSIS.eResponse.TriageClassificationforMCIPatient.VS
* NEMSIS#2708001	"Red - Immediate"
* NEMSIS#2708003	"Yellow - Delayed"
* NEMSIS#2708005	"Green - Minimal (Minor)"
* NEMSIS#2708007	"Gray - Expectant"
* NEMSIS#2708009	"Black - Deceased"
* NEMSIS#7701001 	"Not Applicable"
* NEMSIS#7701003 	"Not Recorded"

ValueSet: NEMSIS_eScene_MassCasualtyIncident_VS
Description:  "Indicator if this event would be considered a mass casualty incident (overwhelmed existing EMS resources)."
Id: NEMSIS.eScene.MassCasualtyIncident.VS
* NEMSIS#7701001	"Not Applicable"
* NEMSIS#7701003	"Not Recorded"
* NEMSIS#9922001	"No"
* NEMSIS#9922003	"Unknown"
* NEMSIS#9922005	"Yes"

ValueSet: NEMSIS_eSituation_PossibleInjury_VS
Description:  "Indication whether or not there was an injury."
Id: NEMSIS.eSituation.PossibleInjury.VS
* NEMSIS#9922001	"No"
* NEMSIS#9922003	"Unknown"
* NEMSIS#9922005	"Yes"	
* NEMSIS#7701001	"Not Applicable"
* NEMSIS#7701003	"Not Recorded"

ValueSet: NEMSIS_eHistory_BarriersToPatientCare_VS
Description:  "Indication of whether or not there were any patient specific barriers to serving the patient at the scene."
Id: NEMSIS.eHistory.BarriersToPatientCare.VS
* NEMSIS#3101001	"Cultural, Custom, Religious"
* NEMSIS#3101003	"Developmentally Impaired"
* NEMSIS#3101005	"Hearing Impaired"
* NEMSIS#3101007	"Language"
* NEMSIS#3101009	"None Noted"
* NEMSIS#3101011	"Obesity"
* NEMSIS#3101013	"Physical Barrier (Unable to Access Patient)"
* NEMSIS#3101015	"Physically Impaired"
* NEMSIS#3101017	"Physically Restrained"
* NEMSIS#3101019	"Psychologically Impaired"
* NEMSIS#3101021	"Sight Impaired"
* NEMSIS#3101023	"Speech Impaired"
* NEMSIS#3101025	"Unattended or Unsupervised (including minors)"
* NEMSIS#3101027	"Unconscious"
* NEMSIS#3101029	"Uncooperative"
* NEMSIS#3101031	"State of Emotional Distress"
* NEMSIS#3101033	"Alcohol Use, Suspected"
* NEMSIS#3101035	"Drug Use, Suspected"
* NEMSIS#7701001 	"Not Applicable"
* NEMSIS#7701003 	"Not Recorded"

ValueSet: NEMSIS_ePayment_ResponseUrgency_VS
Description:  "IThe CMS service level for this EMS encounter."
Id: NEMSIS.ePayment.ResponseUrgency.VS
* NEMSIS#2640001	"Immediate"
* NEMSIS#2640003	"Non-Immediate"


ValueSet: NEMSIS_ePayment_CMSServiceLevel_VS
Description:  "IThe CMS service level for this EMS encounter."
Id: NEMSIS.ePayment.CMSServiceLevel.VS
* NEMSIS#2650001	"ALS, Level 1"
* NEMSIS#2650003	"ALS, Level 1 Emergency"
* NEMSIS#2650005	"ALS, Level 2"
* NEMSIS#2650007	"BLS"
* NEMSIS#2650009	"BLS, Emergency"
* NEMSIS#2650011	"Fixed Wing (Airplane)"
* NEMSIS#2650013	"Paramedic Intercept"
* NEMSIS#2650015	"Specialty Care Transport"
* NEMSIS#2650017	"Rotary Wing (Helicopter)"
* NEMSIS#7701001 	"Not Applicable"
* NEMSIS#7701003 	"Not Recorded"

ValueSet: NEMSIS_eCrew_CrewMemberLevel_VS
Description:  "The functioning level of the crew member ID during this EMS patient encounter."
Id: NEMSIS.eCrew.CrewMemberLevel.VS
* NEMSIS#9925001	"Advanced Emergency Medical Technician (AEMT)"
* NEMSIS#9925002	"Emergency Medical Technician - Intermediate"
* NEMSIS#9925003	"Emergency Medical Responder (EMR)"
* NEMSIS#9925005	"Emergency Medical Technician (EMT)"
* NEMSIS#9925007	"Paramedic"
* NEMSIS#9925023	"Other Healthcare Professional"
* NEMSIS#9925025	"Other Non-Healthcare Professional"
* NEMSIS#9925027	"Physician"
* NEMSIS#9925029	"Respiratory Therapist"
* NEMSIS#9925031	"Student"
* NEMSIS#9925033	"Critical Care Paramedic"
* NEMSIS#9925035	"Community Paramedicine"
* NEMSIS#9925037	"Nurse Practitioner"
* NEMSIS#9925039	"Physician Assistant"
* NEMSIS#9925041	"Licensed Practical Nurse (LPN)"
* NEMSIS#9925043	"Registered Nurse"
* NEMSIS#7701001	"Not Applicable"
* NEMSIS#7701003	"Not Recorded"
* NEMSIS#7701005	"Not Reporting"


ValueSet: NEMSIS_eCrew_CrewMemberResponseRole_VS
Description:  "The role(s) of the crew member during response, at scene treatment, and/or transport."
Id: NEMSIS.eCrew.CrewMemberResponseRole.VS
* NEMSIS#2403001	"Driver/Pilot-Response"
* NEMSIS#2403003	"Driver/Pilot-Transport"
* NEMSIS#2403005	"Other"
* NEMSIS#2403007	"Other Patient Caregiver-At Scene"
* NEMSIS#2403009	"Other Patient Caregiver-Transport"
* NEMSIS#2403011	"Primary Patient Caregiver-At Scene"
* NEMSIS#2403013	"Primary Patient Caregiver-Transport"
* NEMSIS#7701001	"Not Applicable"
* NEMSIS#7701003	"Not Recorded"
* NEMSIS#7701005	"Not Reporting"

ValueSet: NEMSIS_eDispatch_DispatchReason_VS
Description:  "The dispatch reason reported to the responding unit."
Id: NEMSIS.eDispatch.DispatchReason.VS
* NEMSIS#2301001	"Abdominal Pain/Problems"
* NEMSIS#2301003	"Allergic Reaction/Stings"
* NEMSIS#2301005	"Animal Bite"
* NEMSIS#2301007	"Assault"
* NEMSIS#2301009	"Automated Crash Notification"
* NEMSIS#2301011	"Back Pain (Non-Traumatic)"
* NEMSIS#2301013	"Breathing Problem"
* NEMSIS#2301015	"Burns/Explosion"
* NEMSIS#2301017	"Carbon Monoxide/Hazmat/Inhalation/CBRN"
* NEMSIS#2301019	"Cardiac Arrest/Death"
* NEMSIS#2301021	"Chest Pain (Non-Traumatic)"
* NEMSIS#2301023	"Choking"
* NEMSIS#2301025	"Convulsions/Seizure"
* NEMSIS#2301027	"Diabetic Problem"
* NEMSIS#2301029	"Electrocution/Lightning"
* NEMSIS#2301031	"Eye Problem/Injury"
* NEMSIS#2301033	"Falls"
* NEMSIS#2301035	"Fire"
* NEMSIS#2301037	"Headache"
* NEMSIS#2301039	"Healthcare Professional/Admission"
* NEMSIS#2301041	"Heart Problems/AICD"
* NEMSIS#2301043	"Heat/Cold Exposure"
* NEMSIS#2301045	"Hemorrhage/Laceration"
* NEMSIS#2301047	"Industrial Accident/Inaccessible Incident/Other Entrapments (Non-Vehicle)"
* NEMSIS#2301049	"Medical Alarm"
* NEMSIS#2301051	"No Other Appropriate Choice"
* NEMSIS#2301053	"Overdose/Poisoning/Ingestion"
* NEMSIS#2301055	"Pandemic/Epidemic/Outbreak"
* NEMSIS#2301057	"Pregnancy/Childbirth/Miscarriage"
* NEMSIS#2301059	"Psychiatric Problem/Abnormal Behavior/Suicide Attempt"
* NEMSIS#2301061	"Sick Person"
* NEMSIS#2301063	"Stab/Gunshot Wound/Penetrating Trauma"
* NEMSIS#2301065	"Standby"
* NEMSIS#2301067	"Stroke/CVA"
* NEMSIS#2301069	"Traffic/Transportation Incident"
* NEMSIS#2301071	"Transfer/Interfacility/Palliative Care"
* NEMSIS#2301073	"Traumatic Injury"
* NEMSIS#2301075	"Well Person Check"
* NEMSIS#2301077	"Unconscious/Fainting/Near-Fainting"
* NEMSIS#2301079	"Unknown Problem/Person Down"
* NEMSIS#2301081	"Drowning/Diving/SCUBA Accident"
* NEMSIS#2301083	"Airmedical Transport"
* NEMSIS#2301085	"Altered Mental Status"
* NEMSIS#2301087	"Intercept"
* NEMSIS#2301089	"Nausea"
* NEMSIS#2301091	"Vomiting"

ValueSet: NEMSIS_eSituation_PatientAcuity_VS
Description:  "The acuity of the patient's condition upon EMS arrival at the scene."
Id: NEMSIS.eSituation.InitialPatientAcuity.VS
* NEMSIS#2813001	"Critical (Red)"
* NEMSIS#2813003	"Emergent (Yellow)"
* NEMSIS#2813005	"Lower Acuity (Green)"
* NEMSIS#2813007	"Dead without Resuscitation Efforts (Black)"
* NEMSIS#2813009	"Non-Acute/Routine"

ValueSet: NEMSIS_eSituation_PatientActivity_VS
Description:  "The activity the patient was involved in at the time the patient experienced the onset of symptoms or experienced an injury."
Id: NEMSIS.eSituation.PatientActivity.VS
* NEMSIS#7701005	"Not Reporting"
* NEMSIS#7701001	"Not Applicable"
* NEMSIS#7701003	"Not Recorded"

ValueSet: NEMSIS_eSituation_Date/TimeLastKnownWell_VS
Description:  "The estimated date and time the patient was last known to be well or in their usual state of health. This is described or estimated by the patient, family, and/or bystanders."
Id: NEMSIS.eSituation.Date/TimeLastKnownWell.VS
* NEMSIS#7701001	"Not Applicable"
* NEMSIS#7701003	"Not Recorded"
* NEMSIS#8801023	"Unable to Complete"

ValueSet: NEMSIS_eHistory_Alcohol/DrugUseIndicators_VS
Description:  "The estimated date and time the patient was last known to be well or in their usual state of health. This is described or estimated by the patient, family, and/or bystanders."
Id: NEMSIS.eHistory.Alcohol/DrugUseIndicators.VS
* NEMSIS#7701005	"Not Reporting"
* NEMSIS#7701001	"Not Applicable"
* NEMSIS#7701003	"Not Recorded"
* NEMSIS#8801023	"Unable to Complete"
* NEMSIS#3117001	"Alcohol Containers/Paraphernalia at Scene"
* NEMSIS#3117003	"Drug Paraphernalia at Scene"
* NEMSIS#3117005	"Patient Admits to Alcohol Use"
* NEMSIS#3117007	"Patient Admits to Drug Use"
* NEMSIS#3117009	"Positive Level known from Law Enforcement or Hospital Record"
* NEMSIS#3117013	"Physical Exam Indicates Suspected Alcohol or Drug Use"

ValueSet: NEMSIS_eSituation_Work-RelatedIllness/Injury_VS
Description:  "Indication of whether or not the illness or injury is work related."
Id: NEMSIS.eSituation.Work-RelatedIllness/Injury.VS
* NEMSIS#7701005	"Not Reporting"
* NEMSIS#7701001	"Not Applicable"
* NEMSIS#7701003	"Not Recorded"
* NEMSIS#9922001	"No"
* NEMSIS#9922003	"Unknown"
* NEMSIS#9922005	"Yes"