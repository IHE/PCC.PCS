Profile:   IHE_PCC_ParamedicineSummary_Composition_ClinicalSubset
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id:             IHE.PCC.ParamedicineSummary.Composition.ClinicalSubset
Title: "Paramedicince Summary Composition Clinical Subset"
Description:      """
The composition of the FHIR elements that are used to build the FHIR Document for the Paramedicine Care Summary Clinical Subset
the following cardinalities follow the documentation in the PCS profile: 
- RE 0..1 IPS Advance Directives 
- RE 0..1 IPS History of Past Illness
- RE 0..1 IPS History of Procedures
- R 1..1 IPS Allergies and Intolerances
- R 1..1 IPS Medications
- R 0..1 IPS Problems (complaints?)
--- review of systems 
- R 1..1 IPS Functional Status
- RE 0..1 Medications Administered Section
---- procedures performed 
- RE 0..1 IPS Vital Signs
- O 0..1 Payor

- RE 0..1 IPS History of Pregnancy
- O 0..1 Immunizations
- O 0..1 IPS Medical Devices
- O 0..1 IPS Results
- O 0..1 IPS Plan of Care
- O 0..1 Payor
- O 0..1 InjuryEvent seciton 
- O 0..1 eArrest Section 
------- mass casuality incident 
"""
// Nictiz this clinical subset is intended to be a version of a combined the Nictiz Rush Alert and For Warning Document 

* identifier 1..1 MS 
* type MS 
* category 1..* MS 
* insert requireAtLeastOneMatch(category, pstat, $loinc#34133-9)
* confidentiality 1..1
* language 1..1 MS
* language from CommonLanguages (preferred)
* title MS 
* date MS
* text MS 
* subject 1..1 MS 
* subject only Reference(https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient)
* author MS
* attester MS 
* attester.mode MS 
* attester.time MS 
* attester.party MS

* event 1..* 
* event ^slicing.discriminator.type = #value
* event ^slicing.discriminator.path = "code"
* event ^slicing.rules = #open
* event ^slicing.description = ""
* event ^slicing.ordered = false
* event contains careProvisioningEvent 0..1 MS 
* event[careProvisioningEvent].code 1..1 MS 
* event[careProvisioningEvent].period MS
* custodian MS  

* extension contains http://hl7.org/fhir/us/ccda/StructureDefinition/ParticipantExtension named participant_extension 0..* MS
//* participant_extension ^slicing.discriminator.type = #pattern
//* participant_extension ^slicing.discriminator.path = "reference"
//* participant_extension ^slicing.rules = #open
//* participant_extension ^slicing.description = "TBD"
//* participant_extension ^slicing.ordered = false
//* participant_extension contains 
//  Vehicle 1..1 MS and  
//  crew 1..* MS and 


* section 1..*
* section.code 1..1 MS 
* section.text 1..1 MS 
//TODO empty reason code vs expansion maybe just US realm?
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Paramedicine Summary Sections"
* section ^slicing.ordered = false
* section contains
  sectionChiefComplaint 1..1 and 
  sectionReasonforVisit 1..1 and  
  sectionPresentIllnessHx 1..1 and 
  sectionProblems 1..1 and 
  sectionMedications 1..1 and 
  sectionAllergies 1..1 and 
  sectionPastIllnessHx 0..1 MS and 
  sectionProceduresHx 0..1 MS and 
  sectionImmunizations 0..1 MS and 
  sectionSocialHistory 0..1 MS and 
  sectionReviewOfSystems 0..1 MS and 
  sectionVitalSigns 0..1 MS and 
  sectionMedicalDevices 0..1 MS and
  sectionPhysicalExamination 0..1 MS and
  sectionResults 0..1 MS and 
  sectionCarePlan 0..1 MS and 
  sectionAdvancedirectives 0..1 MS and
  sectionFunctionalStatus 0..1 MS and
  sectionPayers 0..1 and 
  sectionIncident 0..1 MS and 
  sectionEmergencyNotification 0..1 and 
  sectionTransportation 0..1 and 
  sectionTreatment 0..1 and
  sectionTriage 0..1 and 
  sectionInjury 0..1

 
* section[sectionChiefComplaint] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionChiefComplaint] ^extension.valueString = "Section"
* section[sectionChiefComplaint] ^short = "Chief Complaint Section"
* section[sectionChiefComplaint] ^definition = "This contains a narrative description of the patient's chief complaint."
* section[sectionChiefComplaint].code = $loinc#10154-3
* section[sectionChiefComplaint].emptyReason MS 
* section[sectionChiefComplaint].text 1..1

* section[sectionReasonforVisit] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionReasonforVisit] ^extension.valueString = "Section"
* section[sectionReasonforVisit] ^short = "section Reason for Visit Section"
* section[sectionReasonforVisit] ^definition = "This contains a narrative description of the patient's reason for visit."
* section[sectionReasonforVisit].code = $loinc#29299-5 
* section[sectionReasonforVisit].emptyReason MS 
* section[sectionReasonforVisit].text 1..1

* section[sectionPresentIllnessHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPresentIllnessHx] ^extension.valueString = "Section"
* section[sectionPresentIllnessHx] ^short = "IHE History of Present Illness Section"
* section[sectionPresentIllnessHx] ^definition = "The history of present illness section shall contain a narrative description of the sequence of events preceding the patient’s current complaints."
* section[sectionPresentIllnessHx].code = $loinc#10164-2
* section[sectionPresentIllnessHx].emptyReason MS 

* section[sectionProblems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProblems] ^extension.valueString = "Section"
* section[sectionProblems] ^short = "IHE Active Problems Section"
* section[sectionProblems] ^definition = "The active problem section shall contain a narrative description of the conditions currently being monitored for the patient. It shall include entries for patient conditions."
* section[sectionProblems].code = $loinc#11450-4
* section[sectionProblems].emptyReason MS 
* section[sectionProblems].entry ^short = "Problem Concern Entry"
* section[sectionProblems].entry 0..* MS 
* section[sectionProblems].entry only Reference(Condition or DocumentReference)
* section[sectionProblems].entry ^slicing.discriminator.type = #pattern
* section[sectionProblems].entry ^slicing.discriminator.path = "reference"
* section[sectionProblems].entry ^slicing.rules = #open
* section[sectionProblems].entry ^slicing.description = "Clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].entry ^slicing.ordered = false
* section[sectionProblems].entry contains problem 0..* 
* section[sectionProblems].entry[problem] only Reference(ConditionUvIps) 

* section[sectionMedications] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedications] ^extension.valueString = "Section"
* section[sectionMedications] ^short = "IHE Medications section"
* section[sectionMedications] ^definition = "The medications section shall contain a description of the relevant medications for the patient, e.g., an ambulatory prescription list. It shall include entries for medications."
* section[sectionMedications].code = $loinc#10160-0
* section[sectionMedications].entry ^short = "Medications Entry"
* section[sectionMedications].entry 0..* MS 
* section[sectionMedications].entry only Reference(MedicationStatement or MedicationRequest or MedicationAdministration or MedicationDispense or DocumentReference)
* section[sectionMedications].entry ^slicing.discriminator.type = #pattern
* section[sectionMedications].entry ^slicing.discriminator.path = "reference"
* section[sectionMedications].entry ^slicing.rules = #open
* section[sectionMedications].entry ^slicing.description = "Medications relevant for the scope of the summary document"
* section[sectionMedications].entry ^slicing.ordered = false
* section[sectionMedications].entry contains 
  medicationStatement 0..* and 
  medicationRequest 0..* and 
  medicationAdministration 0..*
* section[sectionMedications].entry[medicationStatement] only Reference(MedicationStatementIPS)
* section[sectionMedications].entry[medicationRequest] only Reference(MedicationRequestIPS)    
* section[sectionMedications].entry[MedicationAdministration] only Reference(MedicationAdministration)  

* section[sectionAllergies] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAllergies] ^extension.valueString = "Section"
* section[sectionAllergies] ^short = "IHE Allergies and Other Adverse Reactions Section"
* section[sectionAllergies] ^definition = "The adverse and other adverse reactions section shall contain a narrative description of the substance intolerances and the associated adverse reactions suffered by the patient. It shall include entries for intolerances and adverse reactions "
* section[sectionAllergies].code = $loinc#48765-2
* section[sectionAllergies].entry ^short = "Allergy or Intolerance"
* section[sectionAllergies].entry 0..* MS 
* section[sectionAllergies].entry only Reference(AllergyIntolerance or DocumentReference)
* section[sectionAllergies].entry ^slicing.discriminator.type = #pattern
* section[sectionAllergies].entry ^slicing.discriminator.path = "reference"
* section[sectionAllergies].entry ^slicing.rules = #open
* section[sectionAllergies].entry ^slicing.description = "Relevant allergies or intolerances (conditions) for that patient."
* section[sectionAllergies].entry ^slicing.ordered = false
* section[sectionAllergies].entry contains allergyOrIntolerance 0..* 
* section[sectionAllergies].entry[allergyOrIntolerance] only Reference(AllergyIntoleranceUvIps) 

* section[sectionPastIllnessHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPastIllnessHx] ^extension.valueString = "Section"
* section[sectionPastIllnessHx] ^short = "IHE History of Past Illness Section"
* section[sectionPastIllnessHx] ^definition = "The History of Past Illness section shall contain a narrative description of the conditions the patient suffered in the past. It shall include entries for problems."
* section[sectionPastIllnessHx].code = $loinc#11348-0
* section[sectionPastIllnessHx].entry ^short = "Conditions"
* section[sectionPastIllnessHx].entry only Reference(Condition or DocumentReference)
* section[sectionPastIllnessHx].entry ^slicing.discriminator.type = #pattern
* section[sectionPastIllnessHx].entry ^slicing.discriminator.path = "reference"
* section[sectionPastIllnessHx].entry ^slicing.rules = #open
* section[sectionPastIllnessHx].entry ^slicing.description = "Conditions the patient suffered in the past."
* section[sectionPastIllnessHx].entry ^slicing.ordered = false
* section[sectionPastIllnessHx].entry contains pastProblem 0..* 
* section[sectionPastIllnessHx].entry[pastProblem] only Reference(ConditionUvIps) 

* section[sectionProceduresHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProceduresHx] ^extension.valueString = "Section"
* section[sectionProceduresHx] ^short = "History of Procedures Section"
* section[sectionProceduresHx] ^definition = "TBD"
* section[sectionProceduresHx].code = $loinc#47519-4
* section[sectionProceduresHx].entry ^short = "Past procedures"
* section[sectionProceduresHx].entry 0..* MS 
* section[sectionProceduresHx].entry only Reference(Procedure or DocumentReference)
* section[sectionProceduresHx].entry ^slicing.discriminator.type = #pattern
* section[sectionProceduresHx].entry ^slicing.discriminator.path = "reference"
* section[sectionProceduresHx].entry ^slicing.rules = #open
* section[sectionProceduresHx].entry ^slicing.description = "Patient past procedures pertinent to the scope of this document."
* section[sectionProceduresHx].entry ^slicing.ordered = false
* section[sectionProceduresHx].entry contains procedure 0..* 
* section[sectionProceduresHx].entry[procedure] only Reference(ProcedureUvIps) 

* section[sectionImmunizations] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionImmunizations] ^extension.valueString = "Section"
* section[sectionImmunizations] ^short = "IHE Immunizations Section"
* section[sectionImmunizations] ^definition = "The immunizations section shall contain a narrative description of the immunizations administered to the patient in the past. It shall include entries for medication administration"
* section[sectionImmunizations].code = $loinc#11369-6
* section[sectionImmunizations].entry ^short = "Immunizations Entry"
* section[sectionImmunizations].entry 0..* MS 
* section[sectionImmunizations].entry only Reference(Immunization or MedicationAdministration or DocumentReference)
* section[sectionImmunizations].entry ^slicing.discriminator.type = #pattern
* section[sectionImmunizations].entry ^slicing.discriminator.path = "reference"
* section[sectionImmunizations].entry ^slicing.rules = #open
* section[sectionImmunizations].entry ^slicing.description = "Patient's immunization status and pertinent history."
* section[sectionImmunizations].entry ^slicing.ordered = false
* section[sectionImmunizations].entry contains 
  immunization 0..* and 
  immunizationAdministration 0..* 
* section[sectionImmunizations].entry[immunization] only Reference(ImmunizationUvIps)
* section[sectionImmunizations].entry[immunizationAdministration] only Reference(MedicationAdministration) 

* section[sectionSocialHistory] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionSocialHistory] ^extension.valueString = "Section"
* section[sectionSocialHistory] ^short = "IHE Social History Section"
* section[sectionSocialHistory] ^definition = "The social history section shall contain a narrative description of the person’s beliefs, home life, community life, work life, hobbies, and risky habits."
* section[sectionSocialHistory].code = $loinc#29762-2
* section[sectionSocialHistory].entry ^short = "Social History Entry"
* section[sectionSocialHistory].entry only Reference(Observation or DocumentReference)
* section[sectionSocialHistory].entry ^slicing.discriminator.type = #pattern
* section[sectionSocialHistory].entry ^slicing.discriminator.path = "reference"
* section[sectionSocialHistory].entry ^slicing.rules = #open
* section[sectionSocialHistory].entry ^slicing.description = "Health related 'lifestyle factors' or 'lifestyle observations' (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry ^slicing.ordered = false
* section[sectionSocialHistory].entry contains 
  smokingTobaccoUse 0..* and 
  alcoholUse 0..* and 
  employment 0..* 
* section[sectionSocialHistory].entry[smokingTobaccoUse] only Reference(ObservationTobaccoUseUvIps)
* section[sectionSocialHistory].entry[alcoholUse] only Reference(ObservationAlcoholUseUvIps) 
* section[sectionSocialHistory].entry[employment] only Reference(https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-EmploymentStatus or https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-UsualWork)

* section[sectionReviewOfSystems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionReviewOfSystems] ^extension.valueString = "Section"
* section[sectionReviewOfSystems] ^short = "IHE Review of Systems Section"
* section[sectionReviewOfSystems] ^definition = "The review of systems section shall contain a narrative description of the responses the patient gave to a set of routine questions on the functions of each anatomic body system."
* section[sectionReviewOfSystems].code = $loinc#10187-3

* section[sectionVitalSigns] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionVitalSigns] ^extension.valueString = "Section"
* section[sectionVitalSigns] ^short = "Vital Signs Section"
* section[sectionVitalSigns] ^definition = "The vital signs section shall contain a narrative description of the measurement results of a patient’s vital signs."
* section[sectionVitalSigns].code = $loinc#8716-3
* section[sectionVitalSigns].entry ^short = "Vital Signs"
* section[sectionVitalSigns].entry 0..* MS 
* section[sectionVitalSigns].entry only Reference(Observation or DocumentReference)
* section[sectionVitalSigns].entry ^slicing.discriminator.type = #pattern
* section[sectionVitalSigns].entry ^slicing.discriminator.path = "reference"
* section[sectionVitalSigns].entry ^slicing.rules = #open
* section[sectionVitalSigns].entry ^slicing.description = "Notable vital signs or physical findings."
* section[sectionVitalSigns].entry ^slicing.ordered = false
* section[sectionVitalSigns].entry contains vitalSign 0..* 
* section[sectionVitalSigns].entry[vitalSign] only Reference(http://hl7.org/fhir/StructureDefinition/vitalsigns) 

* section[sectionMedicalDevices] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedicalDevices] ^extension.valueString = "Section"
* section[sectionMedicalDevices] ^short = "Medical Devices Section"
* section[sectionMedicalDevices] ^definition = "Patient history of medical device use."
* section[sectionMedicalDevices].code = $loinc#46264-8
* section[sectionMedicalDevices].entry ^short = "medical device use"
* section[sectionMedicalDevices].entry 0..* MS 
* section[sectionMedicalDevices].entry only Reference(DeviceUseStatement or DocumentReference)
* section[sectionMedicalDevices].entry ^slicing.discriminator.type = #pattern
* section[sectionMedicalDevices].entry ^slicing.discriminator.path = "reference"
* section[sectionMedicalDevices].entry ^slicing.rules = #open
* section[sectionMedicalDevices].entry ^slicing.description = "medical device use."
* section[sectionMedicalDevices].entry ^slicing.ordered = false
* section[sectionMedicalDevices].entry contains deviceStatement 1..1
* section[sectionMedicalDevices].entry[deviceStatement] only Reference(DeviceUseStatementUvIps)

* section[sectionPhysicalExamination] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPhysicalExamination] ^extension.valueString = "Section"
* section[sectionPhysicalExamination] ^short = "IHE Physical Examination Section"
* section[sectionPhysicalExamination] ^definition = "The physical examination section contain a narrative description of the patient’s physical findings. "
* section[sectionPhysicalExamination].code = $loinc#29545-1
* section[sectionPhysicalExamination].entry ^short = "Physical findings"
* section[sectionPhysicalExamination].entry 0..* MS 
* section[sectionPhysicalExamination].entry only Reference(Observation or DocumentReference)
* section[sectionPhysicalExamination].section ^slicing.discriminator.type = #pattern
* section[sectionPhysicalExamination].section ^slicing.discriminator.path = "code"
* section[sectionPhysicalExamination].section ^slicing.rules = #open
* section[sectionPhysicalExamination].section ^slicing.description = "Physical Examination subsections performed"
* section[sectionPhysicalExamination].section ^slicing.ordered = false
* section[sectionPhysicalExamination].section contains 
  respiratorySystem 1..1 and
  heart 1..1
* section[sectionPhysicalExamination].section[respiratorySystem] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPhysicalExamination].section[respiratorySystem] ^extension.valueString = "subSection"
* section[sectionPhysicalExamination].section[respiratorySystem] ^short = "Respiratory System Exam"
* section[sectionPhysicalExamination].section[respiratorySystem] ^definition = "The respiratory system section shall contain a description of any type of respiratory exam."
* section[sectionPhysicalExamination].section[respiratorySystem].code = $loinc#11412-4
* section[sectionPhysicalExamination].section[respiratorySystem].entry ^short = "Physical findings of the respiratory system exam"
* section[sectionPhysicalExamination].section[respiratorySystem].entry 0..* MS 
* section[sectionPhysicalExamination].section[respiratorySystem].entry only Reference(Observation)
* section[sectionPhysicalExamination].section[heart] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPhysicalExamination].section[heart] ^extension.valueString = "subSection"
* section[sectionPhysicalExamination].section[heart] ^short = "Heart Exam"
* section[sectionPhysicalExamination].section[heart] ^definition = "The heart section shall contain a description of any type of heart exam."
* section[sectionPhysicalExamination].section[heart].code = $loinc#10200-4
* section[sectionPhysicalExamination].section[heart].entry ^short = "Physical findings of the heart exam"
* section[sectionPhysicalExamination].section[heart].entry 0..* MS 
* section[sectionPhysicalExamination].section[heart].entry only Reference(Observation)  
// TODO maybe add an acuity assessment in this section?

* section[sectionResults] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionResults] ^extension.valueString = "Section"
* section[sectionResults] ^short = "IHE Results Section"
* section[sectionResults] ^definition = "the patient’s relevant studies."
* section[sectionResults].code = $loinc#30954-2
* section[sectionResults].entry ^short = "results observations"
* section[sectionResults].entry 0..* MS 
* section[sectionResults].entry only Reference(Observation or DiagnosticReport or DocumentReference)
* section[sectionResults].entry ^slicing.discriminator.type = #pattern
* section[sectionResults].entry ^slicing.discriminator.path = "reference"
* section[sectionResults].entry ^slicing.rules = #open
* section[sectionResults].entry ^slicing.description = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient."
* section[sectionResults].entry ^slicing.ordered = false
* section[sectionResults].entry contains 
  results-observation 0..* and 
  results-diagnosticReport 0..* 
* section[sectionResults].entry[results-observation] only Reference(ObservationResultsUvIps)
* section[sectionResults].entry[results-diagnosticReport] only Reference(DiagnosticReportUvIps) 

* section[sectionCarePlan] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionCarePlan] ^extension.valueString = "Section"
* section[sectionCarePlan] ^short = "IHE Care Plan Section"
* section[sectionCarePlan] ^definition = "The care plan section shall contain a narrative description of the expectations for care including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient."
* section[sectionCarePlan].code = $loinc#18776-5
* section[sectionCarePlan].entry ^short = "Plans of Care"
* section[sectionCarePlan].entry 0..* MS 
* section[sectionCarePlan].entry only Reference(CarePlan or DocumentReference)
* section[sectionCarePlan].entry ^slicing.discriminator.type = #pattern
* section[sectionCarePlan].entry ^slicing.discriminator.path = "reference"
* section[sectionCarePlan].entry ^slicing.rules = #open
* section[sectionCarePlan].entry ^slicing.description = "entry used to represent structured care plans"
* section[sectionCarePlan].entry ^slicing.ordered = false
* section[sectionCarePlan].entry contains carePlan   0..*
* section[sectionCarePlan].entry[carePlan] only Reference(CarePlan) 

* section[sectionAdvancedirectives] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAdvancedirectives] ^extension.valueString = "Section"
* section[sectionAdvancedirectives] ^short = "IHE Advance directives section"
* section[sectionAdvancedirectives] ^definition = "Narrative description of the patient's advance directive."
* section[sectionAdvancedirectives].code = $loinc#42348-3
* section[sectionAdvancedirectives].entry ^short = "advance directive Consent"
* section[sectionAdvancedirectives].entry only Reference(Consent or DocumentReference)
* section[sectionAdvancedirectives].entry ^slicing.discriminator.type = #pattern
* section[sectionAdvancedirectives].entry ^slicing.discriminator.path = "reference"
* section[sectionAdvancedirectives].entry ^slicing.rules = #open
* section[sectionAdvancedirectives].entry ^slicing.description = "the patient's advance directive concent"
* section[sectionAdvancedirectives].entry ^slicing.ordered = false
* section[sectionAdvancedirectives].entry contains advanceDirectivesConsent 1..1
* section[sectionAdvancedirectives].entry[advanceDirectivesConsent] only Reference(Consent)

* section[sectionFunctionalStatus] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionFunctionalStatus] ^extension.valueString = "Section"
* section[sectionFunctionalStatus] ^short = "Functional Status"
* section[sectionFunctionalStatus] ^definition = "entry used to represent disabilities and functional assessments"
* section[sectionFunctionalStatus].code = $loinc#47420-5
* section[sectionFunctionalStatus].entry 0..* MS 
* section[sectionFunctionalStatus].entry ^short = "disabilities and functional assessments"
* section[sectionFunctionalStatus].entry only Reference(Condition or ClinicalImpression or DocumentReference)
* section[sectionFunctionalStatus].entry ^slicing.discriminator.type = #pattern
* section[sectionFunctionalStatus].entry ^slicing.discriminator.path = "reference"
* section[sectionFunctionalStatus].entry ^slicing.rules = #open
* section[sectionFunctionalStatus].entry ^slicing.description = "entry used to represent disabilities and functional assessments"
* section[sectionFunctionalStatus].entry ^slicing.ordered = false
* section[sectionFunctionalStatus].entry contains 
  disability 0..* and 
  functionalAssessment 0..* 
* section[sectionFunctionalStatus].entry[disability] only Reference(Condition)
* section[sectionFunctionalStatus].entry[functionalAssessment] only Reference(ClinicalImpression) 

* section[sectionPayers] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPayers] ^extension.valueString = "Section"
* section[sectionPayers] ^short = "Payers Section"
* section[sectionPayers] ^definition = "The Payers section contains data on the patient’s payers, whether a ‘third party’ insurance, self-pay, other payer or guarantor, or some combination."
* section[sectionPayers].code = $loinc#48768-6
* section[sectionPayers].entry ^short = "Coverage"
* section[sectionPayers].entry 0..* MS 
* section[sectionPayers].entry only Reference(Coverage or DocumentReference)
* section[sectionPayers].entry ^slicing.discriminator.type = #pattern
* section[sectionPayers].entry ^slicing.discriminator.path = "reference"
* section[sectionPayers].entry ^slicing.rules = #open
* section[sectionPayers].entry ^slicing.description = "Insurance or medical plan or a payment agreement"
* section[sectionPayers].entry ^slicing.ordered = false
* section[sectionPayers].entry contains coverage 0..*
* section[sectionPayers].entry[coverage] only Reference(Coverage)

* section[sectionIncident] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionIncident] ^extension.valueString = "Section"
* section[sectionIncident] ^short = "Incident Section"
* section[sectionIncident] ^definition = "Incident data"
* section[sectionIncident].code = $sct#272379006
* section[sectionIncident].entry ^short = "Incident data"
* section[sectionIncident].entry 0..* MS 
* section[sectionIncident].entry only Reference(Observation or Encounter or DocumentReference)
* section[sectionIncident].entry ^slicing.discriminator.type = #pattern
* section[sectionIncident].entry ^slicing.discriminator.path = "reference"
* section[sectionIncident].entry ^slicing.rules = #open
* section[sectionIncident].entry ^slicing.description = "TBD"
* section[sectionIncident].entry ^slicing.ordered = false
* section[sectionIncident].entry contains 
  incidentEvent 0..1 and 
  numberOfAffectedPeople 0..1 and 
  MassCasualtyIncidentIndicator 0..1 and 
  possibleInjury 0..1
* section[sectionIncident].entry[incidentEvent] only Reference(Paramedicine_Incident)
* section[sectionIncident].entry[numberOfAffectedPeople] only Reference(PSC_Number_of_Affected_People) 
* section[sectionIncident].entry[MassCasualtyIncidentIndicator] only Reference(PSC_Mass_Casualty_Incident) 
* section[sectionIncident].entry[numberofPatients] only Reference(PSC_Possible_Injury) 


* section[sectionTreatment] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionTreatment] ^extension.valueString = "Section"
* section[sectionTreatment] ^short = "Treatment Section"
* section[sectionTreatment] ^definition = "tbd."
* section[sectionTreatment].code = $sct#182991002
* section[sectionTreatment].entry ^short = "Treatments"
* section[sectionTreatment].entry 1..* MS 
* section[sectionTreatment].entry only Reference(Procedure or MedicationAdministration or DocumentReference)
* section[sectionTreatment].section ^slicing.discriminator.type = #pattern
* section[sectionTreatment].section ^slicing.discriminator.path = "code"
* section[sectionTreatment].section ^slicing.rules = #open
* section[sectionTreatment].section ^slicing.description = "The Nested sections of the treatment section"
* section[sectionTreatment].section ^slicing.ordered = false
* section[sectionTreatment].section contains
  proceduresPerformed 0..* MS and 
  medicationsAdministered 0..* MS 
* section[sectionTreatment].section[proceduresPerformed] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionTreatment].section[proceduresPerformed] ^extension.valueString = "subSection"
* section[sectionTreatment].section[proceduresPerformed] ^short = "IHE Procedures and Interventions Section"
* section[sectionTreatment].section[proceduresPerformed] ^definition = "The Procedures and Interventions section shall contain a narrative description of the actions performed by a clinician."
* section[sectionTreatment].section[proceduresPerformed].code = $loinc#29554-3
* section[sectionTreatment].section[proceduresPerformed].entry ^short = "Procedure Entry"
* section[sectionTreatment].section[proceduresPerformed].entry 0..* MS 
* section[sectionTreatment].section[proceduresPerformed].entry only Reference(Procedure or DocumentReference)  
* section[sectionTreatment].section[medicationsAdministered] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionTreatment].section[medicationsAdministered] ^extension.valueString = "subSection"
* section[sectionTreatment].section[medicationsAdministered] ^short = "IHE Medications Administered Section"
* section[sectionTreatment].section[medicationsAdministered] ^definition = "The medications administered section shall contain a narrative description of the relevant medications administered to a patient during the course of an encounter. It shall include entries for medication administration as described in the Entry Content Module."
* section[sectionTreatment].section[medicationsAdministered].code = $loinc#18610-6
* section[sectionTreatment].section[medicationsAdministered].entry ^short = "Medications Administered"
* section[sectionTreatment].section[medicationsAdministered].entry 0..* MS 
* section[sectionTreatment].section[medicationsAdministered].entry only Reference(MedicationAdministration or DocumentReference)  

* section[sectionTriage] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionTriage] ^extension.valueString = "Section"
* section[sectionTriage] ^short = "Triage section"
* section[sectionTriage] ^definition = "Acuity Assessment Section."
* section[sectionTriage].code = $loinc#11283-9
* section[sectionTriage].entry ^short = "Acuity Assessment"
* section[sectionTriage].entry 0..1 MS 
* section[sectionTriage].entry only Reference(Observation or DocumentReference)
// Triage-Acuity-Assessment  

* section[sectionInjury] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionInjury] ^extension.valueString = "Section"
* section[sectionInjury] ^short = "Injury section"
* section[sectionInjury] ^definition = "A section Describing the Injury event, mechanism, and associated observations."
* section[sectionInjury].code = $loinc#11374-6
* section[sectionInjury].entry ^short = "Injury observation entires"
* section[sectionInjury].entry 0..* MS 
* section[sectionInjury].entry only Reference(Observation or ConditionUvIps or MedicationRequest or MedicationAdministration or MedicationDispense or DocumentReference)
* section[sectionInjury].entry ^slicing.discriminator.type = #pattern
* section[sectionInjury].entry ^slicing.discriminator.path = "reference"
* section[sectionInjury].entry ^slicing.rules = #open
* section[sectionInjury].entry ^slicing.description = "Medications relevant for the scope of the summary document"
* section[sectionInjury].entry ^slicing.ordered = false
* section[sectionInjury].entry contains 
  injuryCause 0..* and 
  injuryMechanism 0..* and 
  bodyProtection 0..* and 
  collissionObservations 0..* and 
  fallObservations 0..*
* section[sectionInjury].entry[injuryCause] only Reference(ConditionUvIps)
* section[sectionInjury].entry[injuryMechanism] only Reference(Injury_Mechanism)    
* section[sectionInjury].entry[bodyProtection] only Reference(Body_Protection)  
* section[sectionInjury].entry[collissionObservations] only Reference(Observation)  
* section[sectionInjury].entry[fallObservations] only Reference(Fall_Height)  


Profile:   Injury_Mechanism
Parent: Observation
Id:             Injury.Mechanism
Title: "Mechanism Type"
Description:      "The mechanism of the event which caused the injury."
* code = $loinc#67494-5
//* valueCodeableConcept only from Injury_Mechanism_VS (extensible) 

Profile:   Body_Protection
Parent: Observation
Id:             Body.Protection
Title: "Body Protection"
Description:      "Patient Protective Equipment."
* code = $sct#705338000
//* valueCodeableConcept only from Protective_Equipment_VS (extensible) 

Profile:   Fall_Height
Parent: Observation
Id:             Fall.Height
Title: "Fall Height"
Description:      "The distance the patient fell, measured from the lowest point of the patient to the ground."
* code = $loinc#67501-7
* valueInteger 0..1 MS 

Invariant: psc-required-entry-reference
Description: "Either section.entry or emptyReason are present"
Expression: "(entry.reference.exists() or emptyReason.exists())"
Severity: #error 
