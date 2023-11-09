Profile:        ParamedicineDispatch
Parent:         ServiceRequest
Id:             IHE.PCS.ParamedicineDispatch
Title:          "IHE PCS Paramedicine Dispatch Resource"
Description:    "The Request information that is documented by the Paramedicine orginization when a service is requested. The service can be requested either through verbal or electroic communication that is routed to the disptach center. "


* priority 1..1
* subject only Reference(PatientUvIps)
* reasonCode 1..* 
* extension contains ScheduledTimeOfArrivalAtDestination named ScheduledTimeOfArrivalAtDestination 0..1
* extension contains DisptachNotification named DisptachNotificationDateTime 0..1

//NOte: occurrence[x] should be used as the estimated time of crew arrival or planned pickup time 

Extension: ScheduledTimeOfArrivalAtDestination
Id: scheduledTimeOfArrivalAtDestination
Title: "scheduled time of arrival at destination"
Description: "additional Occurance/time stamp for planned transport service requests"
* ^context[+].type = #element
* ^context[=].expression = "ParamedicineDispatch"
* value[x] only dateTime


Extension: DisptachNotificationDateTime
Id: DisptachNotificationDateTime
Title: "Disptach Notification DateTime"
Description: "The date/time that the service was requested from Paramedicine or Transport Services"
* ^context[+].type = #element
* ^context[=].expression = "ParamedicineDispatch"
* value[x] only dateTime

