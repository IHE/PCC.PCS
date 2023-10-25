Profile:   IHE_PCS_Composition_CS
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id:             IHE.PCC.PCS.Composition.CS
Title: "Paramedicince Care Summary Composition Clinical Subset"
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

* subject 1..1
* encounter 1..1
* encounter only Reference(IHE_PCS_Encounter_ClinicalSubset) 

* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category 1..
* category contains ParamedicineSummaryDocument  1..1
* category[ParamedicineSummaryDocument] = $loinc#67796-3

* event.code 1..*
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActClass#ENC

* section[sectionPastIllnessHx] 1..1
* section[sectionProceduresHx] 1..1

* section[sectionAdvanceDirectives] 1..1
// eHisotry.16 presence of emergency form
* section[sectionVitalSigns] 1..1
* section[sectionVitalSigns].entry Reference (Observation or VitalSigns or ParamedicineVitalSigns)

// Note: in addition to the sections defined in IPS...
* section contains
    sectionBarriersToCare 0..1 MS and
// 	  sectionMedicationsAdministered 0..1 MS and 
	  sectionProceduresPerformed 1..1 MS and
    review_of_systems_section 0..1 MS and
    PhysicalExams 1..1 MS and 
    Payors 0..1 and 
//    LastOralIntake 0..1 MS and 
//Note: should just be an observation, how do i include observations in this composition without having to make a section for it. OR is this an observation on the fucntional status?
//    LastKnownWell 0..1 MS and 
//Note: should just be an observation, how do i include observations in this composition without having to make a section for it. OR is this an observation on the fucntional status?
    //PatientAcuity 0..1 MS and 
	  //sectionReviewOfSystems 1..1 MS and
    //PhysicalExams 0..1 MS and 
//Note: Open issue are Physical exams, review of systems, and patient acuity elements that are sub entries to functional status? commented out until confirmed 
    sectionMassCasualtyIncident 0..1 MS and 
	  sectionCariacArrestEvent 0..1 and
	  sectionInjuryEvent 0..1

//*note 



//* section[sectionProblems].entry MS 
//* extension contains ProblemType named ProblemType 0..1
//* extension contains LastKnownWell named LastKnownWell 0..1
//* extension contains LastOralIntake named LastOralIntake 0..*



* section[review_of_systems_section] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[review_of_systems_section] ^extension.valueString = "Section"
* section[review_of_systems_section] ^short = "Review of Systems"
* section[review_of_systems_section] ^definition = "TBD"
* section[review_of_systems_section].code = $loinc#10187-3
* section[review_of_systems_section].code MS
* section[review_of_systems_section].entry only Reference(ClinicalImpression or Observation)
* section[review_of_systems_section].entry ^slicing.discriminator.type = #profile
* section[review_of_systems_section].entry ^slicing.discriminator.path = "resolve()"
* section[review_of_systems_section].entry ^slicing.rules = #open
* section[review_of_systems_section].entry ^short = "Review of Systems"
* section[review_of_systems_section].entry ^definition = "TBD"
* section[review_of_systems_section].entry contains
//  exams 0..* MS and 
  lastOralIntake 0..1 and 
  lastKnownWell 0..1 

* section[review_of_systems_section].entry[lastOralIntake] only Reference(Last_Oral_Intake)
* section[review_of_systems_section].entry[lastKnownWell] only Reference(Last_Known_Well)
//* section[review_of_systems_section].entry[exams] only Reference()
//Note: 


* section[sectionBarriersToCare] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionBarriersToCare] ^extension.valueString = "Section"
* section[sectionBarriersToCare] ^short = "Barriers To Care "
* section[sectionBarriersToCare] ^definition = "TBD"
* section[sectionBarriersToCare].code = $loinc#67515-7
* section[sectionBarriersToCare].code MS
* section[sectionBarriersToCare].entry only Reference(BarriersTocare)

* section[sectionMedications].entry contains medicationsAdministered 0..* MS 

* section[sectionProceduresPerformed] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProceduresPerformed] ^extension.valueString = "Section"
* section[sectionProceduresPerformed] ^short = "Procedures Performed"
* section[sectionProceduresPerformed] ^definition = "This section contains the procedures that were performed during the PCS encounter"
* section[sectionProceduresPerformed].code = $loinc#67803-7
* section[sectionProceduresPerformed].code MS
* section[sectionProceduresPerformed].entry ..* MS
* section[sectionProceduresPerformed].entry only Reference(ProcedureUvIps)
* section[sectionProceduresPerformed].entry ^slicing.discriminator.type = #profile
* section[sectionProceduresPerformed].entry ^slicing.discriminator.path = "resolve()"
* section[sectionProceduresPerformed].entry ^slicing.rules = #open
* section[sectionProceduresPerformed].entry ^short = "the procedures performed"
* section[sectionProceduresPerformed].entry ^definition = "This section contains the procedures that were performed during the PCS encounter"
* section[sectionProceduresPerformed].entry only Reference(ProcedureUvIps)

* section[Payors] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[Payors] ^extension.valueString = "Section"
* section[Payors] ^short = "Payors"
* section[Payors] ^definition = "The Payers section contains data on the patient’s payers, whether a ‘third party’ insurance, self-pay, other payer or guarantor, or some combination. ."
* section[Payors].code = $loinc#48768-6
* section[Payors].code MS
* section[Payors].entry only Reference(Coverage)
* section[Payors].entry ^slicing.discriminator.type = #profile
* section[Payors].entry ^slicing.discriminator.path = "resolve()"
* section[Payors].entry ^slicing.rules = #open
* section[Payors].entry ^short = "the Patient's insurance information"
* section[Payors].entry ^definition = "Contains data on the patient's payers, whether a 'third party' insurance, self-pay, other payer or guarantor, or some combination of payers, and is used to define which entity is the responsible fiduciary for the financial aspects of a patient's care"
* section[Payors].entry contains Coverage 0..1 MS
* section[Payors].entry[Coverage] only Reference(Coverage)

* section[PhysicalExams] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[PhysicalExams] ^extension.valueString = "Section"
* section[PhysicalExams] ^short = "Physical Exams"
* section[PhysicalExams] ^definition = "The coded Detailed Physical Examination section shall contain only the required and optional subsections performed."
* section[PhysicalExams].code = $loinc#29545-1
* section[PhysicalExams].code MS
* section[PhysicalExams].entry only Reference(Observation)
// Note:If there is no entry available in this section then a data absent Reason SHALL be provided 

//* section[PatientAcuity] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
//* section[PatientAcuity] ^extension.valueString = "Section"
//* section[PatientAcuity] ^short = "Patient Acuity"
//* section[PatientAcuity] ^definition = "TBD"
//* section[PatientAcuity].code = $loinc#8687-6
//* section[PatientAcuity].code MS
//* section[PatientAcuity].entry ..* MS
//* section[PatientAcuity].entry only Reference(Observation)
//* section[PatientAcuity].entry ^slicing.discriminator.type = #pattern
//* section[PatientAcuity].entry ^slicing.discriminator.path = "resolve()"
//* section[PatientAcuity].entry ^slicing.rules = #open
//* section[PatientAcuity].entry ^short = "TBD"
//* section[PatientAcuity].entry ^definition = "TBD"
//* section[PatientAcuity].entry contains
 // InitialPatientAcuity 0..1 and
 // FinalPatientAcuity 0..1

//Note: where would patient acuity be documented 


* section[sectionMassCasualtyIncident] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMassCasualtyIncident] ^extension.valueString = "Section"
* section[sectionMassCasualtyIncident] ^short = "Mass Casulaty incident"
* section[sectionMassCasualtyIncident] ^definition = "TBD"
* section[sectionMassCasualtyIncident].code = $loinc#67490-3
* section[sectionMassCasualtyIncident].code MS
* section[sectionMassCasualtyIncident].entry ..* 
* section[sectionMassCasualtyIncident].entry ^slicing.discriminator.type = #pattern
* section[sectionMassCasualtyIncident].entry ^slicing.discriminator.path = "resolve()"
* section[sectionMassCasualtyIncident].entry ^slicing.rules = #open
* section[sectionMassCasualtyIncident].entry ^short = "TBD"
* section[sectionMassCasualtyIncident].entry ^definition = "TBD"
* section[sectionMassCasualtyIncident].entry contains
  MassCasualtyIncidentIndicator 0..1 and
	NumberofPatients 0..1 and
	TriageClassification 0..1 and 
	DisasterType 0..1 
//Note: eDisposition.29 - Crew Disposition
// make individual observations 
//* section[sectionMassCasualtyIncident].entry[MassCasualtyIncidentIndicator].valueCodeableConcept from http://terminology.hl7.org/ValueSet/v2-0136
// observation component if no components are used, if yes theyn the rest of them can be used as cpmpoents can make a section just for events such as mass acasulaity/ injury/ cardiac/ airway management  
//* section[sectionMassCasualtyIncident].entry[NumberofPatients].value[x]
//* section[sectionMassCasualtyIncident].entry[TriageClassification].valueCodeableConcept from NEMSIS.Triage.Classification.for.MCI.Patient.VS (example)
//* section[sectionMassCasualtyIncident].entry[DisasterType].valueCodeableConcept from NEMSIS.Natural.Suspected.Disaster.VS (example)


* section[sectionCariacArrestEvent] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionCariacArrestEvent] ^extension.valueString = "Section"
* section[sectionCariacArrestEvent] ^short = "Paramedicine Cariac Arrest Event" 
* section[sectionCariacArrestEvent] ^definition = "The EMS cardiac arrest event reportable observations."
* section[sectionCariacArrestEvent].code = $loinc#67799-7 
* section[sectionCariacArrestEvent].code MS
* section[sectionCariacArrestEvent].entry ..* 
* section[sectionCariacArrestEvent].entry ^short = "Paramedicine Cariac Arrest Event observations."
* section[sectionCariacArrestEvent].entry ^definition = "The observations related to a Paramedicine Cariac Arrest Event."
* section[sectionCariacArrestEvent].entry only Reference(Observation or Procedure or Condition)
//TODO: Cariac Arrest Event orgaizer
//TODO removed the slice as there is no profile to distinguish off of.

* section[sectionInjuryEvent] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionInjuryEvent] ^extension.valueString = "Section"
* section[sectionInjuryEvent] ^short = "Injury event summary"
* section[sectionInjuryEvent] ^definition = "The injury event summary contains observations pertaining to a trauma event, including the severity, location and causes (e.g. primary and supplemental causes, whether or not work-related) of the injury."
* section[sectionInjuryEvent].code = $loinc#74209-8
* section[sectionInjuryEvent].code MS
* section[sectionInjuryEvent].entry ..* 
//Note: Required if Known
* section[sectionInjuryEvent].entry only Reference(Observation)
* section[sectionInjuryEvent].entry ^short = "The EMS protocols used to direct the clinical care of the patient."
* section[sectionInjuryEvent].entry ^definition = """
The EMS protocols used to direct the clinical care of the patient.
- TraumaInjuryObservation
- InjuryCauseObservation
  - Primary Injury Cause Observation
  - Supplemental Injury Cause Observation
  - Work Related Injury Observation
- InjuryVehicalObservation
  - Main Area of the Vehicle Impacted by the Collision 
  - Location of Patient in Vehicle
  - Seat Occupied
  - Automated Collision Notification Data
- SafetyEquipmentObservation
  - Airbag Deployment Observation
  - Safety Equipment Used Observation
  - Use of Occupant Safety Equipment
http://www.hl7.org/documentcenter/private/standards/cda/CDAR2_IG_TRAUMAREG_R1_2016AUG.pdf pg 5.2 Injury Event for reference 
"""
//Update: this is the section with optional content related to the Trauma opton in the Actor options table