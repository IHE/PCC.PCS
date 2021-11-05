Profile:   IHE_PCS_Encounter_CompleteReport
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.CompleteReport
Title: "IHE PCS Encounter Complete Report"
Description:      """
An encounter resource used to deffine the full emergency medical transport encounter of a patient, US realm
- SHALL have identifiers
- SHALL have Subject. The Subject SHOULD reference us-core-patient. 
- SHALL reference episodeOfCare. The episodeOfCare SHALL contain the episodeOfCare identifiers
- SHALL reference PCS_ServiceRequest
- SHALL contain MassCasualtyIncident and SHALL be expressed values from the NEMSIS_eScene_MassCasualtyIncident_VS. IF Coded value = 9922005 "Yes" MassCasualtyIncident SHALL contain MassCasualtyIncident.NumberOfPatients to express the number of people in the mass casualty incident and SHALL be expressed using a Number. IF the boolean is "yes" MassCasualtyIncident SHALL Contain MassCasualtyIncident.triageClassification that SHALL be expressed with CodeableConcept values from the NEMSIS_eScene_TriageClassificationforMCIPatient_VS ValueSet     
- SHOULD contain a Incident extenstion. The extensions SHALL reference PCS-Incident Observation
- SHALL Contain PossibleInjury. PossibleInjury SHALL be expressed using values from the NEMSIS_eSituation_PossibleInjury_VS ValueSet
- SHALL Contain BarriersToCare. BarriersToCare SHALL be expressed using values from the NEMSIS_eHistory_BarriersToPatientCare_VS ValueSet
- SHALL have status 
- SHALL have statusHistory
- SHALL have a statusHistorySubType extension the extension SHALL use values from the Encounter.statusHistorySubTypes.VS ValueSet 
- SHALL have Priority. The Priority CodeableConcept SHALL be expressed using values from the NEMSIS_eResponse_ResponseMode_VS ValueSet. The Priority SHALL contain PriorityObservations with CodeableConcept values from the NEMSIS_eResponse_AdditionalResponseModeDescriptors_VS, NEMSIS_ePayment_ResponseUrgency_VS,and NEMSIS_ePayment_CMSServiceLevel_VS ValueSets 
- SHALL have a reasonCode to express the Dispatch Reason. the the ReasonCode SAHLL be expressed using values from the NEMSIS_eDispatch_DispatchReason_VS ValueSet
- SHALL have a reasonReference and SHALL used the ClinicalImpression.text reference to express the Chief complaint of the patient 
- SHALL have Participants. Participant SHALL contain Type. Participant SHOULD Contaitn Period. Participant SHALL contain individual.
	- Practitioner SHOULD contain identifier AND name 
	- PractitionerRole SHALL contain identifiers, specialty, AND code
- SHALL have serviceProvider. serviceProvider SHALL be expressed using the Organization Reference. The Organization SHALL express the organizaiotn Identifiers AND the Organization name. 
- SHALL have Location. The Location SHALL contain the Scene location where the patient was taken from and SHALL use the us-core-location reference. The Location SHALL Contain the Destination location where the patient is transfered to at the completion of the Encounter and SHALL use the us-core-location reference.  
- SHALL Contain Transport Extension
- SHALL have Encounter.text to express the Patient Care Report Narrative
"""


* identifier 1..*

* status 1..1
* status = #finished

* statusHistory 1..*

Extension: StatusHistorySubType
Id: Encounter.statusHistory.StatusSubType
Description: "Refinement of the Encounter Status History for steps within EMS"
* insert FHIRPushStructureDefinitionContent
* extension contains 
	value[X] 0..1 and
	period 1..1
* extension[StatusHistorySubType].value[x] only CodeableConcept
//insert value set when ready (valueCodeableConcept from Encounter.statusHistorySubTypes.VS (example))


* class 1..1

* priority 1..1 



* subject 1..1

* episodeOfCare 1..1

* basedOn 1..1

* participant 1..*

* participant.type 1..*

* period 1..1

* reasonCode 1..*

* diagnosis 1..*
//condition.category will = encounter-diagnosis and primary and scondary impressions should be indicated with the Diagnosis rank Number

* extension[BarriersToPatientCare] ^definition = "Indication of whether or not there were any patient specific barriers to serving the patient."
* extension[BarriersToPatientCare].value[x] only CodeableConcept

* serviceProvider 1..1

* extension[protocolsUsed] ^definition = "The protocol used by provider personnel to direct the clinical care of the patient."
* extension[protocolsUsed].value[x] only CodeableConcept