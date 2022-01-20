Profile:   IHE_PCS_Composition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id:             IHE.PCC.PCS.Composition
Title: "Paramedicince Care Summary Composition"
Description:      "composition of the FHIR elements that are used to build the FHIR Document for the Paramedicine Care Summary"

* subject 1..1
* encounter 1..1
* encounter = Reference(IHE.PCC.PCS.Encounter.CompleteReport) 
// TODO: encounter = Reference(IHE-PCS-Encounter-ClinicalSubset)


* event.code 1..*
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActClass#ENC
* section contains
	sectionProceduresPerformed 1..1 MS and
    sectionCoverage 1..1 MS and
	sectionServiceRequest 1..1 and
	sectionCareTeam 1..1 MS and 
	sectionParamedicineNote 1..1 MS and 
	sectionPhysicianCertificationStatement 0..1 and 
	sectionTriage 0..1 and
	sectionReviewOfSystems 1..1 MS and 
	sectionEMSProtocols 0..* and 
	sectionEMSCardiacArrestEvent 0..1 
	
* section[sectionMedications].entry contains 
	medicationStatement 1..* and
	medicationAdministered 0..*
* entry[medicationAdministration] = reference(MedicationStatementIPS and MedicationAdministration)
//Note: MedicationStatementIPS.partOf Reference SAHLL be MedicationAdministration


* section[sectionFunctionalStatus] 1..1
//Note: Functional Status entry:disability is where the eHistory.01 - Barriers to Patient Care conditions can be represented, such as Speech Impaired, Sight Impaired, and Hearing Impaired
//Note: entry:functionalAssessment.. use clinical imporession for the Neurological Assessment, and Mental Status Assessmens 


* section[sectionAdvanceDirectives] 1..1


* section[sectionProceduresHx].entry contains
	procedure 1..* and 
	procedurePerformed 0..*
Slice: procedure
* section[sectionProceduresHx].entry ^slicing.discriminator.type = #pattern
* section[sectionProceduresHx].entry ^slicing.discriminator.path = "resolve()" 
* section[sectionProceduresHx].entry ^slicing.rules = #open
* section[sectionProceduresHx].entry ^slicing.ordered = true
* section[sectionProceduresHx].entry ^slicing.description = The procedure section entry that holds the patient's procedure history. 
* section[sectionProceduresHx].entry.MedicationAdministered = reference(ProcedureUvIps)

Slice: procedurePerformed
* section[sectionProceduresPerformed].entry ^slicing.discriminator.type = #pattern
* section[sectionProceduresPerformed].entry ^slicing.discriminator.path = "resolve()" 
* section[sectionProceduresPerformed].entry ^slicing.rules = #open
* section[sectionProceduresPerformed].entry ^slicing.ordered = true
* section[sectionProceduresPerformed].entry ^slicing.description = The procedure hsitroy section entry that holds the procedures perfomed on the patient during the care event. 
* section[sectionProceduresPerformed].entry.MedicationAdministered = reference(ProcedureUvIps) 


* section[sectionCoverage] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionCoverage] ^extension.valueString = "Section"
* section[sectionCoverage] ^short = "Insurance Section"
* section[sectionCoverage] ^definition = "The insurance information for the patient to cover the encounter event."
* section[sectionCoverage].code = $loinc#48768-6
* section[sectionCoverage].code MS
* section[sectionCoverage].entry ..1 MS
* section[sectionCoverage].entry only Reference(Coverage)
* section[sectionCoverage].entry ^slicing.discriminator.type = #profile
* section[sectionCoverage].entry ^slicing.discriminator.path = "resolve()"
* section[sectionCoverage].entry ^slicing.rules = #open
* section[sectionCoverage].entry ^short = "the Patient's insurance information"
* section[sectionCoverage].entry ^definition = "Contains data on the patient's payers, whether a 'third party' insurance, self-pay, other payer or guarantor, or some combination of payers, and is used to define which entity is the responsible fiduciary for the financial aspects of a patient's care"
* section[sectionCoverage].entry contains Coverage 0..1 MS
* section[sectionCoverage].entry[Coverage] only Reference(Coverage)

* section[sectionCareTeam] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionCareTeam] ^extension.valueString = "Section"
* section[sectionCareTeam] ^short = "Care Team Section"
* section[sectionCareTeam] ^definition = "The insurance information for the patient to cover the encounter event."
* section[sectionCareTeam].code = $loinc#86744-0
* section[sectionCareTeam].code MS
* section[sectionCareTeam].entry ..1 MS
* section[sectionCareTeam].entry only Reference(CareTeam)
* section[sectionCareTeam].entry ^slicing.discriminator.type = #profile
* section[sectionCareTeam].entry ^slicing.discriminator.path = "resolve()"
* section[sectionCareTeam].entry ^slicing.rules = #open
* section[sectionCareTeam].entry ^short = "The Care Team present for the PCS, including those that are not the crew"
* section[sectionCareTeam].entry ^definition = "This term is used to describe the focus of the Care team that a particular care team member belongs to. An individual patient may have multiple care teams including one focused on a particular condition, another on an episode of care, another on an encounter, and one for care coordination. Care team members include the people or organizations who are participating in or are intended to participate in the coordination and delivery of care for an individual. This term was created for, but is not limited in use to, HL7 Clinical Document Architecture (CDA) Care Team template and the FHIR Release 3 CareTeam resource."
* section[sectionCareTeam].entry contains Coverage 0..1 MS
* section[sectionCareTeam].entry[CareTeam] only Reference(CareTeam)

* section[sectionParamedicineNote] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionParamedicineNote] ^extension.valueString = "Section"
* section[sectionParamedicineNote] ^short = "Paramedicince Note Section"
* section[sectionParamedicineNote] ^definition = "The narrative Summary ."
* section[sectionParamedicineNote].code = $loinc#28563-5
* section[sectionParamedicineNote].text 1..1 MS
//This is where the Paramedicince Note is in the FHIR Build 

* section[sectionPhysicianCertificationStatement] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPhysicianCertificationStatement] ^extension.valueString = "Section"
* section[sectionPhysicianCertificationStatement] ^short = "Physician Certification Statement Section"
* section[sectionPhysicianCertificationStatement] ^definition = "Indication of whether a physician certification statement (PCS) is available documenting the medical necessity or the EMS encounter."
* section[sectionPhysicianCertificationStatement].code = $loinc#52016-3
* section[sectionPhysicianCertificationStatement].code MS
* section[sectionPhysicianCertificationStatement].entry ..1 MS
* section[sectionPhysicianCertificationStatement].entry only Reference(DocumentReference)
* section[sectionPhysicianCertificationStatement].entry ^slicing.discriminator.type = #profile
* section[sectionPhysicianCertificationStatement].entry ^slicing.discriminator.path = "resolve()"
* section[sectionPhysicianCertificationStatement].entry ^slicing.rules = #open
* section[sectionPhysicianCertificationStatement].entry ^short = "The documentarion of the medical necessity for the encounter."
* section[sectionPhysicianCertificationStatement].entry ^definition = "Indication of whether a physician certification statement (PCS) is available documenting the medical necessity or the EMS encounter."
* section[sectionPhysicianCertificationStatement].entry contains PhysicianCertificationStatement 0..1 MS
* section[sectionPhysicianCertificationStatement].entry[PhysicianCertificationStatement] only Reference(DocumentReference)

* section[sectionTriage] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionTriage] ^extension.valueString = "Section"
* section[sectionTriage] ^short = "Triage Section"
* section[sectionTriage] ^definition = "Triage of the Patient during the encounter."
* section[sectionTriage].code = $loinc#LG38818-7
* section[sectionTriage].code MS
* section[sectionTriage].entry ..1 MS
* section[sectionTriage].entry only Reference(RiskAssessment or Observation)
* section[sectionTriage].entry ^slicing.discriminator.type = #profile
* section[sectionTriage].entry ^slicing.discriminator.path = "resolve()"
* section[sectionTriage].entry ^slicing.rules = #open
* section[sectionTriage].entry ^short = "The documentarion of the triage criteria of the patient."
* section[sectionTriage].entry ^definition = "The documentarion of the triage criteria of the patient."
* section[sectionTriage].entry contains Exams 0..1 MS
* section[sectionTriage].entry[Exams] only Reference(RiskAssessment or Observation) 


* section[sectionReviewOfSystems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionReviewOfSystems] ^extension.valueString = "Section"
* section[sectionReviewOfSystems] ^short = "Review of Systems Section"
* section[sectionReviewOfSystems] ^definition = "The Review of systems section contains a relevant collection of symptoms and functions systematically gathered by a clinician. It includes symptoms the patient is currently experiencing, some of which were not elicited during the history of present illness, as well as a potentially large number of pertinent negatives, for example, symptoms that the patient denied experiencing."
* section[sectionReviewOfSystems].code = $loinc#10187-3
* section[sectionReviewOfSystems].code MS
* section[sectionReviewOfSystems].entry ..1 MS
* section[sectionReviewOfSystems].entry only Reference(Observation)
* section[sectionReviewOfSystems].entry ^slicing.discriminator.type = #profile
* section[sectionReviewOfSystems].entry ^slicing.discriminator.path = "resolve()"
* section[sectionReviewOfSystems].entry ^slicing.rules = #open
* section[sectionReviewOfSystems].entry ^short = "The documentarion of the medical necessity for the encounter."
* section[sectionReviewOfSystems].entry ^definition = "The coded Review of systems section contains a relevant collection of symptoms and functions systematically gathered by a clinician. It includes symptoms the patient is currently experiencing, some of which were not elicited during the history of present illness, as well as a potentially large number of pertinent negatives, for example, symptoms that the patient denied experiencing."
* section[sectionReviewOfSystems].entry contains Exams 0..1 MS
* section[sectionReviewOfSystems].entry[Exams] = Reference(Observation)
//Note TBD add references for Observation profiles for last known well, and last oral intake, and patient acuity

* section[sectionEMSProtocols] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionEMSProtocols] ^extension.valueString = "Section"
* section[sectionEMSProtocols] ^short = "EMS Protocols Section"
* section[sectionEMSProtocols] ^definition = "The protocols used by EMS personnel to direct the clinical care of the patient."
* section[sectionEMSProtocols].code = $loinc#67663-5
* section[sectionEMSProtocols].code MS
* section[sectionEMSProtocols].entry ..1
* section[sectionEMSProtocols].entry only Reference(Observation)
* section[sectionEMSProtocols].entry ^slicing.discriminator.type = #profile
* section[sectionEMSProtocols].entry ^slicing.discriminator.path = "resolve()"
* section[sectionEMSProtocols].entry ^slicing.rules = #open
* section[sectionEMSProtocols].entry ^short = "The EMS protocols used to direct the clinical care of the patient."
* section[sectionEMSProtocols].entry ^definition = "The EMS protocols used to direct the clinical care of the patient."
* section[sectionEMSProtocols].entry contains 
	ProtocolsUsed 0..1 MS and
	ProtocolAgeCategory 0..1 
* section[sectionEMSProtocols].entry[ProtocolsUsed] only Reference(Observation)
* section[sectionEMSProtocols].entry[ProtocolAgeCategory] only Reference(Observation)

* section[sectionEMSCardiacArrestEvent] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionEMSCardiacArrestEvent] ^extension.valueString = "Section"
* section[sectionEMSCardiacArrestEvent] ^short = "EMS Cardiac Arrest"
* section[sectionEMSCardiacArrestEvent] ^definition = "The protocols used by EMS personnel to direct the clinical care of the patient."
* section[sectionEMSCardiacArrestEvent].code = $loinc#67663-5
* section[sectionEMSCardiacArrestEvent].code MS
* section[sectionEMSCardiacArrestEvent].entry ..1 MS
* section[sectionEMSCardiacArrestEvent].entry only Reference(Observation or Condition or Procedure)
* section[sectionEMSCardiacArrestEvent].entry ^slicing.discriminator.type = #profile
* section[sectionEMSCardiacArrestEvent].entry ^slicing.discriminator.path = "resolve()"
* section[sectionEMSCardiacArrestEvent].entry ^slicing.rules = #open
* section[sectionEMSCardiacArrestEvent].entry ^short = "The EMS protocols used to direct the clinical care of the patient."
* section[sectionEMSCardiacArrestEvent].entry ^definition = "The EMS protocols used to direct the clinical care of the patient."
* section[sectionEMSCardiacArrestEvent].entry contains 
	CardiacArrestIndication 0..1 MS and
	CardiacArrestEvent 0..1 
* section[sectionEMSCardiacArrestEvent].entry[CardiacArrestIndication] only Reference(Observation)
* section[sectionEMSCardiacArrestEvent].entry[CardiacArrestEvent] only Reference(Condition or Procedure)

* section[sectionBilling] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionBilling] ^extension.valueString = "Section"
* section[sectionBilling] ^short = "EMS Cardiac Arrest"
* section[sectionBilling] ^definition = "The protocols used by EMS personnel to direct the clinical care of the patient."
* section[sectionBilling].code = $loinc#67663-5
* section[sectionBilling].code MS
* section[sectionBilling].entry ..* 
* section[sectionBilling].entry only Reference(Observation or Condition or Procedure)
* section[sectionBilling].entry ^slicing.discriminator.type = #profile
* section[sectionBilling].entry ^slicing.discriminator.path = "resolve()"
* section[sectionBilling].entry ^slicing.rules = #open
* section[sectionBilling].entry ^short = "The EMS protocols used to direct the clinical care of the patient."
* section[sectionBilling].entry ^definition = "The EMS protocols used to direct the clinical care of the patient."
* section[sectionBilling].entry Reference(Observation)
// where Supply items used elemens will be found

// Addtional Composition elements: maybe airway 

------------------------------------------------------------------------------------------------------------------------------------
// Borrowed (copy-paste) October 27, 2021 -- from the "Connectathon" branch of IPS github
Profile: MostlyCompositionUvIps
Parent: $clinicaldocument
Id: Mostly-Composition-uv-ips
Title: "Composition - IPS"
Description: """Clinical document used to represent the International Patient Summary (IPS) data set. 
An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care. 
The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in EN 17269 and ISO/DIS 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country.

This profile is based on the ClinicalDocument profile."""
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care, comprising at least the required elements of the IPS dataset. The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in EN 17269 and ISO/DIS 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country."
* ^copyright = "HL7 International"
* . MS
* . ^short = "International Patient Summary composition"
* . ^definition = "International Patient Summary composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
* text MS
* status MS
//* type only CodeableConceptIPS
//* type = $loinc#60591-5
//* type MS
//* type ^short = "Kind of composition (\"Patient Summary\")"
//* type ^definition = "Specifies that this composition refers to a Patient Summary (Loinc \"60591-5\")\r\n"
* subject only Reference(PatientUvIps)
* subject MS
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the IPS the subject is always the patient."
* subject.reference 1.. MS
* date MS
* author MS
* author ^short = "Who and/or what authored the IPS"
* author ^definition = "Identifies who is responsible for the information in the IPS, not necessarily who typed it in.\r\n\r\nThe type of author(s) contribute to determine the \"nature\"of the Patient Summary: e.g. a \"human-curated\" IPS Vs. an \"automatically generated\" IPS."
* title MS
* title ^short = "International Patient Summary"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"International Patient Summary\" or any equivalent translation"
* attester MS
* attester.mode MS
* attester.time MS
* attester.party MS
* event MS
* event ^slicing.discriminator.type = #pattern
* event ^slicing.discriminator.path = "code"
* event ^slicing.rules = #open
* event ^definition = "The main activity being described by a IPS is the provision of healthcare over a period of time. \r\nIn the CDA representation of the IPS this is shown by setting the value of serviceEvent/@classCode to “PCPR” (care provision) and indicating the duration over which care was provided in serviceEvent/effectiveTime. \r\nIn the FHIR representation at least one event should be used to record this information.\r\nAdditional data from outside this duration may also be included if it is relevant to care provided during that time range (e.g., reviewed during the stated time range). For example if the IPS is generated by a GP based on information recorded in his/her EHR-S, then the start value should represent the date when the treatment relationship between the patient and the GP started; and the end value the date of the latest care event."
* event contains careProvisioningEvent ..1 MS
* event[careProvisioningEvent] ^short = "The care provisioning being documented"
* event[careProvisioningEvent] ^definition = "The provision of healthcare over a period of time this IPS is documenting."
* event[careProvisioningEvent].code 1.. MS
* event[careProvisioningEvent].code = $v3-ActClass#PCPR
* event[careProvisioningEvent].period MS
* section 3.. MS
* section ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension.valueString = "Section"
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the IPS"
* section ^definition = "The root of the sections that make up the IPS composition."
* section.title 1.. MS
* section.title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents."
* section.code 1.. MS
* section.code only CodeableConceptIPS
* section.text 1.. MS
* section.emptyReason ..0
* section.emptyReason ^mustSupport = false
* section.section ..0
* section.section ^mustSupport = false
* section contains
    sectionMedications 1..1 MS and
    sectionAllergies 1..1 MS and
    sectionProblems 1..1 MS and
    sectionProceduresHx ..1 MS and
    sectionImmunizations ..1 MS and
    sectionMedicalDevices ..1 MS and
    sectionResults ..1 MS and
    sectionVitalSigns ..1 and
    sectionPastIllnessHx ..1 and
    sectionFunctionalStatus ..1 and
    sectionPlanOfCare ..1 and
    sectionSocialHistory ..1 and
    sectionPregnancyHx ..1 and
    sectionAdvanceDirectives ..1
* section[sectionMedications] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedications] ^extension.valueString = "Section"
* section[sectionMedications] ^short = "IPS Medication Summary Section"
* section[sectionMedications] ^definition = "The medication summary section contains a description of the patient's medications relevant for the scope of the patient summary.\r\nThe actual content could depend on the jurisdiction, it could report:\r\n- the currently active medications; \r\n- the current and past medications considered relevant by the authoring GP; \r\n- the patient prescriptions or dispensations automatically extracted by a regional or a national EHR.\r\n\r\nIn all those cases however medications are documented in the Patient Summary as medication statements.\r\nThis section requires either an entry indicating the subject is known not to be on any relevant medication; either an entry indicating that no information is available about medications; or entries summarizing the subject's relevant medications."
* section[sectionMedications].code = $loinc#10160-0
* section[sectionMedications].code MS
* section[sectionMedications].entry 1.. MS
* section[sectionMedications].entry only Reference(MedicationStatement or MedicationRequest or MedicationAdministration or MedicationDispense or DocumentReference)
* section[sectionMedications].entry ^slicing.discriminator.type = #profile
* section[sectionMedications].entry ^slicing.discriminator.path = "resolve()"
* section[sectionMedications].entry ^slicing.rules = #open
* section[sectionMedications].entry ^short = "Medications relevant for the scope of the patient summary"
* section[sectionMedications].entry ^definition = "This list the medications relevant for the scope of the patient summary or it is used to indicate that the subject is known not to be on any relevant medication; either that no information is available about medications."
* section[sectionMedications].entry contains medicationStatement 1.. MS
* section[sectionMedications].entry[medicationStatement] only Reference(MedicationStatementIPS )
* section[sectionAllergies] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAllergies] ^extension.valueString = "Section"
* section[sectionAllergies] ^short = "IPS Allergies and Intolerances Section"
* section[sectionAllergies] ^definition = "This section documents the relevant allergies or intolerances (conditions) for that patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum, it should list currently active and any relevant historical allergies and adverse reactions.\r\nIf no information about allergies is available, or if no allergies are known this should be clearly documented in the section."
* section[sectionAllergies].code = $loinc#48765-2
* section[sectionAllergies].code MS
* section[sectionAllergies].entry 1.. MS
* section[sectionAllergies].entry only Reference(AllergyIntolerance or DocumentReference)
* section[sectionAllergies].entry ^slicing.discriminator.type = #profile
* section[sectionAllergies].entry ^slicing.discriminator.path = "resolve()"
* section[sectionAllergies].entry ^slicing.rules = #open
* section[sectionAllergies].entry ^short = "Relevant allergies or intolerances (conditions) for that patient."
* section[sectionAllergies].entry ^definition = "It lists the relevant allergies or intolerances (conditions) for that patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum, it should list currently active and any relevant historical allergies and adverse reactions.\r\n This entry shall be used to document that no information about allergies is available, or that no allergies are known ."
* section[sectionAllergies].entry contains allergyOrIntolerance 1.. MS
* section[sectionAllergies].entry[allergyOrIntolerance] only Reference(AllergyIntoleranceUvIps)
* section[sectionProblems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProblems] ^extension.valueString = "Section"
* section[sectionProblems] ^short = "IPS Problems Section"
* section[sectionProblems] ^definition = "The IPS problem section lists and describes clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].code = $loinc#11450-4
* section[sectionProblems].code MS
* section[sectionProblems].entry 1.. MS
* section[sectionProblems].entry only Reference(Condition or DocumentReference)
* section[sectionProblems].entry ^slicing.discriminator.type = #profile
* section[sectionProblems].entry ^slicing.discriminator.path = "resolve()"
* section[sectionProblems].entry ^slicing.rules = #open
* section[sectionProblems].entry ^short = "Clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].entry ^definition = "It lists and describes clinical problems or conditions currently being monitored for the patient.  This entry shall be used to document that no information about problems is available, or that no relevant problems are known."
* section[sectionProblems].entry contains problem 1.. MS
* section[sectionProblems].entry[problem] only Reference(ConditionUvIps)
* section[sectionProceduresHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProceduresHx] ^extension.valueString = "Section"
* section[sectionProceduresHx] ^short = "IPS History of Procedures Section"
* section[sectionProceduresHx] ^definition = "The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy"
* section[sectionProceduresHx].code = $loinc#47519-4
* section[sectionProceduresHx].code MS
* section[sectionProceduresHx].entry 1.. MS
* section[sectionProceduresHx].entry only Reference(Procedure or DocumentReference)
* section[sectionProceduresHx].entry ^slicing.discriminator.type = #profile
* section[sectionProceduresHx].entry ^slicing.discriminator.path = "resolve()"
* section[sectionProceduresHx].entry ^slicing.rules = #open
* section[sectionProceduresHx].entry ^short = "Patient past procedures pertinent to the scope of this document."
* section[sectionProceduresHx].entry ^definition = "It lists the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy. This entry shall be used to document that no information about past procedures is available, or that no relevant past procedures are known."
* section[sectionProceduresHx].entry contains procedure 1.. MS
* section[sectionProceduresHx].entry[procedure] only Reference(ProcedureUvIps)
* section[sectionImmunizations] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionImmunizations] ^extension.valueString = "Section"
* section[sectionImmunizations] ^short = "IPS Immunizations Section"
* section[sectionImmunizations] ^definition = "The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes the current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* section[sectionImmunizations].code = $loinc#11369-6
* section[sectionImmunizations].code MS
* section[sectionImmunizations].entry 1.. MS
* section[sectionImmunizations].entry only Reference(Immunization or DocumentReference)
* section[sectionImmunizations].entry ^slicing.discriminator.type = #profile
* section[sectionImmunizations].entry ^slicing.discriminator.path = "resolve()"
* section[sectionImmunizations].entry ^slicing.rules = #open
* section[sectionImmunizations].entry ^short = "Patient's immunization status and pertinent history."
* section[sectionImmunizations].entry ^definition = "It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available, or that no immunizations are known."
* section[sectionImmunizations].entry contains immunization 1.. MS
* section[sectionImmunizations].entry[immunization] only Reference(ImmunizationUvIps)
* section[sectionMedicalDevices] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedicalDevices] ^extension.valueString = "Section"
* section[sectionMedicalDevices] ^short = "IPS Medical Devices Section"
* section[sectionMedicalDevices] ^definition = "The medical devices section contains narrative text and coded entries describing the patient history of medical device use."
* section[sectionMedicalDevices].code = $loinc#46264-8
* section[sectionMedicalDevices].code MS
* section[sectionMedicalDevices].entry 1.. MS
* section[sectionMedicalDevices].entry only Reference(DeviceUseStatement or DocumentReference)
* section[sectionMedicalDevices].entry ^slicing.discriminator.type = #profile
* section[sectionMedicalDevices].entry ^slicing.discriminator.path = "resolve()"
* section[sectionMedicalDevices].entry ^slicing.rules = #open
* section[sectionMedicalDevices].entry ^short = "Patient history of medical device use."
* section[sectionMedicalDevices].entry ^definition = "It describes the patient history of medical device use. This entry shall be used to document that no information about medical device use is available, or that no relevant medical device use is known."
* section[sectionMedicalDevices].entry contains deviceStatement 1.. MS
* section[sectionMedicalDevices].entry[deviceStatement] only Reference(DeviceUseStatementUvIps)
* section[sectionResults] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionResults] ^extension.valueString = "Results Section"
* section[sectionResults] ^short = "IPS Results Section"
* section[sectionResults] ^definition = "This section assembles relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].code = $loinc#30954-2
* section[sectionResults].code MS
* section[sectionResults].entry 1.. MS
* section[sectionResults].entry only Reference(Observation or DiagnosticReport or DocumentReference)
* section[sectionResults].entry ^slicing.discriminator.type = #profile
* section[sectionResults].entry ^slicing.discriminator.path = "resolve()"
* section[sectionResults].entry ^slicing.rules = #open
* section[sectionResults].entry ^short = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient."
* section[sectionResults].entry ^definition = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].entry contains
    results-observation ..* MS and
    results-diagnosticReport ..* MS
* section[sectionResults].entry[results-observation] only Reference(ObservationResultsUvIps)
* section[sectionResults].entry[results-diagnosticReport] only Reference(DiagnosticReportUvIps)
* section[sectionVitalSigns] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionVitalSigns] ^extension.valueString = "Vital Signs Section"
* section[sectionVitalSigns] ^label = "Vital signs"
* section[sectionVitalSigns] ^short = "IPS Vital Signs Section"
* section[sectionVitalSigns] ^definition = "The Vital signs section includes blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].code = $loinc#8716-3
* section[sectionVitalSigns].code MS
* section[sectionVitalSigns].entry only Reference(Observation or DocumentReference)
* section[sectionVitalSigns].entry MS
* section[sectionVitalSigns].entry ^slicing.discriminator.type = #profile
* section[sectionVitalSigns].entry ^slicing.discriminator.path = "resolve()"
* section[sectionVitalSigns].entry ^slicing.rules = #open
* section[sectionVitalSigns].entry ^short = "Notable vital signs or physical findings."
* section[sectionVitalSigns].entry ^definition = "Notable vital signs or physical findings as: blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].entry contains vitalSign 0..* MS
* section[sectionVitalSigns].entry[vitalSign] only Reference($vitalsigns)
* section[sectionPastIllnessHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPastIllnessHx] ^extension.valueString = "Section"
* section[sectionPastIllnessHx] ^short = "IPS History of Past Illness Section"
* section[sectionPastIllnessHx] ^definition = "The History of Past Illness section contains a description of the conditions the patient suffered in the past."
* section[sectionPastIllnessHx].code = $loinc#11348-0
* section[sectionPastIllnessHx].code MS
* section[sectionPastIllnessHx].entry 1.. MS
* section[sectionPastIllnessHx].entry only Reference(Condition or DocumentReference)
* section[sectionPastIllnessHx].entry ^slicing.discriminator.type = #profile
* section[sectionPastIllnessHx].entry ^slicing.discriminator.path = "resolve()"
* section[sectionPastIllnessHx].entry ^slicing.rules = #open
* section[sectionPastIllnessHx].entry ^short = "Conditions the patient suffered in the past."
* section[sectionPastIllnessHx].entry ^definition = "It contains a description of the conditions the patient suffered in the past."
* section[sectionPastIllnessHx].entry contains pastProblem 1.. MS
* section[sectionPastIllnessHx].entry[pastProblem] only Reference(ConditionUvIps)
* section[sectionFunctionalStatus] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionFunctionalStatus] ^extension.valueString = "Section"
* section[sectionFunctionalStatus] ^short = "IPS Functional Status"
* section[sectionFunctionalStatus] ^definition = "The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].code = $loinc#47420-5
* section[sectionFunctionalStatus].code MS
* section[sectionFunctionalStatus].entry only Reference(Condition or ClinicalImpression or DocumentReference)
* section[sectionFunctionalStatus].entry MS
* section[sectionFunctionalStatus].entry ^slicing.discriminator.type = #profile
* section[sectionFunctionalStatus].entry ^slicing.discriminator.path = "resolve()"
* section[sectionFunctionalStatus].entry ^slicing.rules = #open
* section[sectionFunctionalStatus].entry ^short = "Optional entry used to represent disabilities and functional assessments"
* section[sectionFunctionalStatus].entry ^definition = "It describes capabilities of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].entry contains
    disability 0..* MS and
    functionalAssessment 0..* MS
* section[sectionFunctionalStatus].entry[disability] only Reference(ConditionUvIps)
* section[sectionFunctionalStatus].entry[functionalAssessment] only Reference(ClinicalImpression)
* section[sectionPlanOfCare] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPlanOfCare] ^extension.valueString = "Section"
* section[sectionPlanOfCare] ^short = "IPS Plan of Care Section"
* section[sectionPlanOfCare] ^definition = "The plan of care section contains a narrative description of the expectations for care including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient."
* section[sectionPlanOfCare].code = $loinc#18776-5
* section[sectionPlanOfCare].code MS
* section[sectionPlanOfCare].entry only Reference(CarePlan or DocumentReference)
* section[sectionPlanOfCare].entry ^slicing.discriminator.type = #profile
* section[sectionPlanOfCare].entry ^slicing.discriminator.path = "resolve()"
* section[sectionPlanOfCare].entry ^slicing.rules = #open
* section[sectionPlanOfCare].entry ^short = "Optional entry used to represent structured care plans"
* section[sectionPlanOfCare].entry ^definition = "Dynamic, personalized plan including identified needed healthcare activity, health objectives and healthcare goals, relating to one or more specified health issues in a healthcare process [Source EN ISO 13940]"
* section[sectionPlanOfCare].entry ^mustSupport = false
* section[sectionPlanOfCare].entry contains carePlan 0..*
* section[sectionPlanOfCare].entry[carePlan] only Reference(CarePlan)
* section[sectionPlanOfCare].entry[carePlan] ^mustSupport = false
* section[sectionSocialHistory] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionSocialHistory] ^extension.valueString = "Section"
* section[sectionSocialHistory] ^short = "IPS Social History Section"
* section[sectionSocialHistory] ^definition = "The social history section contains a description of the person’s Health related \"lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].code = $loinc#29762-2
* section[sectionSocialHistory].code MS
* section[sectionSocialHistory].entry only Reference(Observation or DocumentReference)
* section[sectionSocialHistory].entry MS
* section[sectionSocialHistory].entry ^slicing.discriminator.type = #profile
* section[sectionSocialHistory].entry ^slicing.discriminator.path = "resolve()"
* section[sectionSocialHistory].entry ^slicing.rules = #open
* section[sectionSocialHistory].entry ^short = "Health related \"lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry ^definition = "Description of the person’s Health related “lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry contains
    smokingTobaccoUse ..1 MS and
    alcoholUse ..1 MS
* section[sectionSocialHistory].entry[smokingTobaccoUse] only Reference(ObservationTobaccoUseUvIps)
* section[sectionSocialHistory].entry[alcoholUse] only Reference(ObservationAlcoholUseUvIps)
* section[sectionPregnancyHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPregnancyHx] ^extension.valueString = "Section"
* section[sectionPregnancyHx] ^short = "IPS History of Pregnancy Section"
* section[sectionPregnancyHx] ^definition = "The history of pregnancy section shall contain information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].code = $loinc#10162-6
* section[sectionPregnancyHx].code MS
* section[sectionPregnancyHx].entry only Reference(Observation or DocumentReference)
* section[sectionPregnancyHx].entry MS
* section[sectionPregnancyHx].entry ^slicing.discriminator.type = #profile
* section[sectionPregnancyHx].entry ^slicing.discriminator.path = "resolve()"
* section[sectionPregnancyHx].entry ^slicing.rules = #open
* section[sectionPregnancyHx].entry ^short = "Current pregnancy status and, optionally, information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].entry ^definition = "It contains information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].entry contains
    pregnancyStatus 0..* MS and
    pregnancyOutcomeSummary 0..* MS
* section[sectionPregnancyHx].entry[pregnancyStatus] only Reference(ObservationPregnancyStatusUvIps)
* section[sectionPregnancyHx].entry[pregnancyOutcomeSummary] only Reference(ObservationPregnancyOutcomeUvIps)
* section[sectionAdvanceDirectives] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAdvanceDirectives] ^extension.valueString = "Section"
* section[sectionAdvanceDirectives] ^short = "IPS Advance Directives Section"
* section[sectionAdvanceDirectives] ^definition = "The advance directives section contains a narrative description of patient's advance directive."
* section[sectionAdvanceDirectives].code = $loinc#42348-3
* section[sectionAdvanceDirectives].code MS
* section[sectionAdvanceDirectives].entry only Reference(Consent or DocumentReference)
* section[sectionAdvanceDirectives].entry MS
* section[sectionAdvanceDirectives].entry ^slicing.discriminator.type = #profile
* section[sectionAdvanceDirectives].entry ^slicing.discriminator.path = "resolve()"
* section[sectionAdvanceDirectives].entry ^slicing.rules = #open
* section[sectionAdvanceDirectives].entry ^short = "Narrative description of the patient's advance directive."
* section[sectionAdvanceDirectives].entry ^definition = "Contains a narrative description or a Consent entry with information about the patient's advance directive."
* section[sectionAdvanceDirectives].entry contains advanceDirectivesConsent 0..* MS
* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] only Reference(Consent)





