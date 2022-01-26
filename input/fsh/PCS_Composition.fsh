Profile:   IHE_PCS_Composition_CR
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id:             IHE.PCC.PCS.Composition.CR
Title: "Paramedicince Care Summary Composition CompleteReport"
Description:      "composition of the FHIR elements that are used to build the FHIR Document for the Paramedicine Care Summary"

* subject 1..1
* encounter 1..1
* encounter only Reference(IHE.PCC.PCS.Encounter.CompleteReport) 


* event.code 1..*
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActClass#ENC

// in addition to the sections defined in IPS...
* section contains
	sectionProceduresPerformed 1..1 MS and
    sectionCoverage 0..1 MS and
//	sectionServiceRequest 1..1 and
	sectionCareTeam 0..1 MS and 
	sectionParamedicineNote 1..1 MS and 
	sectionPhysicianCertificationStatement 0..1 and 
	sectionReviewOfSystems 1..1 MS and 
	sectionProtocols 0..* and 
	sectionCariacArrestEvent 0..1 and
	sectionInjuryEvent 0..1 and
	sectionTransportEvent 0..1 

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

* section[sectionPhysicianCertificationStatement] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPhysicianCertificationStatement] ^extension.valueString = "Section"
* section[sectionPhysicianCertificationStatement] ^short = "Physician Certification Statement Section"
* section[sectionPhysicianCertificationStatement] ^definition = "Indication of whether a physician certification statement is available documenting the medical necessity or the EMS encounter."
* section[sectionPhysicianCertificationStatement].code = $loinc#52016-3
* section[sectionPhysicianCertificationStatement].code MS
* section[sectionPhysicianCertificationStatement].entry 0..1 MS
* section[sectionPhysicianCertificationStatement].entry only Reference( Observation)
// TODO: Andrea, there needs to be a mapping as emptyReason must come from the (preferred) valueset
//* section[sectionPhysicianCertificationStatement].emptyReason only http://terminology.hl7.org/ValueSet/v2-0136

* section[sectionReviewOfSystems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionReviewOfSystems] ^extension.valueString = "Section"
* section[sectionReviewOfSystems] ^short = "Review of Systems"
* section[sectionReviewOfSystems] ^definition = "The Review of systems section contains a relevant collection of symptoms and functions systematically gathered by a clinician. It includes symptoms the patient is currently experiencing, some of which were not elicited during the history of present illness, as well as a potentially large number of pertinent negatives, for example, symptoms that the patient denied experiencing."
* section[sectionReviewOfSystems].code = $loinc#10187-3
* section[sectionReviewOfSystems].code MS
* section[sectionReviewOfSystems].entry ..* MS
* section[sectionReviewOfSystems].entry only Reference(Observation)
* section[sectionReviewOfSystems].entry ^definition = """
The coded Review of systems section contains a relevant collection of symptoms and functions systematically gathered by a clinician. It includes symptoms the patient is currently experiencing, some of which were not elicited during the history of present illness, as well as a potentially large number of pertinent negatives, for example, symptoms that the patient denied experiencing.
- PhysicalExams 0..* and
- PatientAcuity 0..* and
- LastKnownWell 0..1 and
- LastOralIntake 0..1 and
- AlcoholDrugUseIndicators 0..* and 
- InitialPatientAcuity 0..1 and
- FinalPatientAcuity 0..1
"""
//TODO: I changed this sliceing to just a definition as there was no distinction between the various Observations, without a distinction there is nothing for a slice to do.

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
//Update: this is the section with optional contect related to the Trauma opton in the Actor options table 

* section[sectionTransportEvent] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionTransportEvent] ^extension.valueString = "Section"
* section[sectionTransportEvent] ^short = "Paramedicine Transport Event"
* section[sectionTransportEvent] ^definition = "The observations related to a Paramedicine Encounter Transport."
* section[sectionTransportEvent].code = $loinc#55169-7  
* section[sectionTransportEvent].code MS
* section[sectionTransportEvent].entry ..* 
* section[sectionTransportEvent].entry ^short = "The observations related to a Paramedicine Encounter Transport."
* section[sectionTransportEvent].entry ^definition = "The observations related to a Paramedicine Encounter Transport."
* section[sectionTransportEvent].entry only Reference(Observation)
//TODO: Transport event orgaizer






