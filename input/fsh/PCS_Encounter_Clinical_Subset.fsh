Profile:   IHE_PCC_mPSC_Encounter
Parent: Encounter
Id:             IHE.PCC.mPSC.Encounter
Title: "IHE mPSC Encounter"
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

//Note: Encunter type should be Ambulance, Medflight, should be set as an extensible code set
* class 1..1
* type 1..*
//* type from NEMSIS.Type.of.Service.Requested.VS (example)
//Note: Should have as main options $230 "Patient transport", $117 "Emergency Medical" or $465 "Trasnport", $225 "Air ambulance", $226 "Ambulance" 
* serviceType MS 
* priority 1..1 MS 
* subject 1..1
* reasonCode 1..*
* participant MS 
* participant.type from  Paramedicine_Provider_Roles_VS (extensible)
* diagnosis 1..*

* location MS 

* serviceProvider 1..1
