Profile:   IHE_PCS_Composition_CS
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id:             IHE.PCC.PCS.Composition.CS
Title: "Paramedicince Care Summary Composition Clinical Subset"
Description:      """
The composition of the FHIR elements that are used to build the FHIR Document for the Paramedicine Care Summary Clinical Subset
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
- R 0..1 Chief Complaint
- RE 0..1 eArrest Section 
- RE 0..1 EMS Times Section 
"""

* subject 1..1
* encounter 1..1
* encounter only Reference(IHE.PCC.PCS.Encounter.CompleteReport) 


* event.code 1..*
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActClass#ENC

* sectionVitalSigns.entry.vitalSign contains
	SystolicBloodPressure 1..1 MS and
	DiastolicBloodPressure 0..1 MS and
	MeanArterialPressure 0..1 and 
	CardiacRhythm 1..1 MS and
	HeartRate 1..1 MS and
	PulseOximetry 1..1 MS and
	PulseRhythm 0..1 and 
	RespiratoryRate 1..1 MS and
	RespiratoryEffort 0..1 and 
	EndTitleCarbonDioxide 1..1 MS and
	CarbonMonoxide 0..1 MS and
	BloodGlucoseLevel 1..1 MS and
	GlasgowComaScoreEye 1..1 MS and
	GlasgowComaScoreVerbal 1..1 MS and
	GlasgowComaScoreMotor 1..1 MS and
	GlasgowComaScoreQualifier 1..1 MS and
	TotalGlasgowComaScore 0..1 MS and
	Temperature 0..1 MS and 
	TemperatureMethod 0..1 and
	LevelOfResponsiveness 1..1 MS and 
	PainScaleScore  1..1 MS and
	PainScaleType 0..1 MS and
	StrokeScaleScore  1..1 MS and
	StrokeScaleType 1..1 MS and
	ReperfusionChecklist 1..1 MS and
	APGAR 0..1 and
	RevisedTraumaScore 0..1  and
	EstimatedBodyWeight 0..1 MS and
	LengthBasedTapeMeasure 0..1 MS and


// in addition to the sections defined in IPS...
* section contains
	sectionMedicationsAdministered 0..1 and 
	sectionProceduresPerformed 1..1 MS and
    sectionCoverage 0..1 MS and
	sectionReviewOfSystems 1..1 MS and 
	sectionCariacArrestEvent 0..1 and
	sectionInjuryEvent 0..1 and 
	sectionDispatchSection 0..1

* section[sectionMedicationsAdministered] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedicationsAdministered] ^extension.valueString = "Section"
* section[sectionMedicationsAdministered] ^short = "Medications Administered"
* section[sectionMedicationsAdministered] ^definition = "This section contains the Medicaitons Administered during the PCS encounter"
* section[sectionMedicationsAdministered].code = $loinc#87232-5
* section[sectionMedicationsAdministered].code MS
* section[sectionMedicationsAdministered].entry ..* MS
* section[sectionMedicationsAdministered].entry only Reference(MedicationAdministration)
* section[sectionMedicationsAdministered].entry ^slicing.discriminator.type = #profile
* section[sectionMedicationsAdministered].entry ^slicing.discriminator.path = "resolve()"
* section[sectionMedicationsAdministered].entry ^slicing.rules = #open
* section[sectionMedicationsAdministered].entry ^short = "Medications Administered"
* section[sectionMedicationsAdministered].entry ^definition = "This section contains the medications administered during PCS encounter"
* section[sectionMedicationsAdministered].entry only Reference(MedicationAdministration)

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


* section[sectionDispatchSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionDispatchSection] ^extension.valueString = "Section"
* section[sectionDispatchSection] ^short = "Dispatch Section"
* section[sectionDispatchSection] ^definition = "Information regarding the dispatch process."
* section[sectionDispatchSection].code = $loinc#67660-1
* section[sectionDispatchSection].code MS
* section[sectionDispatchSection].entry ..* MS
* section[sectionDispatchSection].entry only Reference(ServiceRequest)
* section[sectionDispatchSection].entry ^definition = "Information related to dispatch instructions"


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

