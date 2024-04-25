Profile:        ParamedicineDispatch
Parent:         ServiceRequest
Id:             IHE.PCS.ParamedicineDispatch
Title:          "IHE PCS Paramedicine Dispatch Resource"
Description:    "The Request information that is documented by the Paramedicine orginization when a service is requested. The service can be requested either through verbal or electroic communication that is routed to the disptach center. "


* identifier MS 
// eDispatch.06 - Unit Dispatched CAD Record ID
* extension contains DisptachNotification named DisptachNotification 1..1

* priority 0..1 MS 
// Nictiz controle room urgence 
// eDispatch.05 - Dispatch Priority (Patient Acuity)
* subject only Reference(IHE.PCC.Paramedicine.Patient)

* reasonCode 1..* MS 
    * Contraint = "The dispatch reason reported SHALL be present or a Data Absent Reason Extension SHALL be present. "
// eDispatch.01 - Dispatch Reason 

* occurrence[x] MS 
// nictiz Planned time of delivery or planned stroke time 
* requester MS 
// Nictiz Care request for care

* performer 1..* MS 
* performer[+] = Reference(IHE.PCC.ParamedicineUnitCrew)
* extension contains DispatchNotes named DispatchNotes 1..1

* supportingInfo Reference(Any or EMD_Performed or PSAPCallDateTime or UnitNotifiedDateTime)
//NOte: occurrence[x] should be used as the estimated time of crew arrival or planned pickup time 



Extension: DisptachNotification
Id: disptachNotification
Title: "Disptach Notification DateTime"
Description: "The date/time that the service was requested from Paramedicine or Transport Services"
* ^context[+].type = #element
* ^context[=].expression = "ParamedicineDispatch"
* value[x] only dateTime

 
Extension: DispatchNotes
Id: DispatchNotes
Title: "Dispatch Notes"
Description: "The notes the Dispatch performer made during the conversation with the requestor."
* value[x] only valueString


* doNotPerform 0..0
* asNeeded[x] 0..0 
* specimen 0..0 
