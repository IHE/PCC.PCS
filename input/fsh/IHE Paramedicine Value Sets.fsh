// EMS Data absent reason codes that have been taken out of some value sets - 
// Airbag type - No airbag present
ValueSet: IHE_PCC_VitalSigns_VS
Title: "IHE PCC Vital Signs Value Set"
Description: "The set of reccomended vital sign codes that can be used to represent vital signs in IHE's PCC profiles."
Id: IHE.PCC.VitalSigns.VS
* experimental = true
* codes from valueset http://hl7.org/fhir/ValueSet/observation-vitalsignresult
* exclude $loinc#9843-4 "Head Occipital-frontal circumference"
* $loinc#3141-9 "Body weight Measured"
* $loinc#8306-3 "Body height --lying"
* $loinc#8287-5 "Head Occipital-frontal circumference by Tape measure"

ValueSet: IHE_PCC_mPSC_VitalSigns_VS
Title: "IHE PCC mPSC Vital Signs Value Set"
Description: "The set of vital sign codes that can be used for vital signs captured by paramedicine providers."
Id: IHE.PCC.mPSC.VitalSigns.VS
* experimental = true
//* codes from valueset IHE_PCC_VitalSigns_VS
* $loinc#80341-1 "Respiratory Effort"
* $loinc#67775-7 "Level of responsiveness"
* $loinc#44969-4 "Heart rate rhythm palpation"
* $loinc#19889-5 "End Title Carbon Dioxide (ETCO2)"
* $loinc#19911-7 "Carbon Monoxide (CO)"
* $loinc#8884-9  "Heart Rate Rhythm"
* $loinc#2339-0  "Blood Glucose Level"
* $loinc#38208-5 "Pain severity - Reported"


ValueSet: IHE_PCC_mPSC_DataAbsentReason_VS
Title: "IHE PCC mPSC Data Absent Reason Value Set"
Description: "The set of Data Absent Reasons utilized on the mPSC profile elements."
Id: IHE.PCC.mPSC.DataAbsentReason.VS
* experimental = true
* codes from system http://terminology.hl7.org/CodeSystem/data-absent-reason
* http://terminology.hl7.org/CodeSystem/v3-NullFlavor#NI    "NoInformation"
* http://terminology.hl7.org/CodeSystem/v3-NullFlavor#NAV   "temporarily unavailable"
* http://terminology.hl7.org/CodeSystem/v3-NullFlavor#ASKU  "asked but unknown"

ValueSet: IHE_PCC_APGAR_VS
Title: "IHE PCC mPSC APGAR Assessment Type Value Set"
Description: "The set of APGAR assessment codes that can be used represent an APGAR score."
Id: IHE.PCC.APGAR.VS
* experimental = true
* $loinc#48334-7 "APGAR 1 MINUTE"
* $loinc#48333-9 "APGAR 5 MINUTE"
* $loinc#48332-1 "APGAR 10 MINUTE"
* $sct#1287344004 "Apgar score"


ValueSet: IHE_PCC_Facility_Ward_VS
Title: "IHE PCC mPSC Facility Ward Value Set"
Description: "A subset of codes documenting the Hospital or facility unit/ward."
Id: IHE.PCC.Facility.Ward.VS
* experimental = true
* $sct#309906004	"Burns unit"
// Cath -Lab 
* $sct#309907008	"Cardiac intensive care unit"
* $sct#309926000	"Gastroenterology department"
* $sct#284546000	"Hospice"
* $sct#18678000	    "Hyperbaric oxygen therapy" 
* $sct#91318002	    "Hyperbaric chamber, device"
* $sct#309904001	"Intensive care unit" 
* $sct#52668009	    "Hospital-based birthing center" 
* $sct#398156002	"Medical or surgical floor" 
* $sct#309958005	"Psychiatry department" 
* $sct#441994008	"Medical intensive care unit"
* $sct#405269005	"Neonatal intensive care unit" 
* $sct#427695007	"Newborn nursery unit" 
* $sct#309945009	"Pediatric department" 
* $sct#309910001	"Pediatric intensive care unit"
* $sct#225738002	"Operating room" 
* $sct#309989009	"Orthopedic department" 
* $sct#22232009	    "Hospital" 
* $sct#33022008	    "Hospital-based outpatient department"
* $sct#79491001	    "Hospital-based radiology facility" 
* $sct#90003000	    "Magnetic resonance imaging unit, device"
* $sct#67670006	    "Radiographic-tomographic unit, device"
* $sct#39821008	    "Positron emission tomography unit, device" 
* $sct#225747005	"X-ray department"
* $sct#309903007	"Radiotherapy department "
* $sct#309940004	"Rehabilitation department" 
* $sct#418433008	"Surgical intensive care unit" 
* $sct#89972002	    "Hospital-based outpatient oncology clinic" 
* $sct#90484001	    "Hospital-based outpatient general surgery clinic" 




ValueSet: Patient_Contact_Relationship_Roles_VS
Title: "IHE PCC Patient Contact Relationship Roles Value Set"
Description: "The roleCodes that encompas the relationships that can be had with a patient."
Id: Patient.Contact.Relationship.Roles.VS
* experimental = true
* codes from valueset http://hl7.org/fhir/ValueSet/patient-contactrelationship 
* codes from system http://terminology.hl7.org/CodeSystem/v3-RoleCode where concept is-a #_PersonalRelationshipRoleType
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#GUARD   "guardian"



ValueSet: Physical_Finding_of_Abdomen_VS
Title: "Physical Finding of Abdomen Value Set"
Description: "A subset of Finding resulting from an abdominal assessment"
Id: Physical.Finding.of.Abdomen.VS
* experimental = true
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008	        "Burn injury with charring (morphologic abnormality)"
* $sct#131148009         "Bleeding"
* $sct#50960005         "Hemorrhage"
//  OR 8573003          "Acute hemorrhage"
* $sct#48333001          "Burn injury"
* $sct#110014005	"Decapitation (disorder)"
* $sct#417893002	"Deformity (finding)"
* $sct#424329008	"Finding of skin drainage (finding)"
* $sct#125670008	"Foreign body (disorder)"
* $sct#312608009	"Laceration - injury (disorder)"
* $sct#300577008	"Finding of lesion (finding)"
* $sct#300862005	"Mass of body region (finding)"
* $sct#281900007	"No abnormality detected (finding)"
* $sct#22253000		"Pain (finding)"
* $sct#312609001	"Puncture wound - injury (disorder)"
* $sct#425322008	"Stab wound (disorder)"
* $sct#283545005	"Gunshot wound (disorder)"
* $sct#125665001	"Crushing injury (disorder)"
* $sct#65124004		"Swelling (finding)"
* $sct#125667009	"Contusion (disorder)"
* $sct#247348008	"Tenderness (finding)"
* $sct#162068007        "Abdominal distension symptom"
* $sct#249545003        "Abdominal guarding" 
* $sct#2981001          "Pulsatile mass of abdomen" 
* $sct#169564004         "Pregnant - on abdominal palpation"
* $sct#35611005         "Rebound tenderness"
* $sct#72300008         "Abdominal rigidity"

ValueSet: Physical_Finding_of_Abdomen_TargetSite_VS
Title: "Physical Finding of Abdomen Target Site Value Set"
Description: "A subset of body site locations that apply to an abdominal assessment"
Id: Physical.Finding.of.Abdomen.TargetSite.VS
* experimental = true
* $sct#302553009    "Entire abdomen" 
* $sct#68505006     "Structure of left lower quadrant of abdomen" 
* $sct#86367003     "Structure of left upper quadrant of abdomen" 
* $sct#714637002	"Structure of periumbilical region" 
* $sct#48544008     "Structure of right lower quadrant of abdomen" 
* $sct#50519007     "Structure of right upper quadrant of abdomen" 
* $sct#27947004     "Epigastric region structure"


ValueSet: Active_Advanced_Healthcare_Directives_Finding_VS
Title: "Active Advanced Healthcare Directives Findings Value Set"
Description: "The documentation of the finding of a patient having active advance directives"
Id: Active.Advance.Directive.Finding.VS
* experimental = true
* $sct#425396000	"Active advance directive with verification by family"
* $sct#425395001	"Active living will"
* $sct#425393008	"Active Durable Power of Attorney for Healthcare" 
* $sct#425397009	"Active advance directive with verification by healthcare professional" 
* $sct#425394002	"Active healthcare will" 
* $sct#310305009	"Active advance directive (copy within chart)"
* $sct#143021000119109	"Do not resuscitate status with supporting documentation" 
* $sct#734328004        "Does not have current Last Will and Testament" 
* $sct#697978002	"Provider orders for life-sustaining treatment" 


ValueSet: Airbag_Type_VS
Title: "Airbag Type Value Set"
Description: "Coded values that can be used to represent the type of airbag observed"
Id: Airbag.Type.VS
* experimental = true
* $sct#102385008   "Front airbag, device (physical object)"
* $sct#102386009   "Front driver airbag, device (physical object)"
* $sct#102387000   "Front passenger airbag, device (physical object)"
* $sct#102388005   "Side airbag, device (physical object)"
* $sct#102384007   "Motor vehicle airbag, device (physical object)"


ValueSet: Airway_Device_Confirmation_Method_VS
Title: "Airway Device Confirmation Method Value Set"
Description: "Confirmation method for airway device placement"
Id: Airway.Device.Confirmation.Method.VS
* experimental = true
* $sct#37931006     "Auscultation" 
* $sct#14766002     "Aspiration" 
* $sct#428482009	"colorimetric respired carbon dioxide monitoring" 
* $sct#425543005	"Digital respired carbon dioxide monitoring" 
* $sct#6427007      "Chest expansion" 


ValueSet: Airway_Device_Type_VS
Title: "Airway Device Type Value Set"
Description: "Coded values that can be used to represent the type of devices used for airway management"
Id: Airway.Device.Type.VS
* experimental = true
* $sct#429375002	"Esophageal tracheal double lumen supraglottic airway device" 
//* $sct#450571000124105	"Single lumen supraglottic airway device" 
* $sct#713535007    "Supraglottic airway"
* $sct#257268009	"Laryngeal mask"
* $sct#129121000	"Tracheostomy tube, device" 
* $sct#448348008   "Airway exchange catheter"
* $sct#714742004   "Bronchoscope intubation catheter with ventilation connector"
* $sct#398105006   "Endobronchial tube"
* $sct#440625007   "Double lumen tracheobronchial tube"
* $sct#26412008    "Endotracheal tube"
* $sct#449301000   "Endotracheal ventilation catheter"
* $sct#398178009   "Lighted stylette"
* $sct#61330002    "Nasopharyngeal airway device"
* $sct#32667006    "Oropharyngeal airway device"
* $sct#360003007   "Guedel airway"
* $sct#713535007   "Supraglottic airway"
* $sct#257307004   "Esophageal obturator airway"
* $sct#398251004   "Intubating laryngeal mask airway"
* $sct#714741006   "Intubating laryngeal mask with visualization screen"
* $sct#714740007   "Laryngeal mask airway with posterior cuff and drainage lumen"
* $sct#713536008   "Laryngeal mask with preformed cuff"
* $sct#713537004   "Reinforced laryngeal mask airway"
* $sct#426129001   "Transtracheal oxygen catheter"
* $sct#463327000   "Antimicrobial endotracheal tube"
* $sct#309801005   "Armored endotracheal tube"
* $sct#467766005   "Cuff-suction endotracheal tube"
* $sct#704923004   "Electromyographic endotracheal tube"
* $sct#430553000   "Endotracheal tube with bronchial blocker"
* $sct#449298004   "Endotracheal tube with directional tip"
* $sct#700604003   "High-frequency ventilation endotracheal tube"
* $sct#470227004   "Laser-resistant endotracheal tube"
* $sct#420673005   "Magill type endotracheal tube"
* $sct#420855005   "Magill type nasal endotracheal tube"
* $sct#420344001   "Magill type oral endotracheal tube"
* $sct#309803008   "Oxford endotracheal tube"
* $sct#1187321001  "Oxygen insufflation endotracheal tube"
* $sct#420977008   "Preformed endotracheal tube"
* $sct#309802003   "RAE endotracheal tube"
* $sct#309805001   "Nasal RAE endotracheal tube"
* $sct#309804002   "Oral RAE endotracheal tube"
* $sct#870581009   "Video intubation endotracheal tube"
* $sct#360111004   "Cricothyroidotomy tube"
* $sct#470610002   "Laryngectomy tube"
* $sct#463384005   "Operative tracheostomy tube"
* $sct#464651008   "Oxygen administration transtracheal catheter"
* $sct#465608000   "Reinforced tracheostomy tube"
* $sct#1137710007  "Tracheostomy tube cannula"

ValueSet: Substance_Use_Evidence_VS
Title: "Substance Use Evidence Value Set"
Description: "the objects, observable entites, and information that indicates that the patient has used a substance."
Id: Substance.Use.Evidence.VS
* experimental = true
* $sct#704197006        "Admits alcohol use"
* $sct#28045007         "Smell of alcohol on breath"
* $sct#463792004        "Medicine bottle"
// * $sct#TBD       "Admits to Drug Use"
// * $sct#TBD       "Admits to Substance Use"



ValueSet: Barrier_To_Care_VS
Title: "Barrier To Care Value Set"
Description: "Circumstances limiting one's ability to provide care to a patient"
Id: Barrier.To.Care.VS
* experimental = true
* $sct#1400009	        "Spiritual or religious belief"
* $sct#704301008	"Cultural belief conflict"
* $sct#5294002	        "Developmental disorder"
* $sct#15188001	        "Hearing loss"
* $sct#422693009	"Language barrier"
* $sct#260413007	"None"
* $sct#414916001	"Obesity"
* $sct#32572006	        "Physical handicap" 
* $sct#386423001	"Physical restraint"
* $sct#44440005	        "Psychic conflict"
* $sct#246638009	"Interference with vision"
* $sct#29164008	        "Disturbance in speech"
* $sct#418107008	"Unconscious"
* $sct#248042003	"Uncooperative behavior"
* $sct#271596009	"Mental distress"
* $sct#415685003	"Suspected alcohol abuse"
* $sct#162591001	"Suspected drug abuse"
//suspected alcihol use or drug use should be used so these are here temporay
* $sct#288576002        "Unable to communicate"


ValueSet: Blood_Pressure_Measurement_Method_VS
Title: "Blood Pressure Measurement Method Value Set"
Description: "Technique or device used for measuring blood pressure"
Id: Blood.Pressure.Measurement.Method.VS
* experimental = true
* $sct#43770009        "Doppler device"
* $sct#262259000       "Venous line"
* $sct#261241001       "Arterial line"
* $sct#113011001       "Palpation"
* $sct#37931006        "Auscultation"
* $sct#239033002       "Digital examination"
// sct#TBD      "Blood pressure cuff, automated"

ValueSet: Pulse_Rhythm_VS
Title: "Pulse Rhythm Value Set"
Description: "Findings of the pulse rhythm"
Id: Pulse.Rhythm.VS
* experimental = true
* $sct#271637005    "Pulse irregularly irregular"
* $sct#271638000    "Pulse regularly irregular"
* $sct#248632004    "Regular intermission in pulse"



ValueSet: Cardiac_Arrest_Etiology_VS
Title: "Cardiac Arrest Etiology Value Set"
Description: "Etiology of a cardiac arrest"
Id: Cardiac.Arrest.Etiology.VS
* experimental = true
* $sct#423191000	"Cardiac arrest due to cardiac disorder" 
* $sct#424571008	"Cardiac arrest due to drowning" 
* $sct#1149222004      "Overdose"
// sct#TBD      "Cardiac Arrest due to Poisoning"
// sct#TBD      "Cardiac Arrest due to overdose"
* $sct#424390001	"Cardiac arrest caused by electrocution"
* $sct#48149007 	"Exsanguination" 
// sct#TBD      "Cardiac Arrest Due to Exsanguination"
* $sct#423168004	"Cardiac arrest due to respiratory disorder" 
* $sct#422970001	"Cardiac arrest due to trauma" 
//Suspected drug overdose (situation) (473128000) 


// TODO
ValueSet: Cardiac_Arrest_Outcome_VS
Title: "Cardiac Arrest Outcome Value Set"
Description: "Outcome of an cardiac arrest event from paramedicine encounter"
Id: Cardiac.Arrest.Outcome.VS
* experimental = true
* $sct#32750006    "Inspection"


// Cariac arrest timing?

//todo
ValueSet: Cardiac_Arrest_Witness_Role_VS
Title: "Cardiac Arrest Witness Role Value Set"
Description: "Kind of person who witnessed a cardiac arrest"
Id: Cardiac.Arrest.Witness.Role.VS
* experimental = true
// reated person value set?
* $sct#32750006    "Inspection"



ValueSet: Cardiac_Rhythm_Reading_VS
Title: "Cardiac Rhythm Readings Value Set"
Description: "Kind of rhythm found in a cardiac arrest patient"
Id: Cardiac.Rhythm.Reading.VS
* $sct#49260003	        "Idioventricular rhythm"
* $sct#397829000	"Asystole"
* $sct#251143007	"Electrocardiogram artifact" 
* $sct#49436004	        "Atrial fibrillation" 
* $sct#5370000	        "Atrial flutter" 
* $sct#270492004	"First degree atrioventricular block" 
* $sct#54016002	        "Mobitz type I incomplete atrioventricular block"
* $sct#28189009	        "Mobitz type II atrioventricular block" 
* $sct#426453001	"Electrocardiogram: paced rhythm"
* $sct#426975008	"Electrocardiogram: pulseless electrical activity"
* $sct#284470004	"Premature atrial contraction"
* $sct#427172004	"Electrocardiogram: premature ventricular contractions" 
* $sct#59118001	        "Right bundle branch block" 
* $sct#427393009	"Electrocardiogram: sinus arrhythmia"
* $sct#49710005	        "Sinus bradycardia" 
* $sct#251150006	"Sinus rhythm" 
* $sct#11092001	        "Sinus tachycardia" 
* $sct#703164000	"Acute ST segment elevation myocardial infarction of anterior wall" 
* $sct#703213009	"Acute ST segment elevation myocardial infarction of inferior wall" 
* $sct#705008001	"Anterior ST segment elevation" 
* $sct#705007006	"Inferior ST segment elevation" 
* $sct#705006002	"Lateral ST segment elevation" 
* $sct#705010004	"Posterior ST segment elevation" 
* $sct#840680009	"Acute ST segment elevation myocardial infarction due to occlusion of septal branch of anterior descending branch of left coronary artery (disorder)"
* $sct#6456007	        "Supraventricular tachycardia" 
* $sct#426761007	"Electrocardiographic supraventricular tachycardia" 
* $sct#31722008	        "Torsades de pointes" 
* $sct#426882006	"Electrocardiographic torsades de pointes" 
* $sct#707799009	"Non-shockable heart rhythm detected by automated external defibrillator" 
* $sct#704130006	"Shockable heart rhythm detected by automated external defibrillator" 
* $sct#71908006	        "Ventricular fibrillation"
* $sct#233905006	"Ventricular tachycardia with normal heart" 
* $sct#405806007	"Pulseless ventricular tachycardia" 
* $sct#868222004        "Occlusion of posterior descending branch of right coronary artery"
* $sct#840679006        "Occlusion of septal branch of anterior descending branch of left coronary artery"



ValueSet: Cardiopulmonary_Resuscitation_Type_VS
Title: "Cardiopulmonary Resuscitation Type Value Set"
Description: "Kind of procedure used for cardiopulmonary resuscitation"
Id: Cardiopulmonary.Resuscitation.Type.VS
* experimental = true
// todo
* $sct#32750006    "Inspection"
// 74596007     "Resuscitation with artificial ventilation" 
* $sct#37113006        "Mouth-to-mouth resuscitation"
* $sct#441893003       "Active compression decompression cardiopulmonary resuscitation with use of inspiratory impedance threshold device"


//todo
ValueSet: ChiefComplaint_Anatomic_Location_VS
Title: "ChiefComplaint Anatomic Location Value Set"
Description: "TBD"
Id: ChiefComplaint.Anatomic.Location.VS
* experimental = true
// todo
* $sct#32750006    "Inspection"

ValueSet: ChiefComplaint_Organ_System_VS
Title: "ChiefComplaint Organ System Value Set"
Description: "TBD"
Id: ChiefComplaint.Organ.System.VS
* experimental = true
// todo
* $sct#32750006    "Inspection"

ValueSet: Paramedicine_Treatment_Response_VS
Title: "Paramedicine Treatment Response Value Set"
Description: "the type of change in the patient's condition after a procedure, intervention, or a medication administration"
Id: Response.VS
* experimental = true
* $sct#385425000	"Improved" 
* $sct#260388006	"No status change"
* $sct#231877006	"Worse" 




// destination reason?


ValueSet: Destination_Prearrival_Activation_Type_VS
Title: "Destination Prearrival Activation Type Value Set"
Description: "The location within the hospital that the patient was taken directly by EMS"
Id: Destination.Prearrival.Activation.Type.VS
* experimental = true
// todo
* $sct#32750006    "Inspection"



// Destination Type? faciilty category value set might be just fine

// Destination Ward Kind?  faciilty type value set might be just fine

// Hospital Capability vs?

// infusion site? vascular acess?

// injury risk, triage criteria vs?


ValueSet: Disaster_Type_VS
Title: "Disaster Type Value Set"
Description: "Kind of incident resulting in or likely to result in injuries or clinically adverse events"
Id: Disaster.Type.VS
* experimental = true
// todo
* $sct#32750006    "Inspection"

// Delays?


ValueSet: Reason_For_Visit_VS
Title: "Reason For Visit Value Set"
Description: "Kind of medical problem or incident reported, subset"
Id: Reason.For.Visit.VS
* experimental = true
// todo
* $sct#32750006    "Inspection"

ValueSet: ECG_Device_Type_VS
Title: "ECG Device Type Value Set"
Description: "Kind of electrocardiogram equipment"
Id: Device.Type.VS
* experimental = true
// todo
* $sct#32750006    "Inspection"

// emd performed vs?

// EMS Level Of Service vs?


ValueSet: Medication_Administration_Device_VS
Title: "Medication Administration Device Value Set"
Description: "Kind of electrocardiogram equipment"
Id: Medication.Administration.Device.VS
* experimental = true
// todo
* $sct#425478008	"Blow by oxygen mask"
* $sct#26412008	        "Endotracheal tube, device"
* $sct#701101003	"Nasal hemostatic cannula"
* $sct#309805001	"Nasal RAE endotracheal tube"
* $sct#427591007	"Nonrebreather oxygen mask"
* $sct#463587004	"Rebreathing oxygen face mask"
* $sct#428285009	"Venturi mask"
* $sct#425447009	"Bag valve mask ventilation"
* $sct#704718009	"CPAP/BPAP oral mask"
* $sct#433296005	"Infusion pump for intravenous fluids"
* $sct#334947002	"Nebulizer" 
* $sct#446476009	"Umbilical catheter" 
* $sct#336623009       "Oxygen nasal cannula"
* $sct#464233000       "Partial-rebreathing oxygen face mask"
* $sct#465504007       "Subcutaneous injection/infusion port needle"
// new code?



// Glasgow Coma Score Special Circumstances vs?

// SNOMED AVPU?

// SNOMED medication route?

// authorization type?
// medication not given reason 


ValueSet: Paramedicine_Observation_Interpretation_VS
Title: "Paramedicine Observation Interpretation Value Set"
Description: "Interpretations of assessment scales applicable to paramedicine care"
Id: Paramedicine.Observation.Interpretation.VS
* experimental = true
* include codes from valueset http://hl7.org/fhir/ValueSet/observation-interpretation
* $sct#419984006        "Inconclusive"

ValueSet: Paramedicine_Provider_Roles_VS
Title: "Paramedicine Provider Roles Value Set"
Description: "Extension of the known provider roles in HL7 to suppor the driver role of the Paramedicine Providers."
Id: Paramedicine.Provider.Roles.VS
* experimental = true
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0286 
* $sct#236320001        "Vehicle driver"

ValueSet: Paramedicine_Provider_Types_USA_VS
Title: "Paramedicine Provider Types Value Set"
Description: "The Provider type codes added to include concepts for EMTs and other sub types of paramedicine providers in the USA. "
Id: Paramedicine.Provider.Types.USA.VS
* experimental = true
* include codes from valueset http://hl7.org/fhir/ValueSet/practitioner-role
//* $ONETSOC#29-2041.00.014721	"EMT Intermediate (Emergency Medical Technician, Intermediate) [Emergency Medical Technicians and Paramedics]"
//* $ONETSOC#29-2041.00.014725	"EMT-I/85 [Emergency Medical Technicians and Paramedics]"
//* $ONETSOC#29-2041.00.014726	"EMT-I/99 [Emergency Medical Technicians and Paramedics]"
//* $ONETSOC#53-3011.00.014718	"EMS First Responder (Emergency Medical Services First Responder) [Ambulance Drivers and Attendants, Except Emergency Medical Technicians]"
//* $ONETSOC#29-2041.00.014618	"Emergency Medical Technician, Basic (EMT, B) [Emergency Medical Technicians and Paramedics]"
//* $ONETSOC#29-2061.00.024145	"Licensed Practical Nurse (LPN) [Licensed Practical and Licensed Vocational Nurses]"


ValueSet: Length_Based_Weight_Class_VS
Title: "Length Based Weight Class Value Set"
Description: "Weight estimated by tape measure"
Id: Length.Based.Weight.Class.VS
* experimental = true
* $sct#444474005	"Broselow Luten pediatric weight estimation blue zone" 
* $sct#444503000	"Broselow Luten pediatric weight estimation green zone" 
* $sct#736023001	"Broselow Luten pediatric weight estimation gray zone" 
* $sct#444496004	"Broselow Luten pediatric weight estimation orange zone" 
* $sct#444488009	"Broselow Luten pediatric weight estimation pink zone" 
* $sct#444489001	"Broselow Luten pediatric weight estimation purple zone" 
* $sct#444471002	"Broselow Luten pediatric weight estimation red zone" 
* $sct#444504006	"Broselow Luten pediatric weight estimation white zone" 
* $sct#444505007	"Broselow Luten pediatric weight estimation yellow zone" 


ValueSet: Mechanism_Of_Injury_VS
Title: "Mechanism Of Injury Value Set"
Description: "Kind of physical phenomenon causing an injury"
Id: Mechanism.Of.Injury.VS
* experimental = true
//take in the nictiz codes too 
* $sct#3821009	    "Blunt injury" 
* $sct#48333001	    "Burn injury" 
* $sct#53568006	    "Penetrating" 

ValueSet: Respiratory_Effort_VS
Title: "Respiratory Effort Value Set"
Description: "Findings that describe the respiratory efforts of the patient."
Id: Respiratory.Effort.VS
* experimental = true
* $sct#90480005	    "Interrupted breathing"
* $sct#248583008	"Stops breathing"
* $sct#1023001	    "Apnea" 
* $sct#248549001	"Labored breathing"
* $sct#419663003	"Airway device present"
* $sct#1290338002	"Normal respiratory effort"
* $sct#271823003	"Tachypnea" 
* $sct#248581005	"Rapid shallow breathing"
* $sct#386616007	"Shallow breathing"
* $sct#430546009	"Agonal respiration"

//todo
ValueSet: Medication_Complication_VS
Title: "Medication Complication Value Set"
Description: "Kind of abnormal effect associated with a medication adeministration"
Id: Medication.Complication.VS
* experimental = true
//TBD
* $sct#53568006	    "Penetrating" 


ValueSet: Complication_Subset_VS
Title: "Complication Subset Value Set"
Description: "Kind of abnormal effect associated with a Procedure, interventon, or Medication Administration."
Id: Complication.Subset.VS
* experimental = true
* $sct#419284004       "Altered mental status"
* $sct#1023001         "Apnea"
* $sct#131148009       "Bleeding"
* $sct#386614005        "Slow shallow breathing"
// Temporary sct#TBD    "Bradypnea"
* $sct#62315008        "Diarrhea"
* $sct#1263661003      "Unintended insertion of tracheal tube into esophagus"
* $sct#371100002       "Extravasation injury"
* $sct#24184005        "Increased blood pressure"
// sct#TBD      "Hypertension following procedure"         
* $sct#1197782006      "Hyperthermia"
* $sct#16055431000119108       "Hypotension following procedure"
* $sct#386689009       "Hypothermia"
* $sct#389086002       "Hypoxia"
* $sct#735912006       "Injury due to procedure"
* $sct#417163006       "Traumatic or non-traumatic injury"
// none
* $sct#422587007       "Nausea"
// other 
* $sct#271825005       "Respiratory distress"
* $sct#3424008         "Tachycardia"
* $sct#271823003       "Tachypnea"
* $sct#422400008       "Vomiting"
* $sct#48867003        "Bradycardia"
* $sct#418290006       "Itching"
* $sct#126485001       "Urticaria"


ValueSet: Paramedicine_Vehicle_Type_VS
Title: "Paramedicine Vehicle Type Value Set"
Description: "The Types of vehicles Paramedicine services may use."
Id: Paramedicine.Vehicle.Type.VS
* experimental = true
* $sct#49122002    "Ambulance"
* $sct#73957001    "Air transport ambulance"
* $sct#32472009    "Medical helicopter"
* $sct#469799000   "All-terrain ambulance"
* $sct#1297166001  "Ambulance bus"
* $sct#465341007   "Automobile ambulance"
* $sct#1285123005  "Basic life support ambulance"
* $sct#466597001   "Boat ambulance"
* $sct#1285128001  "Emergency and resuscitation ambulance"
* $sct#44613004    "Ground transport ambulance"
* $sct#469233002   "Helicopter ambulance"
* $sct#1297113004  "Intensive care transport ambulance"
* $sct#1285124004  "Intermediate life support ambulance"
* $sct#1285126002  "Pediatric inter-hospital transportation ambulance"
* $sct#83887000    "Rescue vehicle"



ValueSet: Vehicle_Type_VS
Title: "Vehicle Type Value Set"
Description: "The Types of vehicles."
Id: Vehicle.Type.VS
* experimental = true
* $sct#705447007    "Industrial transport vehicle"
* $sct#21753002     "Aircraft, device"
* $sct#73957001     "Air transport ambulance, device"
* $sct#32472009     "Medical helicopter, device"
* $sct#261325004    "Airliner"
* $sct#47006006     "Balloon aircraft"
* $sct#36531007     "Dirigible, device"
* $sct#40353003     "Commercial fixed-wing aircraft, device"
* $sct#58068001     "Experimental aircraft, device"
* $sct#53811000     "Delta-wing aircraft, device"
* $sct#28422005     "Glider, device"
* $sct#14026005     "Hang glider, device"
* $sct#18813000     "Ultralight powered glider, device"
* $sct#1058004      "Helicopter, device"
* $sct#90335008     "Hovercraft, device"
* $sct#46274009     "Jet airplane, device"
* $sct#66373005     "Kite, device"
* $sct#261332008    "Light aircraft"
* $sct#261333003    "Military aircraft"
* $sct#63830003     "Private fixed-wing aircraft, device"
* $sct#83930005     "Propeller airplane, device"
* $sct#38988005     "Spacecraft, device"
* $sct#58222006     "Interplanetary craft, device"
* $sct#66567008     "Launch craft, device"
* $sct#84151001     "Orbiting craft, device"
* $sct#60638008     "Planetary surface craft, device"
* $sct#54752006     "Unidentified flying object, device"
* $sct#360304005    "Lift"
* $sct#464829002    "Assistive automobile person lift"
* $sct#464614002    "Assistive automobile wheelchair lift"
* $sct#464455006    "Assistive automobile wheelchair/occupant lift"
* $sct#464244008    "Assistive passenger lift"
* $sct#464286002    "Mobile solid seat lifting system seat"
* $sct#462601004    "Patient lifting system bath chair"
* $sct#462320009    "Patient lifting system divided leg sling"
* $sct#462722003    "Patient lifting system stretcher"
* $sct#463084002    "Patient lifting system toilet seat"
* $sct#466176006    "Seat lifter, power-assisted"
* $sct#465153004    "Stairlift, chair"
* $sct#464364000    "Stairlift, platform"
* $sct#467126004    "Wheelchair/occupant lift"
* $sct#303967001    "Railway vehicle"
* $sct#74812000     "Railway car, device"
* $sct#46542001     "Railway freight car, device"
* $sct#5676002      "Railway passenger car, device"
* $sct#39752002     "Railway locomotive, device"
* $sct#62193008     "Railway train, device"
* $sct#303966005    "Road traffic vehicle"
* $sct#46160005     "Motor vehicle, device"
* $sct#71783008     "Automobile, device"
* $sct#52387005     "Taxi, device"
* $sct#303970002    "Three-wheeled car"
* $sct#44613004     "Ground transport ambulance, device"
* $sct#22674006     "Motor bus, device"
* $sct#1297166001   "Ambulance bus"
* $sct#224830008    "Coach"
* $sct#224831007    "Minibus"
* $sct#48306000     "School bus, device"
* $sct#80664005     "Motor home, device"
* $sct#90748009     "Motorcycle, device"
* $sct#1285129009   "Medical emergency motorcycle"
* $sct#25139002     "Moped, device"
* $sct#224833005    "Motor scooter"
* $sct#38548008     "Streetcar, device"
* $sct#12247004     "Truck, device"
* $sct#64223007     "Dump truck, device"
* $sct#63496001     "Fork lift truck, device"
* $sct#303731003    "Heavy goods vehicle"
* $sct#303969003    "Pick-up truck"
* $sct#24439002     "Powered industrial truck, device"
* $sct#77508006     "Truck-tractor, device"
* $sct#24761008     "Truck-trailer, device"
* $sct#224832000    "Van"
* $sct#303964008    "Nonmotorized road traffic vehicle"
* $sct#90963000     "Animal drawn vehicle, device"
* $sct#56667001     "Buggy, device"
* $sct#303965009    "Horse-drawn vehicle"
* $sct#41456001     "Wagon, device"
* $sct#31493009     "Pedal cycle, device"
* $sct#70224005     "Bicycle, device"
* $sct#37299003     "Tricycle, device"
* $sct#43423007     "Unicycle, device"
* $sct#415740009    "Trailer"
* $sct#414279008    "Folding camping trailer"
* $sct#415751009    "Travel trailer recreational vehicle"
* $sct#415250009    "Recreational vehicle"
* $sct#415756004    "Truck camper"
* $sct#183239002    "Special invalid transport"
* $sct#183246006    "Invalid car"
* $sct#266738008    "Invalid transport facilities"
* $sct#281049002    "Invalid tricycle"
* $sct#183244009    "Hand powered tricycle"
* $sct#183245005    "Powered three-wheeler"
* $sct#12561005     "Watercraft, device"
* $sct#257418003    "Boat"
* $sct#261326003    "Canal boat"
* $sct#59153008     "Barge, device"
* $sct#41338002     "Catamaran, device"
* $sct#46880008     "Inboard motorboat, device"
* $sct#87985005     "Inflatable craft, device"
* $sct#102390006    "Inflatable motorized craft, device"
* $sct#102391005    "Inflatable raft, device"
* $sct#102392003    "Inflatable rowboat, device"
* $sct#25923005     "Kayak, device"
* $sct#261331001    "Lifeboat"
* $sct#261337002    "Ship's lifeboat"
* $sct#61119009     "Outboard motorboat, device"
* $sct#261334009    "Pilot boat"
* $sct#261335005    "Powered open boat"
* $sct#261336006    "Recreational powered boat"
* $sct#224671000    "River boat"
* $sct#21249000     "Rowboat, device"
* $sct#78489001     "Canoe, device"
* $sct#261328002    "Cargo vessel"
* $sct#261327007    "Bulk carrier"
* $sct#9583005      "Oil-tanker, device"
* $sct#25851002     "Ferry, device"
* $sct#91556002     "Fishing boat, device"
* $sct#261330000    "Harbor and coastal craft"
* $sct#26744008     "Ocean freighter, device"
* $sct#262044003    "Passenger vessel"
* $sct#21812002     "Ocean liner, device"
* $sct#49623006     "Powered watercraft, device"
* $sct#6662008      "Hydrofoil, device"
* $sct#102389002    "Jet ski, device"
* $sct#77081009     "Submarine, device"
* $sct#86118007     "Raft, device"
* $sct#24561005     "Sailboat, device"
* $sct#224673002    "Ship"
* $sct#39374005     "Military ship, device"
* $sct#12698003     "Surface craft, device"
* $sct#65493007     "Surfboard, device"
* $sct#257250006    "Pedestrian conveyance"
* $sct#303734006    "Cablecar "
* $sct#413816007    "Child conveyance"
* $sct#303733000    "Infant conveyance"
* $sct#257251005    "Perambulator"
* $sct#415632005    "Stroller"
* $sct#303735007    "Ski lift"
* $sct#303971003    "Nontraffic vehicle"
* $sct#303973000    "Agricultural vehicle"
* $sct#49980008     "Farm tractor, device"
* $sct#32476007     "Construction vehicle, device"
* $sct#49133004     "Bulldozer, device"
* $sct#8118007      "Crane, device"
* $sct#303972005    "Industrial vehicle"
* $sct#303974006    "Military vehicle"
* $sct#53977009     "Military mobile weapon carrier, device"
* $sct#16916003     "Tank - military vehicle"
* $sct#63958005     "Tracked personnel carrier, device"
* $sct#81826000     "All-terrain vehicle, device"
* $sct#44907005     "Four-wheeled all-terrain vehicle, device"
* $sct#7968002      "Three-wheeled all-terrain vehicle, device"
* $sct#35018000     "Heavy land transport vehicle, device"
* $sct#55121009     "Light land transport vehicle, device"
* $sct#64174005     "Snowmobile, device"

ValueSet: Location_In_Vehicle_VS
Title: "Location In Vehicle Value Set"
Description: "The seat or other locations that the patient has been found, within a vehicle."
Id: Location.In.Vehicle.VS
* experimental = true
* $sct#428922000       "Found in automobile driver seat (finding)"
* $sct#429647007       "Found in automobile passenger seat (finding)"
* $sct#428828002       "Found in automobile rear car seat (finding)"
* $sct#428431006       "Found across car seat (finding)"
* $sct#261665006       "Unknown"
// * $sct#TBD     "Found in automobile passenger seat left (finding)"
// * $sct#TBD     "Found in automobile passenger seat right (finding)"
// * $sct#TBD     "Found in automobile passenger seat middle (finding)"
// * $sct#TBD     "Found in automobile rear car seat left (finding)"
// * $sct#TBD     "Found in automobile rear car seat right (finding)"
// * $sct#TBD     "Found in automobile rear car seat middle (finding)"
// * $sct#TBD     "Found in automobile median rows seat left (finding)"
// * $sct#TBD     "Found in automobile median rows seat left (finding)"
// * $sct#TBD     "Found in automobile median rows seat left  (finding)"
// * $sct#TBD     "Found in vehicle (finding)"
// * $sct#TBD     "Found in vehicle Driver Seat  (finding)"
// * $sct#TBD     "Found in vehicle Cargo area (finding)"
// * $sct#TBD     "Found in vehicle enclosed Cargo area (finding)"
// * $sct#TBD     "Found in vehicle exposed Cargo area (finding)"
// * $sct#TBD     "Found in vehicle passenger seat (finding)"
// * $sct#TBD     "Found in enclosed vehicle passenger seat (finding)"
// * $sct#TBD     "Found in exposed vehicle passenger seat (finding)"
// * $sct#TBD     "Found riding on outside of vehicle (finding)"
// * $sct#TBD     "Found in sleeping area of a vehicle (finding)"
// * $sct#TBD     "Found in a Trailer vehicle (finding)"


ValueSet: Physical_Finding_of_Back_and_Spine_VS
Title: "Physical Finding of Back and Spine Value Set"
Description: "Findings resulting from a back and spine assessment"
Id: Physical.Finding.of.Back.and.Spine.VS
* experimental = true
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008		"Burn injury with charring (morphologic abnormality)"
* $sct#131148009         "Bleeding"
* $sct#50960005          "Hemorrhage"
//  OR 8573003          "Acute hemorrhage"
* $sct#48333001         "Burn injury"
* $sct#110014005	"Decapitation (disorder)"
* $sct#417893002	"Deformity (finding)"
* $sct#424329008	"Finding of skin drainage (finding)"
* $sct#125670008	"Foreign body (disorder)"
* $sct#312608009	"Laceration - injury (disorder)"
* $sct#300577008	"Finding of lesion (finding)"
* $sct#300862005	"Mass of body region (finding)"
* $sct#281900007	"No abnormality detected (finding)"
* $sct#312609001	"Puncture wound - injury (disorder)"
* $sct#425322008	"Stab wound (disorder)"
* $sct#283545005	"Gunshot wound (disorder)"
* $sct#125665001	"Crushing injury (disorder)"
* $sct#65124004		"Swelling (finding)"
* $sct#125667009	"Contusion (disorder)"
* $sct#247348008	"Tenderness (finding)"
* $sct#22253000     "Pain"
* $sct#425423002	"Pain provoked by movement"


ValueSet: Physical_Finding_of_Back_and_Spine_TargetSite_VS
Title: "Physical Finding of Back and Spine Target Site Value Set"
Description: "A subset of body site locations that apply to a Back and Spine assessment"
Id: Physical.Finding.of.Pupil.TargetSite.VS
* experimental = true
* $sct#77568009    "Structure of back of trunk"
* $sct#1141983003       "Structure of cervical vertebral column region"
//Cervical Left 
//Cervical Right 
* $sct#1141985005   "Structure of lumbar vertebral column region"
* $sct#1017210004   "Structure of left lumbar region of back" 
* $sct#1017211000	"Structure of right lumbar region of back" 
* $sct#40768004	         "Left thorax structure" 
* $sct#1141986006        "Structure of thoracic vertebral column region"
* $sct#51872008	        "Right thorax structure" 
* $sct#1144746008      "Structure of sacral vertebral column region"
// left sacral structure
// right sacral structure
* $sct#424072006   "Structure of thoracic paraspinous muscle group"
* $sct#55678000     "Structure of spinous process of vertebra" 
// Finish finding some codes



ValueSet: Physical_Finding_of_Chest_VS
Title: "Physical Finding of Chest Value Set"
Description: "Findings resulting from a chest assessment"
Id: Physical.Finding.of.Chest.VS
* experimental = true
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008		"Burn injury with charring (morphologic abnormality)"
* $sct#131148009        "Bleeding"
* $sct#50960005         "Hemorrhage"
//  OR 8573003     "Acute hemorrhage"
* $sct#48333001         "Burn injury"
* $sct#110014005	"Decapitation (disorder)"
* $sct#417893002	"Deformity (finding)"
* $sct#424329008	"Finding of skin drainage (finding)"
* $sct#125670008	"Foreign body (disorder)"
* $sct#312608009	"Laceration - injury (disorder)"
* $sct#300577008	"Finding of lesion (finding)"
* $sct#300862005	"Mass of body region (finding)"
* $sct#281900007	"No abnormality detected (finding)"
* $sct#22253000		"Pain (finding)"
* $sct#312609001	"Puncture wound - injury (disorder)"
* $sct#425322008	"Stab wound (disorder)"
* $sct#283545005	"Gunshot wound (disorder)"
* $sct#125665001	"Crushing injury (disorder)"
* $sct#65124004		"Swelling (finding)"
* $sct#125667009	"Contusion (disorder)"
* $sct#247348008	"Tenderness (finding)"
* $sct#78011002	        "Flail chest" 
* $sct#40388003	        "Implant, device"
* $sct#426976009	"pain provoked by breathing"
* $sct#67909005	        "Chest wall retraction"



ValueSet: Physical_Finding_of_Chest_TargetSite_VS
Title: "Physical Finding of Chest Target Site Value Set"
Description: "A subset of body site locations that apply to a chest assessment"
Id: Physical.Finding.of.Chest.TargetSite.VS
* experimental = true
* $sct#1290343009	"Structure of left half of anterior chest wall"
* $sct#788647001	"Structure of left half of posterior chest wall"
* $sct#1290342004	"Structure of right half of anterior chest wall"
* $sct#788648006	"Structure of right half of posterior chest wall"
* $sct#63698005	    "Anterior chest wall structure"
* $sct#76052000	    "Structure of posterior chest wall"
* $sct#40768004	    "Left thorax structure"
* $sct#51872008	    "Right thorax structure"




ValueSet: Physical_Finding_of_Extremities_VS
Title: "Physical Finding of Extremities Value Set"
Description: "Findings resulting from an Extremities assessment"
Id: Physical.Finding.of.Extremities.VS
* experimental = true
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008		"Burn injury with charring (morphologic abnormality)"
* $sct#131148009        "Bleeding"
* $sct#50960005         "Hemorrhage"
//  OR 8573003     "Acute hemorrhage"
* $sct#48333001          "Burn injury"
* $sct#110014005	"Decapitation (disorder)"
* $sct#417893002	"Deformity (finding)"
* $sct#424329008	"Finding of skin drainage (finding)"
* $sct#125670008	"Foreign body (disorder)"
* $sct#312608009	"Laceration - injury (disorder)"
* $sct#300577008	"Finding of lesion (finding)"
* $sct#300862005	"Mass of body region (finding)"
* $sct#281900007	"No abnormality detected (finding)"
* $sct#22253000		"Pain (finding)"
* $sct#312609001	"Puncture wound - injury (disorder)"
* $sct#425322008	"Stab wound (disorder)"
* $sct#283545005	"Gunshot wound (disorder)"
* $sct#125665001	"Crushing injury (disorder)"
* $sct#65124004		"Swelling (finding)"
* $sct#125667009	"Contusion (disorder)"
* $sct#247348008	"Tenderness (finding)"
* $sct#262595009	"Traumatic amputation"
* $sct#271396005	"History of limb amputation"
// find more generic code for History of amputation
* $sct#30760008	        "Finger clubbing"
* $sct#87642003	        "Dislocation" 
* $sct#20946005	        "Fracture, closed" 
* $sct#52329006	        "Fracture, open"
* $sct#225606002	"Abnormal movement" 
* $sct#26544005	        "Muscle weakness" 
* $sct#225601007	"Unable to move" 
* $sct#301999002	"Able to move" 
* $sct#44695005	        "Paralysis" 
* $sct#67683007	        "Pulse-Abnormal"
* $sct#54518005	        "Absent pulse" 
* $sct#12146004	        "Normal pulse" 
* $sct#247322000	"Abnormal sensation" 
* $sct#33653009	        "Absence of sensation" 
* $sct#299956006	"Normal sensation" 
* $sct#428334004	"Downward drift of outstretched supinated arm" 




ValueSet: Physical_Finding_of_Extremities_TargetSite_VS
Title: "Physical Finding of Extremities Target Site Value Set"
Description: "A subset of body site locations that apply to a chest assessment"
Id: Physical.Finding.of.Extremities.TargetSite.VS
* experimental = true
* $sct#51636004	        "Structure of left ankle" 
* $sct#6685009	        "Structure of right ankle" 
* $sct#368208006	"Left upper arm structure" 
* $sct#368209003	"Right upper arm structure" 
* $sct#368148009	"Left elbow region structure" 
* $sct#368149001	"Right elbow region structure" 
* $sct#770841009	"Structure of left index finger" 
* $sct#770842002	"Structure of right index finger" 
* $sct#770884005	"Structure of left middle finger" 
* $sct#770885006	"Structure of right middle finger" 
* $sct#770882009	"Structure of left ring finger" 
* $sct#770883004	"Structure of right ring finger" 
* $sct#762101005	"Structure of left little finger" 
* $sct#762102003	"Structure of right little finger" 
//
//
//
* $sct#66480008	        "Structure of left forearm" 
* $sct#64262003	        "Structure of right forearm" 
* $sct#789218009	"Structure of dorsum of left hand"
* $sct#789219001	"Structure of dorsum of right hand" 
* $sct#789216008	"Structure of palm of left hand" 
* $sct#789217004	"Structure of palm of right hand" 
* $sct#287679003	"Left hip region structure" 
* $sct#287579007	"Right hip region structure" 
* $sct#82169009	        "Structure of left knee region" 
* $sct#6757004	        "Structure of right knee region" 
* $sct#48979004	        "Structure of left lower leg" 
* $sct#32696007	        "Structure of right lower leg" 
* $sct#61396006	        "Structure of left thigh" 
* $sct#11207009	        "Structure of right thigh" 
* $sct#91775009	        "Structure of left shoulder region" 
* $sct#91774008	        "Structure of right shoulder region" 
* $sct#734143007	"Structure of left thumb" 
* $sct#734144001	"Structure of right thumb" 
* $sct#723724004	"Structure of left great toe" 
* $sct#723730004	"Structure of right great toe" 
//
//
//
//
//
//
* $sct#895650002	"Structure of fifth toe of left foot" 
* $sct#895651003	"Structure of fifth toe of right foot"
* $sct#5951000	        "Structure of left wrist region" 
* $sct#9736006	        "Structure of right wrist region" 
* $sct#72098002	        "Entire left upper arm" 
* $sct#59126009	        "Entire right upper arm"
* $sct#368456002	"Entire left hand" 
* $sct#368455003	"Entire right hand" 
* $sct#362785004	"Entire left lower extremity" 
* $sct#362784000	"Entire right lower extremity" 
* $sct#239919000	"Entire left foot" 
* $sct#239830003	"Entire right foot" 
// maybe add some more generic structure codes?


ValueSet: Physical_Finding_of_Eye_VS
Title: "Physical Finding of Eye Value Set"
Description: "Findings resulting from an Eye assessment"
Id: Physical.Finding.of.Eye.VS
* experimental = true
// need to find codes for generic blindness 
* $sct#193570009	"Cataract" 
* $sct#246636008	"Hazy vision" 
* $sct#733336004	"Deformity of eyeball" 
* $sct#103263007	"Dysconjugate gaze" 
* $sct#787018009	"Foreign body of eye region" 
* $sct#23986001	        "Glaucoma"
* $sct#75229002	        "Hyphema" 
* $sct#246975001	"Scleral icterus" 
* $sct#246916009	"Absent eyeball"
* $sct#131194007	"Non-Reactive"
* $sct#271609003	"Prosthetic eye in situ"
* $sct#307699005	"Nystagmus present" 
* $sct#231794000	"Injury of globe of eye" 
* $sct#418970005	"Pupil equal round and reacting to light"
* $sct#271732006	"Pupil irregular" 
* $sct#421910007	"Teardrop pupil "
* $sct#11214006	        "Reactive" 
* $sct#421141009	"Sluggish pupil movement" 
* $sct#65124004	        "Swelling" 
* $sct#125667009	"Contusion" 
* $sct#425322008	"Stab wound" 
* $sct#312609001	"Puncture wound - injury "
* $sct#37125009	        "Dilated pupil "
* $sct#271608006	"Pin point pupils"


ValueSet: Physical_Finding_of_Eye_TargetSite_VS
Title: "Physical Finding of Eye Target Site Value Set"
Description: "The eye assement finding is about"
Id: Physical.Finding.of.Eye.TargetSite.VS
* experimental = true
* $sct#8966001	    "Left eye structure" 
* $sct#18944008	    "Right eye structure" 
* $sct#40638003     "Structure of both eyes"


ValueSet: Physical_Finding_of_Pupil_VS
Title: "Physical Finding of Pupil Value Set"
Description: "Findings resulting from a pupil assessment"
Id: Physical.Finding.of.Pupil.VS
* experimental = true
* $sct#418970005	"Pupil equal round and reacting to light" 
* $sct#271732006	"Pupil irregular" 
* $sct#421910007	"Teardrop pupil" 
* $sct#11214006	        "Reactive" 
* $sct#421141009	"Sluggish pupil movement" 
* $sct#131194007	"Non-Reactive" 
* $sct#271608006	"Pin point pupils" 
* $sct#301939004       "Constricted pupil"
// 1-2 mm
* $sct#188557000       "Large pupil"
* $sct#37125009        "Dilated pupil"
// 4-8>mm
* $sct#420335002       "Medium size pupil"
* $sct#301941003       "Normal size pupil"
// 3-5 mm 
// get snomed codes for contricted, medium, large, and normal 


//ECG Interpretation method
//Neurological Assessment Finding
//Organ System
//        Patient Engagement
//assessments 
//Paramedicine protocol





ValueSet: Physical_Finding_of_Face_VS
Title: "Physical Finding of Face Value Set"
Description: "Findings resulting from a face assessment"
Id: Physical.Finding.of.Face.VS
* experimental = true
// Include codes that are a part of the SNOMED 301310005  Finding of face tree 
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008		"Burn injury with charring (morphologic abnormality)"
* $sct#131148009        "Bleeding"
* $sct#50960005         "Hemorrhage"
//  OR 8573003     "Acute hemorrhage"
* $sct#48333001         "Burn injury"
* $sct#417893002	"Deformity (finding)"
* $sct#424329008	"Finding of skin drainage (finding)"
* $sct#125670008	"Foreign body (disorder)"
* $sct#312608009	"Laceration - injury (disorder)"
* $sct#300577008	"Finding of lesion (finding)"
* $sct#300862005	"Mass of body region (finding)"
* $sct#281900007	"No abnormality detected (finding)"
* $sct#22253000		"Pain (finding)"
* $sct#312609001	"Puncture wound - injury (disorder)"
* $sct#425322008	"Stab wound (disorder)"
* $sct#283545005	"Gunshot wound (disorder)"
* $sct#125665001	"Crushing injury (disorder)"
* $sct#65124004		"Swelling (finding)"
* $sct#125667009	"Contusion (disorder)"
* $sct#247348008	"Tenderness (finding)"
* $sct#110014005	"Decapitation (disorder)"
* $sct#95666008	    "Weakness of face muscles"


ValueSet: Physical_Finding_of_Head_VS
Title: "Physical Finding of Head Value Set"
Description: "Findings resulting from a head assessment"
Id: Physical.Finding.of.Head.VS
* experimental = true
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008		"Burn injury with charring (morphologic abnormality)"
* $sct#131148009        "Bleeding"
* $sct#50960005         "Hemorrhage"
//  OR 8573003     "Acute hemorrhage"
* $sct#48333001         "Burn injury"
* $sct#417893002	"Deformity (finding)"
* $sct#424329008	"Finding of skin drainage (finding)"
* $sct#125670008	"Foreign body (disorder)"
* $sct#312608009	"Laceration - injury (disorder)"
* $sct#300577008	"Finding of lesion (finding)"
* $sct#300862005	"Mass of body region (finding)"
* $sct#281900007	"No abnormality detected (finding)"
* $sct#22253000		"Pain (finding)"
* $sct#312609001	"Puncture wound - injury (disorder)"
* $sct#425322008	"Stab wound (disorder)"
* $sct#283545005	"Gunshot wound (disorder)"
* $sct#125665001	"Crushing injury (disorder)"
* $sct#65124004		"Swelling (finding)"
* $sct#125667009	"Contusion (disorder)"
* $sct#247348008	"Tenderness (finding)"
* $sct#110014005	"Decapitation (disorder)"


ValueSet: Physical_Finding_of_Heart_VS
Title: "Physical Finding of Heart Value Set"
Description: "Findings resulting from a heart assessment"
Id: Physical.Finding.of.Heart.VS
* experimental = true
* $sct#3747008	    "Ejection click"
* $sct#271662005	"Heart sounds diminished"
* $sct#30782001	    "Diastolic murmur" 
* $sct#31574009	    "Systolic murmur" 
* $sct#281900007	"No abnormality detected" 
* $sct#7036007      "Pericardial friction rub"
* $sct#76310001	    "Abnormal first heart sound, S>1<" 
* $sct#82048005	    "Abnormal second heart sound, S>2< "
* $sct#67551009	    "Abnormal third heart sound, S>3<" 
* $sct#86484008	    "Abnormal fourth heart sound, S>4<" 


ValueSet: Physical_Finding_of_Lung_VS
Title: "Physical Finding of Lung Value Set"
Description: "Findings resulting from a lung assessment"
Id: Physical.Finding.of.Lung.VS
* experimental = true
* $sct#65503000	        "Absent breath sounds" 
* $sct#58840004	        "Decreased breath sounds" 
* $sct#48348007	        "Normal breath sounds" 
* $sct#24385003	        "Foreign body in lung" 
* $sct#248549001	"Labored breathing"  
* $sct#281900007	"No abnormality detected" 
* $sct#301355003	"Pain of respiratory structure" 
* $sct#426976009	"pain provoked by breathing" 
* $sct#48409008	        "Respiratory crackles "
* $sct#53541006	        "Low-pitched rhonchi "
* $sct#24612001	        "Wheeze - rhonchi "
* $sct#70407001	        "Stridor" 
* $sct#9763007	        "Expiratory wheezing" 
* $sct#31572008	        "Inspiratory wheezing" 



ValueSet: Physical_Finding_of_Lung_TargetSite_VS
Title: "Physical Finding of Lung Tartget Site Value Set"
Description: "The lung assement finding is about"
Id: Physical.Finding.of.Lung.TargetSite.VS
* experimental = true
* $sct#44029006	    "Left lung structure" 
* $sct#3341006	    "Right lung structure" 
* $sct#74101002	    "Both lungs"


ValueSet: Paramedicine_Physical_Findings_of_Nervous_System_VS
Title: "Physical Finding of Nervous System Value Set"
Description: "A subset of cades to deffine finsings that come from a Physical Exam of the Nervous System."
Id: Paramedicine.Physical.Findings.of.Nervous.System.VS
* experimental = true
// codes form the Neurological finding 102957003 tree 
* $sct#60818005	    "Aphagia"
* $sct#87486003	    "Aphasia"
* $sct#223176004	"Cerebellar disorder"
* $sct#281900007	"No abnormality detected"
* $sct#23073007	    "Decerebrate posture"
* $sct#85157005	    "Decorticate posture"
* $sct#22325002	    "Abnormal gait"
* $sct#8117002	    "Gait normal"
* $sct#278285008	"Left hemiplegia"
* $sct#278284007	"Right hemiplegia"
* $sct#128974000	"Baseline state"
* $sct#230456007	"Status epilepticus"
* $sct#91175000	    "Seizure" 
* $sct#719401001	"Intelligible speech"
* $sct#289195008	"Slurred speech" 
* $sct#20022000	    "Hemiparesis"
* $sct#26079004	    "Tremor"
* $sct#734756006	"Weakness of left facial muscle" 
* $sct#734757002	"Weakness of right facial muscle" 
* $sct#278287000	"Left hemiparesis" 
* $sct#278286009	"Right hemiparesis" 
* $sct#428334004	"Downward drift of outstretched supinated arm"



ValueSet: Paramedicine_Physical_Findings_of_Respiratory_System_VS
Title: "Physical Finding of Respiratory System Value Set"
Description: "A subset of cades to deffine finsings that come from a Physical Exam of the Respiratory System."
Id: Paramedicine.Physical.Findings.of.Respiratory.System.VS
* experimental = true
* $sct#65503000	        "Absent breath sounds" 
* $sct#58840004	        "Decreased breath sounds" 
* $sct#48348007	        "Normal breath sounds" 
* $sct#24385003	        "Foreign body in lung" 
* $sct#248549001	"Labored breathing"  
* $sct#281900007	"No abnormality detected" 
* $sct#301355003	"Pain of respiratory structure" 
* $sct#426976009	"pain provoked by breathing" 
* $sct#48409008	        "Respiratory crackles "
* $sct#53541006	        "Low-pitched rhonchi "
* $sct#24612001	        "Wheeze - rhonchi "
* $sct#70407001	        "Stridor" 
* $sct#9763007	        "Expiratory wheezing" 
* $sct#31572008	        "Inspiratory wheezing" 







ValueSet: Physical_Finding_of_Skin_VS
Title: "Physical Finding of Skin Value Set"
Description: "A subset of cades to deffine finsings that come from a Physical Exam of the skin"
Id: Physical.Finding.of.Skin.VS
* experimental = true
* $sct#102598000	"Clammy skin"
* $sct#703883009	"Cold skin"
* $sct#119419001	"Cyanosis of skin"
* $sct#52613005	    "Excessive sweating"
* $sct#16386004	    "Dry skin" 
* $sct#248213001	"Flushed complexion"
* $sct#707793005	"Hot skin" 
* $sct#267030001	"Yellow or jaundiced color" 
* $sct#13423002	    "Lividity" 
* $sct#406128001	"Mottling of skin"
* $sct#225544001	"Skin appearance normal" 
* $sct#398979000	"Pale complexion" 
* $sct#425244000	"Decreased skin turgor"
* $sct#827160004	"Erythematous rash" 
* $sct#102599008	"Warm skin" 
* $sct#50427001	    "Increased capillary filling time" 
* $sct#45332005	    "Normal capillary filling" 
* $sct#27157002	    "Decreased capillary filling time" 

// mental status assessment findings







ValueSet: Physical_Finding_of_Neck_VS
Title: "Physical Finding of Neck Value Set"
Description: "A subset of cades to deffine finsings that come from a Physical Exam of the Neck"
Id: Physical.Finding.of.Neck.VS
* experimental = true
* $sct#399963005	"Abrasion"
* $sct#284554003	"Avulsion - injury"
* $sct#131148009	"Bleeding"
* $sct#50960005	    "Hemorrhage"
// XXX	Burn injury with blistering
* $sct#25733008	    "Burn injury with charring"
// XXX	Burn injury with redness
// XXX	Burn injury with white waxy appearance
* $sct#110014005	"Decapitation"
* $sct#125670008	"Foreign body"
* $sct#449161000124101	"Distention of jugular vein"
* $sct#312608009	"Laceration - injury "
* $sct#281900007	"No abnormality detected"
* $sct#22253000	    "Pain" 
* $sct#312609001	"Puncture wound - injury"
* $sct#425322008	"Stab wound "
* $sct#70407001	    "Stridor" 
* $sct#3830001	    "Subcutaneous emphysema"
* $sct#271630007	"Trachea displaced to left "
* $sct#271631006	"Trachea displaced to right "
* $sct#283545005	"Gunshot wound"
* $sct#125665001	"Crushing injury "
* $sct#65124004	    "Swelling" 
* $sct#125667009	"Contusion" 
* $sct#417893002	"Deformity" 
* $sct#247348008	"Tenderness" 







ValueSet: Physical_Finding_of_Pelvis_VS
Title: "Physical Finding of Pelvis Value Set"
Description: "A subset of cades to deffine finsings that come from a Physical Exam of the Pelvis"
Id: Physical.Finding.of.Pelvis.VS
* experimental = true
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008		"Burn injury with charring (morphologic abnormality)"
* $sct#131148009         "Bleeding "
* $sct#48333001         "Burn injury"


ValueSet: Physical_Finding_of_GenitourinaryTract_VS
Title: "Physical Finding of Genitourinary Tract Value Set"
Description: "A subset of cades to deffine finsings that come from a Physical Exam of the Genitourinary Tract"
Id: Physical.Finding.of.GenitourinaryTract.VS
* experimental = true
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008		"Burn injury with charring (morphologic abnormality)"
* $sct#131148009        "Bleeding "
* $sct#48333001         "Burn injury"

ValueSet: Physical_Finding_of_Pelvis_and_Genitourinary_VS
Title: "Physical Finding of Pelvis and Genitourinary Value Set"
Description: "A subset of cades to deffine finsings that come from a Physical Exam of the Pelvis and Genitourinary Tract"
Id: Physical.Finding.of.Pelvis.and.Genitourinary.VS
* experimental = true
* $sct#399963005	"Abrasion"
* $sct#284554003	"Avulsion - injury"
* $sct#131148009	"Bleeding"
* $sct#50960005	    "Hemorrhage"
// XXX	Burn injury with blistering
* $sct#25733008	    "Burn injury with charring"
// XXX	Burn injury with redness
// XXX	Burn injury with white waxy appearance
* $sct#125670008	"Foreign body"
* $sct#282772005	"Genital injury"
* $sct#312608009	"Laceration - injury"
* $sct#300577008	"Finding of lesion"
* $sct#300862005	"Mass of body region"
// pulsating mass term needed 	
* $sct#281900007	"No abnormality detected"
* $sct#22253000	    "Pain"
* $sct#77493009	    "Fracture of pelvis"
* $sct#444792001	"Instability of joint of pelvis"
* $sct#6273006	    "Priapism"
* $sct#89934007	    "Crowning"
* $sct#312609001	"Puncture wound - injury"
* $sct#425322008	"Stab wound"
* $sct#247348008	"Tenderness"
* $sct#283545005	"Gunshot wound"
* $sct#125665001	"Crushing injury"
* $sct#65124004	    "Swelling"
* $sct#125667009	"Contusion"



ValueSet: Physical_Finding_of_Back_VS
Title: "Physical Finding of Back Value Set"
Description: "A subset of codes to deffine finsings that come from a Physical Exam of the back"
Id: Physical.Finding.of.Back.VS
* experimental = true
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008		"Burn injury with charring (morphologic abnormality)"
* $sct#131148009        "Bleeding "
* $sct#48333001         "Burn injury"


ValueSet: Physical_Finding_of_Back_TargetSite_VS
Title: "Physical Finding of Back Target Site Value Set"
Description: "A subset of codes to deffine finsings that come from a Physical Exam of the back target site."
Id: Physical.Finding.of.Back.TargetSite.VS
* experimental = true
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008		"Burn injury with charring (morphologic abnormality)"
* $sct#131148009        "Bleeding"
* $sct#48333001         "Burn injury"



ValueSet: Physical_Finding_of_Spine_TargetSite_VS
Title: "Physical Finding of Spine Spine Target Site Value Set"
Description: "A subset of codes to deffine finsings that come from a Physical Exam of the spine target site."
Id: Physical.Finding.of.Spine.TargetSite.VS
* experimental = true
* $sct#399963005	"Abrasion (disorder)"
* $sct#284554003	"Avulsion - injury (disorder)"
* $sct#25733008		"Burn injury with charring (morphologic abnormality)"
* $sct#131148009        "Bleeding "
* $sct#48333001         "Burn injury"



ValueSet: Weight_Estimation_Tape_Values_VS
Title: "Physical Finding of Pelvis and Genitourinary Value Set"
Description: "This value set applies coded values to the Broselow-Luten color-coded length-based system."
Id: Weight.Estimation.Tape.Values.VS
* experimental = true
* $sct#444474005	"Broselow Luten pediatric weight estimation blue zone"
* $sct#444503000	"Broselow Luten pediatric weight estimation green zone"
* $sct#736023001	"Broselow Luten pediatric weight estimation gray zone"
* $sct#444496004	"Broselow Luten pediatric weight estimation orange zone"
* $sct#444488009	"Broselow Luten pediatric weight estimation pink zone"
* $sct#444489001	"Broselow Luten pediatric weight estimation purple zone"
* $sct#444471002	"Broselow Luten pediatric weight estimation red zone"
* $sct#444504006	"Broselow Luten pediatric weight estimation white zone"
* $sct#444505007	"Broselow Luten pediatric weight estimation yellow zone"



ValueSet: Collision_Object_VS
Title: "Collision Object Value Set"
Description: "What has been hit in a Collision"
Id: Collision.Object.VS
* experimental = true
* $sct#71783008         "Automobile, device"
* $sct#32906002         "Victim, pedestrian in vehicular AND/OR traffic accident"
* $sct#25139002         "Moped, device"
* $sct#22674006         "Motor bus, device"
* $sct#70224005         "Bicycle, device"
* $sct#90748009         "Motorcycle, device"
* $sct#38548008         "Streetcar, device"
* $sct#62193008         "Railway train, device"
* $sct#12247004         "Truck, device"
* $sct#23366006         "Motorized wheelchair device"
* $sct#224832000        "Van"
* $sct#90963000         "Animal drawn vehicle, device"
* $sct#49980008         "Farm tractor, device"
* $sct#22097005         "Tree"
//* $sct#29611000009106   "Wildlife"
* $sct#224824008	"Sign posting"
* $sct#224823002	"Street lighting"
* $sct#257720004	"Traffic light"
* $sct#257518000	"Pedestrian"
* $sct#223404008	"Domestic structure"
* $sct#224727009	"Walls"
//* $sct#     ""
// are there values that cover physical structures like polls or man made structures that are generic? 
// are there any values that cover natural/nature structures such as rocks or ditches?

ValueSet: Transport_Method_VS
Title: "Transport Method Value Set"
Description: "The Type of transport that is taking place."
Id: Transport.Method.VS
* experimental = true
* $sct#73957001     "Air transport ambulance, device"
* $sct#32472009     "Medical helicopter, device"
* $sct#44613004        "Ground transport ambulance, device"
* $sct#469799000       "All-terrain ambulance"
* $sct#1297166001      "Ambulance bus"
* $sct#465341007       "Automobile ambulance"
* $sct#1285123005      "Basic life support ambulance"
* $sct#466597001       "Boat ambulance"
* $sct#1285128001      "Emergency and resuscitation ambulance"
* $sct#469233002       "Helicopter ambulance"
* $sct#1297113004      "Intensive care transport ambulance"
* $sct#1285124004      "Intermediate life support ambulance"
* $sct#1285126002      "Pediatric inter-hospital transportation ambulance"
* $sct#83887000        "Rescue vehicle, device"
// * sct#TBD    "Wheelchair Van"
// * sct#TBD    "Bariatric"


ValueSet: Level_Of_Responsiveness_AVPU_VS
Title: "Level Of Responsiveness AVPU Value Set"
Description: "Level Of Responsiveness AVPU findings"
Id: Level.Of.Responsiveness.AVPU.VS
* experimental = true
* $sct#248234008     "Mentally alert"
* $sct#255373000     "Verbal"
* $sct#422768004     "Unresponsive"
* $sct#450847001     "Responds to pain"

ValueSet: Pathient_Transfer_to_Ambulance_Method_VS
Title: "Pathient Transfer to Ambulance_Method Value Set"
Description: "How the Patient was transfered into the Ambulance."
Id: Pathient.Transfer.to.Ambulance.Method.VS
* experimental = true
* $sct#58938008		"Wheelchair device"
* $sct#720991006        "Ambulance stretcher, pneumatically-assisted"
* $sct#700597006	"Ambulance stretcher, manual"
* $sct#702080003	"Ambulance stretcher, electrohydraulic"
* $sct#702081004	"Ambulance stretcher loader"
* $sct#702082006	"Ambulance stretcher docking device"
* $sct#89149003		"Stretcher, device"
* $sct#465060008	"Stair chair"
* $sct#706699008	"Chair"
* $sct#870595007	"Walking"
* $sct#707739007	"Ambulating with assistance of one person "
* $sct#707741008	"Ambulating with assistance of team of people"
* $sct#707740009	"Ambulating with assistance of two people"
* $sct#710804006	"Assistance with walking using device"
* $sct#78086002		"Holding patient"
* $sct#258141001	"Lifting "
// Moving a patient (procedure)	56469005
// Patient position finding (finding)	272525001
// Moving a patient (procedure)	56469005 then method value set of:



ValueSet: Paramedicine_Reason_For_Visit_VS
Title: "Paramedicine Reason For Visit Value Set"
Description: "A subset of Reason codes that are informed by NEMSIS Dispatch Reasons as a reccomended subset."
Id: Paramedicine.Reason.For.Visit.VS
* experimental = true
* $sct#21522001         "Abdominal pain"
* $sct#118948005       "Disorder of abdomen"
* $sct#419076005       "Allergic reaction"
* $sct#871927008       "Allergic reaction caused by insect bite and/or insect sting"
* $sct#299970006       "Animal sting"
* $sct#242651001       "Injury caused by animal"
* $sct#52684005        "Assault"
// post coordination? 8359006   Automated, 
* $NEMSIS#2301009	"Automated Crash Notification"
* $sct#161891005       "Backache"
* $sct#50043002        "Disorder of respiratory system"
* $sct#271825005       "Respiratory distress"
* $sct#230145002       "Difficulty breathing"
* $sct#125666000	"Burn"
* $sct#242777003	"Accident caused by explosion"
* $sct#95875007	        "Exposure to carbon monoxide"
* $sct#418715001	"Exposure to potentially harmful entity"
* $sct#785340007	"Inhalation of substance"
* $sct#409508005	"Bioterrorism related event"
* $sct#218190002	"Exposure to radiation"
* $sct#410429000	"Cardiac arrest"
* $sct#419620001       "Death"
* $sct#29857009        "Chest pain"
* $sct#249489001       "Choking"
* $sct#431521000       "Acute pain due to injury"
* $sct#91175000        "Seizure"
* $sct#74627003        "Complication due to diabetes mellitus"
* $sct#219359001       "Injury of unknown intent by electrocution"
* $sct#5193003         "Lightning"
* $sct#371409005       "Disorder of eye region"
* $sct#282752000       "Injury of eye region"
* $sct#1912002         "Fall"
* $sct#217176002       "Accident caused by fire and flames"
* $sct#25064002        "Headache"
* $sct#405776004       "Planned admission"
* $sct#185406000       "Ambulance request for patient"
* $sct#103321005       "Request by physician"
* $sct#103323008       "Request by health care worker"
* $sct#405617006       "Cardiovascular event"
* $sct#40537000        "Cold exposure"
* $sct#95867001        "Heat exposure"
* $sct#309535002       "Industrial accident"
* $sct#462994002       "Personal emergency response system"
* $sct#39869006        "Alarm, device"
// medical alarm 
// no other approriate choice 
* $sct#1149222004      "Overdose"
* $sct#75478009        "Poisoning"
* $sct#443684005       "Disease outbreak"
* $sct#198609003       "Complication of pregnancy, childbirth and/or puerperium"
* $sct#17369002        "Miscarriage"
* $sct#405619009       "Neurological event"
* $sct#82313006        "Suicide attempt"
* $sct#413307004       "Mental health problem"
// sick person (open issue)
* $sct#84829006        "Struck by projectile"
* $sct#69129000        "Struck by sharp object"
* $sct#425322008       "Stab wound"
* $sct#283545005       "Gunshot wound"
* $sct#242999003       "Injury due to projectile"
// Standby 2301065 NEMSIS 
* $sct#230690007       "Cerebrovascular accident"
* $sct#274215009       "Transport accident"
* $sct#107724000       "Patient transfer"
* $sct#417746004       "Traumatic injury"
// Well Person Check    2301075
* $sct#418107008       "Unconscious"
* $sct#271594007       "Syncope"
* $sct#419045004       "Loss of consciousness"
* $sct#40917007        "Clouded consciousness"
// 	2301079	Unknown Problem/Person Down simlar to unresponsive?
* $sct#40947009        "Drowning"
* $sct#242664000       "Accidental drowning or near drowning while scuba diving"
// 2301083	Airmedical Transport 
// 2301087	Intercept
* $sct#419284004       "Altered mental status"
* $sct#422587007       "Nausea"
* $sct#422400008       "Vomiting"


ValueSet: Paramedicine_Emergency_Event_Sub_List_VS
Title: "Paramedicine Emergency Event Sub List Value Set"
Description: "A subset of the Events that a PAramedicince Service will respond to to initiate an encounter."
Id: Paramedicine.Emergency.Event.Sub.List.VS
* experimental = true
* $sct#409508005       "Bioterrorism related event"
* $sct#409495001       "Bioterrorist attack"
* $sct#781249001       "Consumption of contaminated food"
* $sct#419620001       "Death"
// many other child codes
* $sct#44301001        "Suicide"
// many other child codes 
* $sct#443684005       "Disease outbreak"
* $sct#1290248002      "Electrical power disruption"
* $sct#276746005       "Environmental event"
* $sct#1290213009      "Acid rain"
* $sct#82145005        "Avalanche"
* $sct#1289992003      "Snow avalanche"
* $sct#1287996005      "Rock avalanche"
* $sct#1287962003      "Cold wave"
* $sct#48071004        "Cyclone"
* $sct#35314007        "Hurricane"
* $sct#1287963008      "Subtropical cyclone"
* $sct#88644004        "Tornado"
* $sct#1287966000      "Tropical cyclone"
* $sct#1287815006      "Drought"
* $sct#8766005         "Earthquake"
* $sct#20936008        "Fire storm"
* $sct#111056004       "Flood"
// many other child codes 
* $sct#37933009        "Flash flood"
* $sct#256236005       "Fog"
* $sct#1287961005      "Freezing rain"
* $sct#1287812009      "Hailstorm"
* $sct#1289984007      "Harmful algal bloom"
* $sct#1287960006      "Heatwave"
* $sct#1287813004      "Ice storm"
* $sct#49061008        "Landslide"
* $sct#102406006       "Mud slide"
* $sct#1289989002      "Landslide caused by volcanic activity"
* $sct#5193003         "Lightning"
* $sct#1290047001      "Meteorite impact"
* $sct#102410009       "Pollution"
* $sct#102411008       "Environmental pollution"
* $sct#1287965001      "Rockfall"
* $sct#1287807008      "Sand and dust storm"
* $sct#59262002        "Snowstorm"
* $sct#49113003        "Blizzard"
* $sct#829975002       "Thunderstorm"
* $sct#19224001        "Tidal wave"
* $sct#24454008        "Torrential rain"
* $sct#1287938008      "Tsunami"
* $sct#90978007        "Volcanic eruption"
* $sct#219329006       "Hanging of unknown intent"
* $sct#219328003       "Hanging, strangulation or suffocation of unknown intent"
* $sct#418307001       "Exposure to biological agent"
* $sct#418715001       "Exposure to potentially harmful entity"
* $sct#418420002       "Intentionally harming self"
* $sct#248007002       "Killing"
* $sct#27935005        "Homicide"
* $sct#418635006       "Legal intervention"
* $sct#417928002       "Abuse"
* $sct#405616002       "Airway event"
* $sct#405617006       "Cardiovascular event"
* $sct#405619009       "Neurological event"
* $sct#405618001       "Respiratory event"
* $sct#418781000       "Operations of war"
* $sct#419912001       "Overexertion"
* $sct#773760007       "Traumatic event"
* $sct#218164000       "Accident caused by electric current"
* $sct#418098005       "Accidental exposure to potentially harmful entity"
* $sct#309535002       "Industrial accident"
* $sct#274215009       "Transport accident"
* $sct#782161000       "Bite"
* $sct#242605002       "Human bite"
* $sct#782162007       "Bite of nonhuman animal"
* $sct#898189008       "Contact with hot or corrosive substance"
* $sct#1290037004      "Human stampede"
* $sct#54719000        "Exposure to human stampede"
* $sct#35468003        "Crushed in between objects"
* $sct#39826003        "Struck by explosion"
* $sct#84829006        "Struck by projectile"
* $sct#69129000        "Struck by sharp object"
* $sct#1912002         "Fall"
* $sct#71893005        "Struck by falling object"
* $sct#397866006        "Staff injury or damage"



//todo
ValueSet: Safety_Equipment_VS
Title: "Safety Equipment Value Set"
Description: "Safety Equiptment"
Id: Safety.Equipment.VS
* experimental = true
* $sct#397866006        "Staff injury or damage"

//todo
ValueSet: Protective_Equipment_VS
Title: "Protective Equipment Value Set"
Description: "Protective Equipment"
Id: Protective.Equipment.VS
* experimental = true
* $sct#397866006        "Staff injury or damage"

ValueSet: Stroke_Scale_Type_VS
Title: "Stroke Scale Type Value Set"
Description: "The codes that identify what stroke scale is used to identify a stroke in the field."
Id: Stroke.Scale.Type.VS
* experimental = true
* $sct#1290002002   "Alberta Stroke Program Early CT score"
* $sct#705003005    "Stroke impact scale version 3.0"
* $sct#1287356003   "Cincinnati Prehospital Stroke Scale"
* $sct#450741005    "National Institutes of Health stroke scale"
* $sct#736709006    "Postural Assessment Scale for Stroke Patients"

ValueSet: Stroke_Assessment_Interpretation_VS
Title: "Stroke Assessment Interpretation Value Set"
Description: "The codes that identify what stroke scale is used to identify a stroke in the field."
Id: Stroke.Assessment.Interpretation.VS
* experimental = true
* http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#NEG    "Negative"
* http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS    "Positive"
* $sct#419984006    "Inconclusive"


ValueSet: PSC_Location_Type_VS
Title: "PSC Location Type Value Set"
Description: "Loaction types used to descrive the type of facility or environment in a Paramedicine Encounter."
Id: PSC.Location.Type.VS
* experimental = true
* codes from valueset http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType
* $sct#34261000087105   "Dispatch location"
* $sct#702869004    "Incident site"
* $sct#285141008    "Work environment"
* $sct#419955002   "Residential institution"

