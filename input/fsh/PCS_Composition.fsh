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

* section[sectionFunctionalStatus] 1..1
//Note: Functional Status entry:disability is where the eHistory.01 - Barriers to Patient Care conditions can be represented, such as Speech Impaired, Sight Impaired, and Hearing Impaired
//Note: entry:functionalAssessment.. use clinical imporession for the Neurological Assessment, and Mental Status Assessment, 

//include medicaitons adminstered
* section ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension.valueString = "Section"
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Additional Sections beyond IPS"
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
    sectionCoverage 1..1 MS and
	sectionCareTeam 1..1 MS and 
	sectionParamedicineNote 1..1 MS and 
	sectionPhysicianCertificationStatement 0..1 and 
	sectionTriage 0..1 and
	sectionReviewOfSystems 1..1 MS and 
	sectionEMSProtocols 0..* and 
	sectionIntakeAndOutput 0..1 

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
* section[sectionReviewOfSystems].entry[Exams] only Reference(Observation)

* section[sectionEMSProtocols] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionEMSProtocols] ^extension.valueString = "Section"
* section[sectionEMSProtocols] ^short = "EMS Protocols Section"
* section[sectionEMSProtocols] ^definition = "The protocols used by EMS personnel to direct the clinical care of the patient."
* section[sectionEMSProtocols].code = $loinc#67663-5
* section[sectionEMSProtocols].code MS
* section[sectionEMSProtocols].entry ..1 MS
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
* section[ProtocolAgeCategory].entry[ProtocolsUsed] only Reference(Observation)

* section[sectionIntakeAndOutput] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionIntakeAndOutput] ^extension.valueString = "Section"
* section[sectionIntakeAndOutput] ^short = "Paramedicince Note Section"
* section[sectionIntakeAndOutput] ^definition = "The last oral intake of the Patient."
* section[sectionIntakeAndOutput].code = $loinc#45844-8
* section[sectionIntakeAndOutput].text 1..1 MS


//Alcohol/Drug use indicators 69757-3 ... review of systems??

//Presence of Emergency Information Form  Advanced directives section.... 

//Delays 67480-4

// loinc cod....needed last Known well exam obervation?? patient acuity  77941-3same??? somehow be used for intake and output observation?


// Addtional Composition elements: transport observation?, odomotor readings? barriers to care??, incident observations?


