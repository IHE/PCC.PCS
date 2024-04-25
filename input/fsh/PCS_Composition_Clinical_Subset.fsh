Profile:   IHE_PCC_ParamedicineSummary_Composition_ClinicalSubset
Parent: Composition
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


* text MS
* identifier MS
* status MS 
* type 1..1 MS
* insert requireAtLeastOneMatch(type.coding, summary, $loinc#77596-5)
* category 1..* MS 
* insert requireAtLeastOneMatch(category, pstat, $loinc#101135-2)
* subject 1..1 MS 
* subject only Reference(https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient or Paramedicine_Patient)
* encounter MS only Reference(IHE_PCC_ParamedicineSummary_Encounter_ClinicalSubset)
* date MS 
* author MS 
* title MS
* title = "Paramedicine Summary Clinical Subset"
* confidentiality MS 
* attester MS 
* attester.mode MS 
* attester.time MS 
* attester.party MS
* custodian MS 
// Language Code?
// setId and versionNumber?
* event MS 
* insert requireAtLeastOneMatch(event.code, obs, http://terminology.hl7.org/CodeSystem/v3-ActCode#OBS)
* event ^slicing.discriminator.type = ##pattern
* event ^slicing.discriminator.path = "code"
* event ^slicing.rules = #open
* event ^slicing.description = "The care provisioning being documented"
* event ^slicing.ordered = false
* event contains careProvisioningEvent 0..1 
* event[careProvisioningEvent].code = http://terminology.hl7.org/CodeSystem/v3-ActClass#ENC 

* section.code 1..1 MS  
* section.code ^type.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips"
* section.title 1..1 MS
* section.text 1..1 MS 
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Paramedicine Summary Composition ClinicalSubset"
* section ^slicing.ordered = false
* section contains
  sectionDispatch 0..1 and   
  sectionWIDControle 0..1 and 
  sectionIncident 0..1 and 
  //Note: add?sectionResponce/Drive section 0..1 and or keep in encounter?
  sectionTreatment 0..1 MS and 
  sectionPhysicalExams 0..1 MS and 
  sectionReviewOfSystems 0..1 MS and 
  //sectionMedical Condition Working Diagnosis/ Prelimimary Impressions 0..1 and
  sectionInjury 0..1 and
  sectionCardiacArrestEvent 0..1 and  
  sectionAirwayManagement 0..1 and 
  sectionTransportation 0..1 and 
  // sectionPatient Position? or just put observations in trasnport? 
  sectionConsultingExternalProfessional 0..1 and 
  //SectionAgreements with patient? 0..1 and 
  // sectionConsent 0..1 and
  // section Comment 0..1 and
  sectionMedications 1..1 MS and
  sectionAllergies 1..1  MS and
  sectionProblems 1..1  MS and 
  sectionProceduresHx 0..1 MS and 
  sectionImmunizations 0..1 MS and
  sectionMedicalDevices 0..1 MS and 
  sectionResults 0..1 MS and 
  sectionVitalSigns 1..1  MS and
  sectionPastIllnessHx 0..1 MS and 
  sectionFunctionalStatus 0..1 MS and 
  sectionPlanOfCare 0..1 and 
  sectionSocialHistory 0..1 and 
  sectionPregnancyHx 0..1 and 
  sectionAdvanceDirectives 0..1 and 
  secitonAdditionalDocumentation 0..1 MS and 
  sectionProtocol and 
  sectionPayor 0..1


* section[sectionDispatch] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionDispatch] ^extension.valueString = "Section"
* section[sectionDispatch] ^short = "Dispatch Section"
* section[sectionDispatch] ^definition = "TBD"
* section[sectionDispatch].code = $loinc#67660-1
* section[sectionDispatch].emptyReason MS 
* section[sectionDispatch].entry ^short = "Information related to dispatch instructions"
* section[sectionDispatch].entry 0..* MS 
* section[sectionDispatch].entry contains 
  emergencyServicesCalledDateTime

_________________________________________________________________________________________________________________________


* section[sectionPastIllnessHx] 1..1
* section[sectionProceduresHx] 1..1

* section[sectionPregnancyHx].entry contains 
  estimatedDueDate 0..1 and 
  estimatedGestationalAge 0..1
* section[sectionPregnancyHx].entry[estimatedDueDate] only Reference(Observation)
* section[sectionPregnancyHx].entry[estimatedGestationalAge] only Reference(Observation)

* section[sectionAdvanceDirectives] 1..1
// eHisotry.16 presence of emergency form
//* section[sectionVitalSigns] 1..1
* section[sectionVitalSigns].entry[vitalSign] only Reference(http://hl7.org/fhir/StructureDefinition/vitalsigns or ParamedicineVitalSigns) 

// Note: in addition to the sections defined in IPS...
* section contains
    sectionBarriersToCare 0..1 MS and
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
    sectionIncident 1..1 and 
    ReasonForReferral 0..* and
    sectionMassCasualtyIncident 0..1 MS and 
	  sectionCariacArrestEvent 0..1 and
    sectionTransport 0..1 and
	  sectionInjuryEvent 0..1

//*note 

* section[sectionIncident] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionIncident] ^extension.valueString = "Section"
* section[sectionIncident] ^short = "Incident"
* section[sectionIncident] ^definition = "The Incident section of the Paramedicine Summary that will any references that go with the incident (e.g. Encounter, Observations)."
* section[sectionIncident].code = $loinc#67800-3
* section[sectionIncident].code 1..1
* section[sectionIncident].title 1..1
* section[sectionIncident].text MS
* section[sectionIncident].text ^definition = "Text summary of the incident."
* section[sectionIncident].entry ^definition = "Any Resources from the incident (e.g. Encounter, Observations)."

* section[review_of_systems_section] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[review_of_systems_section] ^extension.valueString = "Section"
* section[review_of_systems_section] ^short = "Review of Systems"
* section[review_of_systems_section] ^definition = "TBD"
* section[review_of_systems_section].code = $loinc#10187-3
* section[review_of_systems_section].code 1..1
* section[review_of_systems_section].title 1..1
* section[review_of_systems_section].entry only Reference(ClinicalImpression or Observation)
* section[review_of_systems_section].entry ^slicing.discriminator.type = #profile
* section[review_of_systems_section].entry ^slicing.discriminator.path = "resolve()"
* section[review_of_systems_section].entry ^slicing.rules = #open
* section[review_of_systems_section].entry ^short = "Review of Systems"
* section[review_of_systems_section].entry ^definition = "TBD"
* section[review_of_systems_section].entry contains
  lastOralIntake 0..1 and 
  lastKnownWell 0..1 and 
  patientAcuity 0..* 

* section[review_of_systems_section].entry[lastOralIntake] only Reference(Last_Oral_Intake)
* section[review_of_systems_section].entry[lastKnownWell] only Reference(Last_Known_Well)
* section[review_of_systems_section].entry[patientAcuity] only Reference(Observation)


* section[sectionBarriersToCare] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionBarriersToCare] ^extension.valueString = "Section"
* section[sectionBarriersToCare] ^short = "Barriers To Care "
* section[sectionBarriersToCare] ^definition = "TBD"
* section[sectionBarriersToCare].code = $loinc#67515-7
* section[sectionBarriersToCare].code 1..1
* section[sectionBarriersToCare].title 1..1
* section[sectionBarriersToCare].entry only Reference(BarriersTocare)

* section[sectionMedications].entry contains medicationsAdministered 0..* MS 

* section[sectionProceduresPerformed] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProceduresPerformed] ^extension.valueString = "Section"
* section[sectionProceduresPerformed] ^short = "Procedures Performed"
* section[sectionProceduresPerformed] ^definition = "This section contains the procedures that were performed during the PCS encounter"
* section[sectionProceduresPerformed].code = $loinc#67803-7
* section[sectionProceduresPerformed].code 1..1
* section[sectionProceduresPerformed].title 1..1
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
* section[Payors].code 1..1
* section[Payors].title 1..1
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
* section[PhysicalExams].code 1..1
* section[PhysicalExams].title 1..1
* section[PhysicalExams].entry only Reference(Observation)
// Note:If there is no entry available in this section then a data absent Reason SHALL be provided 


* section[ReasonForReferral] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[ReasonForReferral] ^extension.valueString = "Section"
* section[ReasonForReferral] ^short = "Reason for Referral"
* section[ReasonForReferral] ^definition = "The coded Detailed Physical Examination section shall contain only the required and optional subsections performed."
* section[ReasonForReferral].code = $loinc#42349-1
* section[ReasonForReferral].code 1..1
* section[ReasonForReferral].title 1..1
* section[ReasonForReferral].entry only Reference(Observation or Condition)

* section[sectionMassCasualtyIncident] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMassCasualtyIncident] ^extension.valueString = "Section"
* section[sectionMassCasualtyIncident] ^short = "Mass Casulaty incident"
* section[sectionMassCasualtyIncident] ^definition = "TBD"
* section[sectionMassCasualtyIncident].code = $loinc#67490-3
* section[sectionMassCasualtyIncident].code 1..1
* section[sectionMassCasualtyIncident].title 1..1
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
* section[sectionCariacArrestEvent].code 1..1
* section[sectionCariacArrestEvent].title 1..1
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
* section[sectionInjuryEvent].code 1..1
* section[sectionInjuryEvent].title 1..1
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