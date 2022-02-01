Profile:   IHE_PCS_Encounter_CompleteReport
Parent: IHE_PCS_Encounter_ClinicalSubset
Id:             IHE.PCC.PCS.Encounter.CompleteReport
Title: "IHE PCS Encounter Complete Report"
Description:      """
An IHE PCS Encounter Complete Report resource is used to deffine the full emergency medical transport encounter of a patient,
- identifiers are Required if Known
- Status SHALL be Finished  
- Status History is required
- Status History Observations are Required if Known
- Class is required
- Type is Required
- Service type is required  
- Priority is required 
- Priority Descriptors are required if KNown 
- Subject is required
-  Based on is Required if Known 
- Participants are required 
- Participant types are required if known
-  Period is required 
- Reason code is required
- Diagnosis is required 
- Barriers to care are required if known 
- MassCasualty incident is required if Known 
- Transport elements are required if known 
- Location ambulance is required 
- Location Vehical dispatch is required if known 
- Location Scene is required 
- Location Destination is Required 
"""


* status = #finished
* statusHistory 1..*
//Note: Should have as main options $230 "Patient transport", $117 "Emergency Medical" or $465 "Trasnport", $225 "Air ambulance", $226 "Ambulance" 
* serviceType 1..1
* serviceType from NEMSIS.Level.of.Care.Provided.per.Protocol.VS (example)
* priority 1..1 
* priority from NEMSIS.Response.Mode.to.Scene.VS (example)
* extension contains PriorityDescriptors named PriorityDescriptors 0..*
* basedOn 1..1
* participant 1..*
* participant.type 1..*
* period 1..1
* diagnosis 1..*
//condition.category will = encounter-diagnosis and primary and scondary impressions should be indicated with the Diagnosis rank Number
* extension[Transport].extension[Priority] 1..1
* extension[Transport].extension[PriorityDescriptors] 1..*
* extension[Transport].extension[NumberofPatients] 1..1
* extension[Transport].extension[TansportReasonCode] 1..*


Extension: PriorityDescriptors
Id: PriorityDescriptors
Title: "Priority Descriptors"
Description: "The documentation of response mode techniques used for this EMS response."
* value[x] only CodeableConcept
* valueCodeableConcept from NEMSIS.Additional.Response.Mode.Descriptors.VS (example)
