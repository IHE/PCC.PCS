

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

* $sct#444474005       "Broselow Luten pediatric weight estimation blue zone (finding)"
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
* codes from Paramedicine_Assessment_Findings_VS
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
* codes from Paramedicine_Assessment_Findings_VS
* $sct#162068007     "Abdominal distension symptom"
* $sct#249545003     "Abdominal guarding"
* $sct#2981001     "Pulsatile mass of abdomen"
* $sct#169564004     "Pregnant - on abdominal palpation"
* $sct#35611005     "Rebound tenderness"
* $sct#72300008     "Abdominal rigidity"


ValueSet: Pelvis_Genitourinary_Assessment_VS
Description: "Physical findings of the Pelvis Genitourinary system; exam."
Id: Pelvis.Genitourinary.Assessment.VS 
* codes from Paramedicine_Assessment_Findings_VS
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
* codes from Paramedicine_Assessment_Findings_VS
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



ValueSet: Extremity_Assessment__VS
Description: "Physical findings body site; Extremity."
Id: Extremity.Assessment.VS 
* codes from Paramedicine_Assessment_Findings_VS
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

ValueSet: Eye_Assessment__VS
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


ValueSet: Lung_Assessment_Finding_Location_VS
Description: "Physical findings body site; Lung."
Id: Lung.Assessment.Finding.Location.VS 
* $sct#181216001     "Entire lung"
* $sct#44029006     "Left lung structure"
* $sct#3341006     "Right lung structure"




* $sct#     ""
* $sct#     ""
* $sct#     ""
* $sct#     ""
* $sct#     ""
