Profile:   IHE_PCS_Composition_CR
Parent: IHE_PCS_Composition_CS
Id:             IHE.PCC.PCS.Composition.CR
Title: "Paramedicince Care Summary Composition CompleteReport"
Description:      """
The composition of the FHIR elements that are used to build the FHIR Document for the Paramedicine Care Summary
the following cardinalities follow the documentation in the PCS profile: 
- RE 0..1 IPS Advance Directives 
- R 1..1 IPS Allergies and Intolerances
- R 1..1 IPS Medication Summary
- RE 0..1 Medications Administered Section
- RE 0..1 IPS History of Past Illness
- R 1..1 IPS Functional Status
- RE 0..1 IPS History of Procedures
- O 0..1 Immunizations
- O 0..1IPS Medical Devices
- R 0..1 IPS Problems
- O 0..1 IPS Results
- RE 0..1 IPS Vital Signs
- RE 0..1 IPS History of Pregnancy
- O 0..1 IPS Plan of Care
- O 0..1 Payor
- RE 0..1 InjuryEvent seciton 
- RE 0..1 EMS Protocol Section
- R 1..1 Paramedicine Note
- RE 0..1 eArrest Section 
-- dispatch (add EMS run report )
-- disposition (add?? EMS run repot )
-- personel adverse event section (add ems run report)
-- ems scene (add?)
-- ems situation?
SE IPS social hisotry 
	ems social history entry 
- RE 0..1 EMS Response Section
- RE 0..1 EMS Times Sections
- O 0..1 CareTeam 
- O 0..1 Physician Certification Statement 
- RE 0..1  Transport Section 
"""

* encounter only Reference(IHE_PCS_Encounter_CompleteReport) 


// in addition to the sections defined in IPS...
* section contains
//	sectionServiceRequest 1..1 and
	sectionCareTeam 0..1 MS and 
	sectionParamedicineNote 1..1 MS and 
	sectionProtocols 0..* and 
	sectionTransportEvent 0..1   

// TODO define sectionServiceRequest


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
* section[sectionCareTeam].entry contains 
    CareTeam 0..1 MS
* section[sectionCareTeam].entry[CareTeam] only Reference(CareTeam)

* section[sectionParamedicineNote] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionParamedicineNote] ^extension.valueString = "Section"
* section[sectionParamedicineNote] ^short = "Paramedicince Note Section"
* section[sectionParamedicineNote] ^definition = "The narrative Summary for an Emergency Medical service Encounter."
* section[sectionParamedicineNote].code = $loinc#28563-5
* section[sectionParamedicineNote].text 1..1 MS
//This is where the Paramedicince Note is in the FHIR Build


* section[sectionProtocols] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProtocols] ^extension.valueString = "Section"
* section[sectionProtocols] ^short = "EMS Protocols Section"
* section[sectionProtocols] ^definition = "The Protocols Used section describes the protocol used to direct the clinical care of the patient."
* section[sectionProtocols].code = $loinc#67537-1
* section[sectionProtocols].code MS
* section[sectionProtocols].entry ..* 
* section[sectionProtocols].entry only Reference(Observation)
* section[sectionProtocols].entry ^short = "The EMS protocols used to direct the clinical care of the patient."
* section[sectionProtocols].entry ^definition = "The EMS protocols used to direct the clinical care of the patient."
//* section[sectionProtocols].entry.code = oid:2.16.840.1.113883.3.2898.10.23
//* section[sectionProtocols].entry contains 
//	ProtocolsUsed 0..* MS and
//	ProtocolCategory 0..* 
//* section[sectionProtocols].entry[ProtocolsUsed].valueCodeableConcept from NEMSIS.Protocols.Used.VS (Example)
//* section[sectionProtocols].entry[ProtocolCategory].valueCodeableConcept from NEMSIS.Age.Category.VS (Example)
//TODO: I commented out this slice as it is unclear what it is slicing on. there is no entry.valueCodeableConcept


* section[sectionTransportEvent] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionTransportEvent] ^extension.valueString = "Section"
* section[sectionTransportEvent] ^short = "Paramedicine Transport Event"
* section[sectionTransportEvent] ^definition = "The observations related to a Paramedicine Encounter Transport."
* section[sectionTransportEvent].code = $loinc#55169-7  
* section[sectionTransportEvent].code MS
* section[sectionTransportEvent].entry ..* 
* section[sectionTransportEvent].entry ^short = "The observations related to a Paramedicine Encounter Transport."
* section[sectionTransportEvent].entry ^definition = "The observations related to a Paramedicine Encounter Transport."
//* section[sectionTransportEvent].entry only Reference(Transport)
//TODO: Transport event orgaizer






