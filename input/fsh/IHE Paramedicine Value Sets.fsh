ValueSet: Paramedicine_data_absent_reason_VS
Description: "data absent reason Value set extension to include additional codes that Paramedicine providers use to indicate reason for missing data"
Id: Paramedicine.data.absent.reason.VS
* include codes from DataAbsentReason
* $sct#1220561009       "Not recorded"
* $sct#410534003        "Not indicated"
* $sct#410536001        "Contraindicated"
* $sct#441889009        "Denied"
* $sct#373572006         "Clinical finding absent"
* $sct#416098002        "Allergy to drug"
* $sct#246488008        "Drug used"
* $sct#409137002        "No known drug allergy"
* $sct#422768004        "Unresponsive"
* $sct#876785008        "Unobtainable"
* $sct#171259000        "Not up to date with immunizations "
* $sct#26175008         "Approximate"
* $sct#162275003        "No visual symptom"


ValueSet: Injury_Mechanism_VS
Description: "The Types of Mechanical force that have caused an injury. "
Id: Injury.Mechanism.VS
* $sct#1055294009       "Blunt impact"
* $sct#1162998008       "Sharp impact"
* $sct#80032004         "Fire"

ValueSet: Protective_Equipment_VS
Description: "Safety equipment/body protection in use by the patient at the time of the injury."
Id: Protective.Equipment.VS
* $sct#285695004      "Helmet"
* $sct#60054005       "Seat belt, device"
* $sct#102384007      "Motor vehicle airbag, device"
* $sct#464916003      "Assistive automobile child safety seat"
* $sct#38126007        "Protective glasses, device"
* $sct#427850003        "Life preserver flotation device"
* $sct#6919005          "Protective clothing material, device"
* $sct#409526008        "Personal protective equipment"
* $sct#257389003        "Lap belt"
* $sct#257388006        "Lap and diagonal"
* $sct#257385009        "Full harness"
* $sct#257386005        "Fitted child harness"



ValueSet: Paramedicine_VitalSigns_VS
Description: "Vital signs that should be used in the Paramedicine Summary doucmentation"
Id: Paramedicine.VitalSigns.VS
* codes from system http://hl7.org/fhir/ValueSet/observation-vitalsignresult 
* $loinc#29463-7       "Body Weight "
* $loinc#67670-0       "Length-based tape measure category NEMSIS"
//* $loinc#            ""
//* $loinc#            ""
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


ValueSet: Paramedicine_Incident_Type_VS
Description: "The Stroke assesment used to identify a stroke"
Id: Paramedicine.Incident.Type.VS
* codes from system $sct 
* $sct#773760007     "Traumatic event (event)"
* $sct#443684005      "Disease outbreak (event)"
* $sct#276746005      "Environmental event (event)"
* $sct#49061008      "Landslide (event)"
* $sct#111056004      "Flood (event)"
* $sct#20936008      "Fire storm (event)"
//Request code for "Wildfire"
* $sct#8766005      "Earthquake (event)"
* $sct#82145005      "Avalanche (event)"
* $sct#35314007      "Hurricane (event)"
* $sct#88644004      "Tornado (event)"
* $sct#59262002      "Snowstorm (event)"
* $sct#19224001      "Tidal wave (event)"
* $sct#410429000      "Cardiac arrest (disorder)"
* $sct#230713003      "Stroke of uncertain pathology (disorder)"
* $sct#417746004      "Traumatic injury (disorder)"
* $sct#371128008      "Occupational injury (disorder)"
* $sct#1119219007      "Nontraumatic injury (disorder)"
* $sct#418399005      "Motor vehicle accident (event)"
// Request from snomed $sct#      "Mass Casulaty/multiple casualty event"


ValueSet: Length_Based_Tape_Measure_VS
Description: "The colors show equipment sizes for emergency pediatric resuscitation. Pre-calculated medication dosages are related to each weight. "
Id: Length.Based.Tape.Measure.VS

* $sct#444474005     "Broselow Luten pediatric weight estimation blue zone (finding)"
* $sct#444503000     "Broselow Luten pediatric weight estimation green zone (finding)"
* $sct#736023001     "Broselow Luten pediatric weight estimation gray zone (finding)"
* $sct#444496004     "Broselow Luten pediatric weight estimation orange zone (finding)"
* $sct#444488009     "Broselow Luten pediatric weight estimation pink zone (finding)"
* $sct#444489001     "Broselow Luten pediatric weight estimation purple zone (finding)"
* $sct#444471002     "Broselow Luten pediatric weight estimation red zone (finding)"
* $sct#444504006     "Broselow Luten pediatric weight estimation white zone (finding)"
* $sct#444505007     "Broselow Luten pediatric weight estimation yellow zone (finding)"

ValueSet: Color_Of_Skin_VS
Description: "variations of skin color seen in a skin assement that may indicate health status of the patient."
Id: Color.Of.Skin.VS
* $sct#119419001     "Cyanosis of skin"
* $sct#248213001     "Flushed complexion"
* $sct#267030001     "Yellow or jaundiced color"
* $sct#13423002     "Lividity"
* $sct#406128001     "Mottling"
* $sct#398979000     "Pale complexion"
* $sct#827160004     "Erythematous rash"
// need review of this element as it doesn't quite fall into the color observation of skin 
* $sct#297952003   "Normal color of skin"
* $sct#4470009     "Blanching of skin"
* $sct#402607006     "Constitutive skin pigmentation"
* $sct#74725000     "Erythrocyanosis"
* $sct#75246004     "Florid red complexion"
* $sct#304230005     "Pink skin"
* $sct#314176007     "Skin marbling"
* $sct#247438007     "Staining of skin"


ValueSet: Moisture_Of_Skin_VS
Description: "variations of skin moisture seen in a skin assement that may indicate health status of the patient."
Id: Moisture.Of.Skin.VS
* $sct#52613005     "Excessive sweating"
* $sct#16386004     "Dry skin"
* $sct#102598000    "Clammy skin"
* $sct#702756006    "Normal moistness of skin"
* $sct#42273000     "Greasy skin"


ValueSet: Temperature_Of_Skin_VS
Description: "variations of skin temperature by hand/touch seen in a skin assement that may indicate health status of the patient."
Id: Temperature.Of.Skin.VS
* $sct#703883009     "Cold skin"
* $sct#707793005     "Hot skin"
* $sct#297977002     "Skin normal temperature"

ValueSet: Turgor_Of_Skin_VS
Description: "variations of turgor seen in a skin assement that may indicate health status of the patient."
Id: Turgor.Of.Skin.VS
* $sct#297956000     "Skin turgor normal"
* $sct#425244000     "Decreased skin turgor"
* $sct#297977002     "Skin normal temperature"

ValueSet: Paramedicine_Assessment_Findings_VS
Description: "Paramedicine findins Assessment exams."
Id: Paramedicine.Assessment.Findings.VS
* $sct#399963005     "Abrasion"
* $sct#284554003     "Avulsion - injury"
* $sct#25733008     "Burn injury with charring"
* $sct#110014005     "Decapitation"
* $sct#417893002     "Deformity"
* $sct#424329008     "Finding of skin drainage"
* $sct#125670008     "Foreign body"
* $sct#312608009     "Laceration - injury"
* $sct#300577008     "Finding of lesion "
* $sct#300862005    "Mass of body region "
* $sct#281900007    "No abnormality detected"
* $sct#22253000     "Pain"
* $sct#312609001     "Puncture wound - injury"
* $sct#425322008     "Stab wound"
* $sct#283545005     "Gunshot wound "
* $sct#125665001     "Crushing injury"
* $sct#65124004     "Swelling"
* $sct#125667009     "Contusion"
* $sct#247348008     "Tenderness"


ValueSet: Neck_Assessment_VS
Description: "Physical findings of the Neck; exam."
Id: Neck.Assessment.VS 
* codes from valueset Paramedicine.Assessment.Findings.VS
* $sct#110014005     "Decapitation"
* $sct#449161000124101     "Distention of jugular vein"
* $sct#70407001     "Stridor"
* $sct#3830001     "Subcutaneous emphysema"
* $sct#271630007     "Trachea displaced to left"
* $sct#271631006     "Trachea displaced to right"


ValueSet: Heart_Assessment_VS
Description: "Physical findings of the heart; exam."
Id: Heart.Assessment.VS 
* $sct#3747008     "Ejection click"
* $sct#271662005     "Heart sounds diminished"
* $sct#30782001     "Diastolic murmur"
* $sct#31574009     "Systolic murmur"
* $sct#281900007     "No abnormality detected"
* $sct#76310001     "Abnormal first heart sound, S>1<"
* $sct#82048005     "Abnormal second heart sound, S>2<"
* $sct#67551009     "Abnormal third heart sound, S>3<"
* $sct#86484008     "Abnormal fourth heart sound, S>4<"

ValueSet: Abdominal_Assessment_Finding_Location_VS
Description: "Physical findings body site; abdomen."
Id: Abdominal.Assessment.Finding.Location.VS 
* $sct#302553009     "Entire abdomen"
* $sct#68505006     "Structure of left lower quadrant of abdomen"
* $sct#86367003     "Structure of left upper quadrant of abdomen"
* $sct#714637002     "Structure of periumbilical region"
* $sct#48544008     "Structure of right lower quadrant of abdomen"
* $sct#50519007     "Structure of right upper quadrant of abdomen"
* $sct#27947004     "Epigastric region structure"

ValueSet: Abdominal_Assessment_VS
Description: "Physical findings of the Abdominal; exam."
Id: Abdominal.Assessment.VS 
* codes from valueset Paramedicine.Assessment.Findings.VS
* $sct#162068007     "Abdominal distension symptom"
* $sct#249545003     "Abdominal guarding"
* $sct#2981001     "Pulsatile mass of abdomen"
* $sct#169564004     "Pregnant - on abdominal palpation"
* $sct#35611005     "Rebound tenderness"
* $sct#72300008     "Abdominal rigidity"


ValueSet: Pelvis_Genitourinary_Assessment_VS
Description: "Physical findings of the Pelvis Genitourinary system; exam."
Id: Pelvis.Genitourinary.Assessment.VS 
* codes from valueset Paramedicine.Assessment.Findings.VS
* $sct#12063002     "Rectal hemorrhage"
* $sct#249301002     "Bleeding from urethra"
* $sct#289530006     "Bleeding from vagina"
* $sct#282772005     "Genital injury"
* $sct#77493009     "Fracture of pelvis"
* $sct#444792001     "Instability of joint of pelvis"
* $sct#6273006     "Priapism"
* $sct#89934007     "Crowning"


ValueSet: Back_Spine_Assessment_Finding_Location_VS
Description: "Physical findings body site; back/spine."
Id: Back.Spine.Assessment.Finding.Location.VS 
* $sct#727234005     "Entire back of trunk"
* $sct#1017210004     "Structure of left lumbar region of back"
* $sct#1141990008     "Entire lumbar vertebral column region"
* $sct#1017211000     "Structure of right lumbar region of back"
* $sct#40768004     "Left thorax structure"
* $sct#51872008     "Right thorax structure"

ValueSet: Back_Spine_Assessment_VS
Description: "Physical findings of the back and spine; exam."
Id: Back.Spine.Assessment.VS 
* codes from valueset Paramedicine.Assessment.Findings.VS
//* $sct#     ""

ValueSet: Extremity_Assessment_Finding_Location_VS
Description: "Physical findings body site; Extremity."
Id: Extremity.Assessment.Finding.Location.VS 
* $sct#51636004     "Structure of left ankle"
* $sct#6685009     "Structure of right ankle "
* $sct#368208006     "Left upper arm structure"
* $sct#368209003     "Right upper arm structure"
* $sct#368148009     "Left elbow region structure"
* $sct#368149001     "Right elbow region structure"
* $sct#770841009     "Structure of left index finger"
* $sct#770842002     "Structure of right index finger"
* $sct#770884005     "Structure of left middle finger"
* $sct#770885006     "Structure of right middle finger"
* $sct#770882009     "Structure of left ring finger"
* $sct#770883004     "Structure of right ring finger"
* $sct#762101005     "Structure of left little finger"
* $sct#762102003     "Structure of right little finger "
* $sct#66480008     "Structure of left forearm"
* $sct#64262003     "Structure of right forearm"
* $sct#789218009     "Structure of dorsum of left hand"
* $sct#789219001     "Structure of dorsum of right hand"
* $sct#789216008     "Structure of palm of left hand"
* $sct#789217004     "Structure of palm of right hand"
* $sct#287679003     "Left hip region structure"
* $sct#287579007      "Right hip region structure"
* $sct#82169009     "Structure of left knee region"
* $sct#6757004     "Structure of right knee region"
* $sct#48979004     "Structure of left lower leg"
* $sct#32696007     "Structure of right lower leg"
* $sct#61396006     "Structure of left thigh"
* $sct#11207009     "Structure of right thigh"
* $sct#91775009     "Structure of left shoulder region"
* $sct#91774008     "Structure of right shoulder region"
* $sct#734143007     "Structure of left thumb"
* $sct#734144001     "Structure of right thumb"
* $sct#723724004     "Structure of left great toe"
* $sct#723730004     "Structure of right great toe"
* $sct#895650002     "Structure of fifth toe of left foot"
* $sct#895651003     "Structure of fifth toe of right foot"
* $sct#5951000     "Structure of left wrist region"
* $sct#9736006     "Structure of right wrist region"
* $sct#72098002     "Entire left upper arm"
* $sct#59126009     "Entire right upper arm"
* $sct#368456002     "Entire left hand"
* $sct#368455003     "Entire right hand"
* $sct#362785004     "Entire left lower extremity"
* $sct#362784000     "Entire right lower extremity"
* $sct#239919000     "Entire left foot"
* $sct#239830003     "Entire right foot"



ValueSet: Extremity_Assessment_VS
Description: "Physical findings body site; Extremity."
Id: Extremity.Assessment.VS 
* codes from valueset Paramedicine.Assessment.Findings.VS
* $sct#262595009     "Traumatic amputation"
* $sct#271396005     "History of limb amputation"
* $sct#30760008     "Finger clubbing"
* $sct#87642003     "Dislocation"
* $sct#267038008     "Edema"
* $sct#20946005     "Fracture, closed"
* $sct#52329006     "Fracture, open"
* $sct#225606002     "Abnormal movement"
* $sct#26544005     "Muscle weakness"
* $sct#225601007     "Unable to move"
* $sct#301999002     "Able to move"
* $sct#44695005     "Paralysis"
* $sct#67683007     "Pulse-Abnormal"
* $sct#54518005     "Absent pulse"
* $sct#12146004     "Normal pulse"
* $sct#247322000     "Abnormal sensation"
* $sct#33653009     "Absence of sensation"
* $sct#299956006     "Normal sensation"
* $sct#428334004     "Downward drift of outstretched supinated arm"


ValueSet: Eye_Assessment_Finding_Location_VS
Description: "Physical findings body site; Eye."
Id: Eye.Assessment.Finding.Location.VS 
* $sct#732141005     "Entire eye region"
* $sct#8966001     "Left eye structure"
* $sct#18944008     "Right eye structure"

ValueSet: Eye_Assessment_VS
Description: "Physical findings eye; exam."
Id: Eye.Assessment.VS 
* $sct#193570009     "Cataract"
* $sct#246636008     "Hazy vision"
* $sct#733336004     "Deformity of eyeball "
* $sct#103263007     "Dysconjugate gaze"
* $sct#787018009     "Foreign body of eye region"
* $sct#23986001     "Glaucoma"
* $sct#75229002     "Hyphema"
* $sct#246975001     "Scleral icterus"
* $sct#246916009     "Absent eyeball"
* $sct#131194007     "Non-Reactive"
* $sct#271609003     "Prosthetic eye in situ"
* $sct#307699005     "Nystagmus present"
* $sct#231794000     "Injury of globe of eye"
* $sct#418970005     "Pupil equal round and reacting to light"
* $sct#271732006     "Pupil irregular"
* $sct#421910007     "Teardrop pupil"
* $sct#11214006     "Reactive"
* $sct#421141009     "Sluggish pupil movement"
* $sct#65124004     "Swelling"
* $sct#125667009     "Contusion"
* $sct#425322008     "Stab wound"
* $sct#312609001     "Puncture wound - injury"
* $sct#37125009     "Dilated pupil"
* $sct#271608006     "Pin point pupils"
* $sct#63102001     "Visual disturbance"

ValueSet: Pupil_Observation_VS
Description: "the condition of the pupil."
Id: Pupil.Observation.VS 
* $sct#301941003    "Normal size pupil (finding)"
* $sct#271608006    "Pin point pupils (finding)"
* $sct#37125009     "Dilated pupil (finding)"
* $sct#32341000146109   "Left pupillary reflex"
* $sct#32351000146107   "absent right pupillary reflex"
* $sct#32361000146105   "horizontal gaze paralysis to the left"
* $sct#32371000146104   "horizontal gaze paralysis to the right"
* $sct#563001           "Nystagmus (disorder)"
* $sct#131194007     "Non-Reactive"
* $sct#418970005     "Pupil equal round and reacting to light"
* $sct#271732006     "Pupil irregular"
* $sct#421910007     "Teardrop pupil"


ValueSet: Lung_Assessment_Finding_Location_VS
Description: "Physical findings body site; Lung."
Id: Lung.Assessment.Finding.Location.VS 
* $sct#181216001     "Entire lung"
* $sct#44029006     "Left lung structure"
* $sct#3341006     "Right lung structure"

ValueSet: Chest_Assessment__VS
Description: "Physical findings chest; exam."
Id: Chest.Assessment.VS 
* $sct#399963005     "Abrasion"
* $sct#284554003     "Avulsion - injury "
* $sct#271620003     "Accessory respiratory muscles used"
* $sct#25733008     "Burn injury with charring"
* $sct#125665001     "Crushing injury"
* $sct#417893002     "Deformity"
* $sct#78011002     "Flail chest"
* $sct#40388003     "Implant, device "
* $sct#312608009     "Laceration - injury"
* $sct#281900007     "No abnormality detected"
* $sct#262008008     "Not performed"
* $sct#22253000     "Pain"
* $sct#426976009     "pain provoked by breathing"
* $sct#425322008     "Stab wound"
* $sct#312609001     "Puncture wound - injury"
* $sct#67909005     "Chest wall retraction"
* $sct#247348008     "Tenderness"
* $sct#283545005     "Gunshot wound"
* $sct#65124004     "Swelling"
* $sct#125667009     "Contusion"



ValueSet: Chest_Assessment_Finding_Location_VS
Description: "Physical findings body site; chest."
Id: Chest.Assessment.Finding.Location.VS 
* $sct#788647001     "Structure of left half of posterior chest wall"
* $sct#788648006     "Structure of right half of posterior chest wall"
* $sct#63698005     "Anterior chest wall structure"
* $sct#76052000     "Posterior chest wall structure"


ValueSet: Mental_Status_Assessment__VS
Description: "Mental Status Assessment."
Id: Mental.Status.Assessment.VS 
* $sct#609586001     "Combativeness"
* $sct#40917007     "Clouded consciousness"
* $sct#7011001     "Hallucinations"
* $sct#128974000     "Baseline state"
* $sct#262008008     "Not performed"
* $sct#427645006     "Oriented to person"
* $sct#427161009     "Oriented to place "
* $sct#426794005     "Oriented to time"
* $sct#422768004     "Unresponsive"
* $sct#24199005     "Feeling agitated"
* $sct#271782001     "Drowsy"
* $sct#89458003     "Stupor"
* $sct#419284004     "Altered mental status"
* $sct#5294002     "Developmental disorder"
* $sct#62476001     "Disorientated"
* $sct#17971005     "Sedated"
* $sct#704488001     "Imparement of Psychological staus"
* $sct#274660003     "Slowness and poor responsiveness"
* $sct#442347009     "Emotional stress"
* $sct#274650007     "Strange and inexplicable behavior "
* $sct#248042003     "Uncooperative behavior"
* $sct#371632003     "Coma"

ValueSet: Neurological_Status_Assessment__VS
Description: "Neurological Assessment."
Id: Neurological.Assessment.VS 
* $sct#60818005     "Aphagia"
* $sct#87486003     "Aphasia"
* $sct#223176004     "Cerebellar disorder"
* $sct#23073007     "Decerebrate posture"
* $sct#85157005     "Decorticate posture"
* $sct#22325002     "Abnormal gait "
* $sct#8117002     "Gait normal "
* $sct#278285008     "Left hemiplegia"
* $sct#278284007     "Right hemiplegia "
* $sct#128974000     "Baseline state"
* $sct#262008008     "Not performed "
* $sct#230456007     "Status epilepticus"
* $sct#91175000     "Seizure"
* $sct#719401001     "Intelligible speech"
* $sct#289195008     "Slurred speech"
* $sct#20022000     "Hemiparesis"
* $sct#26079004     "Tremor"
* $sct#734756006     "Weakness of left facial muscle"
* $sct#734757002     "Weakness of right facial muscle"
* $sct#278287000     "Left hemiparesis "
* $sct#278286009     "Right hemiparesis"

ValueSet: Cardiac_Rhythm_VS
Description: "The cardiac rhythm / ECG and other electrocardiography findings of the patient as interpreted by EMS personnel."
Id: Cardiac.Rhythm.VS 

* $sct#426151009        "Electrocardiogram: idioventricular rhythm"
* $sct#427485008        "Electrocardiographic asystole"
* $sct#251143007        "Electrocardiogram artifact"
* $sct#164889003        "Electrocardiographic atrial fibrillation"
* $sct#164890007        "Electrocardiographic atrial flutter "
* $sct#270492004        "First degree atrioventricular block"
* $sct#164905008        "Mobitz type I second degree atrioventricular block on electrocardiogram"
* $sct#426183003        "Electrocardiographic Mobitz type II atrioventricular block"
* $sct#164906009        "Electrocardiographic complete atrioventricular block"
* $sct#426307007        "Electrocardiogram: junctional rhythm"
* $sct#164909002        "Electrocardiographic left bundle branch block"
* $sct#426434006        "Electrocardiographic anterior ischemia"
* $sct#425419005        "Electrocardiographic inferior ischemia"
* $sct#425623009        "Electrocardiographic lateral ischemia"
* $sct#35581000087103   "Ischemia of posterior myocardium"
* $sct#35481000087104   "Ischemia of myocardium of ventricular septum"
* $sct#426453001        "Electrocardiogram: paced rhythm"
* $sct#426975008        "Electrocardiogram: pulseless electrical activity"
* $sct#164885009        "Electrocardiographic atrial ectopics"
* $sct#427172004        "Electrocardiogram: premature ventricular contractions"
* $sct#164907000        "Electrocardiographic right bundle branch block"
* $sct#427393009        "Electrocardiogram: sinus arrhythmia"
* $sct#426177001        "Electrocardiogram: sinus bradycardia"
* $sct#426783006        "Electrocardiogram: sinus rhythm"
* $sct#427084000        "Electrocardiogram: sinus tachycardia"
* $sct#429731003        "Anterior myocardial infarction on electrocardiogram"
* $sct#7326005          "Inferior myocardial infarction on electrocardiogram"
* $sct#164871004        "Lateral infarction on electrocardiogram"
* $sct#73999000         "Posterior myocardial infarction on electrocardiogram"
* $sct#1077002          "Septal infarction by electrocardiogram"
* $sct#426761007        "Electrocardiographic supraventricular tachycardia"
* $sct#426882006        "Electrocardiographic torsades de pointes"
* $sct#707799009        "Non-shockable heart rhythm detected by automated external defibrillator"
* $sct#704130006        "Shockable heart rhythm detected by automated external defibrillator"
* $sct#164896001        "Electrocardiographic ventricular fibrillation"
* $sct#233905006        "Ventricular tachycardia with normal heart"
// Note: This should be confirmed 
* $sct#405806007        "Pulseless ventricular tachycardia"
* $sct#66230004         "Reciprocal rhythm"
* $sct#10370003         "Rhythm from artificial pacing"
* $sct#81437007         "Normal atrial rhythm"
* $sct#79525004         "Normal cardiac conduction"
* $sct#423863005        "Electrical alternation of heart"


ValueSet: IncidentType_VS
Description: "TBD"
Id: IncidentType.VS 
* $sct#409508005     "Bioterrorism related event (event)"
* $sct#409495001     "Bioterrorist attack (event)"
* $sct#781249001     "Consumption of contaminated food (event)"
* $sct#361191000009103     "Consumption of food (event)"
* $sct#879983006     "Contact with adhesive bandage (event)"
* $sct#879984000     "Contact with adhesive plaster (event)"
* $sct#890297007     "Contact with Bryozoa (event)"
* $sct#890111000     "Contact with clothing material (event)"
* $sct#890131001     "Contact with fish (event)"
* $sct#419620001     "Death (event)"
* $sct#7878000     "Accidental death (event)"
* $sct#87309006     "Death of unknown cause (event)"
* $sct#740603007    "Killed (event)"
* $sct#44301001     "Suicide (event)"
* $sct#443684005     "Disease outbreak (event)"
* $sct#276746005     "Environmental event (event)"
* $sct#8766005     "Earthquake (event)"
* $sct#111056004    " 	Flood (event)"
* $sct#1287960006     "Heatwave (event)"
* $sct#49061008     "Landslide (event)"
* $sct#5193003     "Lightning (event)"
* $sct#59262002     "Snowstorm (event)"
* $sct#1287814005     "Subtropical storm (event)"
* $sct#1287938008     "Tsunami (event)"
* $sct#20936008     "Fire storm (event)"
* $sct#773760007     "Traumatic event (event)"
* $sct#1912002     "Fall (event)"
* $sct#405616002     "Airway event (event)"
* $sct#405618001     "Respiratory event (event)"
* $sct#405617006     "Cardiovascular event (event)"
* $sct#405619009     "Neurological event (event)"
* $sct#49113003     "Blizzard (event)"

ValueSet: Signature_Reason_VS
Description: "The reason for the individuals signature."
Id: Signature.Reason.VS
* include all codes from urn:iso-astm:E1762-95:2013
* include all codes from in http://terminology.hl7.org/CodeSystem/consentscope
* include all codes from in http://terminology.hl7.org/CodeSystem/consentcategorycodes
* include all codes from in https://terminology.hl7.org/5.1.0/ValueSet-v3-ActConsentType.html
* $loinc#59284-0 	"Patient Consent"
* $loinc#57016-8 	"Privacy policy acknowledgement Document"
* $loinc#57017-6 	"Privacy policy Organization Document"
* $loinc#64292-6 	"Release of information consent"
* $sct#1234814002   "Return of subjects valuables and belongings" 
* $sct#703427001    "Refusal of treatment by patient against dental advice (situation)"
* $sct#49181000087105   "Consent declined for sedation (finding)"
* $sct#307837007	"Referral to person"
* $sct#129275003	"Administrative transfer - action (qualifier value)"
* $sct#737038009	"Declined consent for treatment (finding)"
* $sct#386249009	"Controlled substance checking (procedure)"
* $sct#1234814002	"Return of subjects valuables and belongings"
* $sct#384762007	"Transportation procedure"
* $sct#429739001	"Patient declined transportation"
* $sct#442392002	"Ambulance transport to hospital declined"
* http://terminology.hl7.org/CodeSystem/v3-ActCode#HIPAAConsent   "HIPAA Consent"
* http://terminology.hl7.org/CodeSystem/v3-ActCode#HIPAANOPP      "HIPAA notice of privacy practices"
* http://terminology.hl7.org/CodeSystem/v3-ActCode#SecurityPolicy "security policy"
* http://terminology.hl7.org/CodeSystem/v3-ActCode#AUTHPOL        "authorization policy"
* http://terminology.hl7.org/CodeSystem/v3-ActCode#_AdvanceBeneficiaryNoticeType  "AdvanceBeneficiaryNoticeType"
* http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL       "information disclosure"
* http://terminology.hl7.org/CodeSystem/v3-ActCode#INFA       "information access"
* http://terminology.hl7.org/CodeSystem/v3-ActCode#IMPLIED       "implied consent"
* http://terminology.hl7.org/CodeSystem/v2-0131#O       "Other"




ValueSet: signer_relationship_VS 
Description: "The type of relationship the individual signing has to the patient."
Id: signer.relationship.VS 
* include codes from http://terminology.hl7.org/CodeSystem/v3-RoleCode
    * http://terminology.hl7.org/CodeSystem/v3-RoleCode#INTPRTER     "interpreter"
    * http://terminology.hl7.org/CodeSystem/v3-RoleCode#POWATT     "power of attorney"
    * http://terminology.hl7.org/CodeSystem/v3-RoleCode#DPOWATT     "durable power of attorney"
    * http://terminology.hl7.org/CodeSystem/v3-RoleCode#HPOWATT     "healthcare power of attorney"
    * http://terminology.hl7.org/CodeSystem/v3-RoleCode#SPOWATT     "special power of attorney"
    * http://terminology.hl7.org/CodeSystem/v3-RoleCode#FAMMEMB    "family member"
    * http://terminology.hl7.org/CodeSystem/v3-RoleCode#ONESELF      "self"
* include codes from http://terminology.hl7.org/CodeSystem/v3-RoleClass
    * http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV       "healthcare provider"
    * http://terminology.hl7.org/CodeSystem/v3-RoleClass#CAREGIVER       "caregiver"
    * http://terminology.hl7.org/CodeSystem/v3-RoleClass#NURPRAC       "nurse practitioner"
    * http://terminology.hl7.org/CodeSystem/v3-RoleClass#NURS       "nurse"
    * http://terminology.hl7.org/CodeSystem/v3-RoleClass#PA       "physician assistant"
    * http://terminology.hl7.org/CodeSystem/v3-RoleClass#PHYS       "physician"
    * http://terminology.hl7.org/CodeSystem/v3-RoleClass#CHILD       "child"
    * http://terminology.hl7.org/CodeSystem/v3-RoleClass#GUARD       "guardian"
    * http://terminology.hl7.org/CodeSystem/v3-RoleClass#NOK       "next of kin"
* include codes from http://terminology.hl7.org/CodeSystem/v2-0131
    * http://terminology.hl7.org/CodeSystem/v2-0131#C      "Emergency Contact"
    * http://terminology.hl7.org/CodeSystem/v2-0131#E      "Employer"
    * http://terminology.hl7.org/CodeSystem/v2-0131#F      "Federal Agency"
    * http://terminology.hl7.org/CodeSystem/v2-0131#I      "Insurance Company"
    * http://terminology.hl7.org/CodeSystem/v2-0131#N      "Next-of-Kin"
    * http://terminology.hl7.org/CodeSystem/v2-0131#O      "Other"
    * http://terminology.hl7.org/CodeSystem/v2-0131#S      "State Agency"
    * http://terminology.hl7.org/CodeSystem/v2-0131#U      "Unknown"
//* include codes in http://terminology.hl7.org/CodeSystem/v3-RoleCode where concept is-a _PersonalRelationshipRoleType
* include codes from http://terminology.hl7.org/CodeSystem/v3-ParticipationType
    * http://terminology.hl7.org/CodeSystem/v3-ParticipationType#DIS     "discharger"
    * http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ESC       "escort"
    * http://terminology.hl7.org/CodeSystem/v3-ParticipationType#REFT   "Referred to"
* $sct#265981008        "Security/protective services"
* $sct#159673003        "Security officer"
* $sct#159675005        "Security guard"
* $sct#71970000         "Prison guard"
* $sct#302314004        "Military personnel"
* $sct#106382009        "Fire fighter"
* $sct#106383004        "Policeman/detective"
* $sct#410603005        "Person in the legal environment"

ValueSet: signer_role_VS 
Description: "The type of person signing."
Id: signer.relationship.VS 
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF   "primary performer"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF   "secondary performer"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#WIT   "witness"
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV       "healthcare provider"
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#LIC        "licensed entity"
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#PAT        "patient"
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#CAREGIVER  "caregiver"
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#MBR        "member"
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#CON        "contact"
* http://terminology.hl7.org/CodeSystem/v2-0131#O      "Other"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CON    "consultant"
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#COMPAR     "commissioning party"
* $sct#303122009        "Crewmember"
* $sct#257513009        "Member of public"

ValueSet: signature_status_VS 
Description: "Indication that the signature has been collected or attempted to be collected."
Id: signature.status.VS 
* http://terminology.hl7.org/CodeSystem/v3-ActStatus#active         "active"
* http://terminology.hl7.org/CodeSystem/v3-ActStatus#cancelled      "cancelled"
* http://terminology.hl7.org/CodeSystem/v3-ActStatus#aborted        "aborted"
* http://terminology.hl7.org/CodeSystem/v3-ActStatus#completed      "completed"

ValueSet: signature_status_reason_VS 
Description: "the reason for the signature status"
Id: signature.status.reason.VS 
* $sct#419099009        "Dead"
* $sct#69328002         "Distress"
* $sct#397933008        "Equipment error/failure"
* $sct#224338007        "In police custody"
* $sct#422693009        "Language barrier"
* $sct#228150001         "Mental health impairment"
* $sct#419284004         "Altered mental status"
* $sct#67822003         "Child (person)"
* $sct#410599005         "Minor (person)"
* $sct#82971005         "Impaired mobility "
* $sct#284140004         "Unable to move arm"
* $sct#284149003         "Difficulty moving hand"
* $sct#386806002         "Impaired cognition"
* $sct#443390004         "Refused"
* $sct#1861000124105     "Transition of care"
* $sct#418107008         "Unconscious "
* $sct#397540003         "Visual impairment"
* $sct#22151000087106    "Paper report "
* $sct#707843000         "Illiterate literacy level"
* $sct#309252004         "Unable to read"
* $sct#386423001         "Physical restraint"
* $sct#248042003         "Uncooperative behavior"
* $sct#609586001         "Combativeness"

ValueSet: Paramedicine_participant_role_VS 
Description: "The role(s) of the crew member during response, at scene treatment, and/or transport."
Id: Paramedicine.participant.role.VS 

* http://terminology.hl7.org/CodeSystem/v2-0131#O      "Other"
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#CAREGIVER    "caregiver"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF   "primary performer"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF   "secondary performer"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF    "performer"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#TRANS  "Transcriber"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ENT     "data entry person"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#RESP    "Responsible Party"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#REFT    "Referrer"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CON     "Consultant"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ATND    "Attender"
* $sct#768832004    "casemanager"

ValueSet: Paramedicine_Practitioner_Qualification_Level_VS 
Description: "TBD."
Id: Paramedicine.Practitioner.Qualification.Level.VS 
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#CANP        "Certified Adult Nurse Practitioner"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#CER        "Certificate"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#CMA        "Certified Medical Assistant"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#CNM        "Certified Nurse Midwife"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#CNP        "Certified Nurse Practitioner"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#CNS        "Certified Nurse Specialist"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#CPNP 	"Certified Pediatric Nurse Practitioner"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#CRN 	"Certified Registered Nurse"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#CTR 	"Certified Tumor Registrar"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#DO 	"Doctor of Osteopathy"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#EMT 	"Emergency Medical Technician"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#EMTP 	"Emergency Medical Technician - Paramedic"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#FPNP 	"Family Practice Nurse Practitioner"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#JD 	"Juris Doctor"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#MD 	"Doctor of Medicine"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#MDA 	"Medical Assistant"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#MT 	"Medical Technician"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#NP 	"Nurse Practitioner"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#PA 	"Physician Assistant"
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#PHS 	"Doctor of Science"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#PN 	"Advanced Practice Nurse"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#PharmD 	"Doctor of Pharmacy"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#RMA 	"Registered Medical Assistant"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#RN 	"Registered Nurse"	
* http://terminology.hl7.org/ValueSet/v2-2.7-0360#RPH 	"Registered Pharmacist"
