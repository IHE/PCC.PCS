Profile:   IHE_PCS_Encounter_ClinicalSubset
Parent: Encounter
Id:             IHE.PCC.PCS.Encounter.ClinicalSubset
Title: "IHE PCS Encounter Clinical Subset"
Description:      """
An IHE PCS Encounter Complete Report resource is used to deffine the emergency medical transport encounter of a patient,with only clinically relevant infromaiton.
- Identifier is Required
- encounter type is Required
- Service type is required if known 
- priority is required if known
- diagnosis are required if known
- service request (dispatch info) required if know 
"""


* identifier 1..*
* status 1..1
* statusHistory 0..*

//Note: Encunter type should be Ambulance, Medflight, should be set as an extensible code set
* class 1..1
* type 1..*
* type from NEMSIS.Type.of.Service.Requested.VS (example)
//Note: Should have as main options $230 "Patient transport", $117 "Emergency Medical" or $465 "Trasnport", $225 "Air ambulance", $226 "Ambulance" 
* subject 1..1
* reasonCode 1..*
* diagnosis 0..*
//Note SLicing for cheif complain vs impressions tbd for documentaiton 
//condition.category will = encounter-diagnosis and primary and scondary impressions should be indicated with the Diagnosis rank Number
* serviceProvider 1..1
