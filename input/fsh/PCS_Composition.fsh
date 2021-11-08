Profile:   IHE_PCS_Composition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id:             IHE.PCC.PCS.Composition
Title: "Paramedicince Care Summary Composition"
Description:      "composition of the FHIR elements that are used to build the FHIR Document for the Paramedicine Care Summary"

* subject 1..1
* subject = Reference()
* encounter 1..1
* encounter = Reference(Encounter) 
// TODO: encounter = Reference(IHE-PCS-Encounter-CompleteReport or IHE-PCS-Encounter-ClinicalSubset or IHE-PCS-Encounter-CompleteReport-US or IHE-PCS-Encounter-ClinicalSubset-US)


* event.code 1..*
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActClass#ENC

* section[sectionFunctionalStatus] 1..1
//Note: Functional Status entry:disability is where the eHistory.01 - Barriers to Patient Care conditions can be represented, such as Speech Impaired, Sight Impaired, and Hearing Impaired
//Note: entry:functionalAssessment is where observations and clinical impressions.... can be noted 

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
	sectionParamedicineNote 1..1 MS 

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
* section[sectionParamedicineNote] ^short = "Care Team Section"
* section[sectionParamedicineNote] ^definition = "The insurance information for the patient to cover the encounter event."
* section[sectionParamedicineNote].code = $loinc#28563-5
* section[sectionParamedicineNote].code MS
//This is where the Paramedicince Note is

// Addtional Composition elements: Physician Certification Statement, careTeam, protocols, last Known well, symptoms patient acuity (initial and final), Alcohol/Drug Use Indicators, Last Oral Intake, Presence of Emergency Information Form, transport observation, delays, barriers to care??
// Narrative for the report needs to be a new slice here TODO

