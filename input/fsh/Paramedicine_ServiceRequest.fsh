Profile:   IHE_PCC_PS_ServiceRequest_Notification
Parent: ServiceRequest
Id:             IHE.PCC.PS.ServiceRequest.Notification
Title: "Paramedicine ServiceRequest"
Description:      """
Contains Paramedicine ServiceRequest information
"""

* code 1..1 MS 
* code = $sct#185406000 "Ambulance request for patient"
// note: the focus may be used to refference the refferal or specificific refferal obaservations
* priority MS 
* requester MS 
* location 1..* MS 
* reason MS 
* note MS 
* doNotPerform 0..0
* extension contains priorityDescriptors 0..* 

//* extension contains effectiveDateTime named request_notification_time 0..1 MS 
//* extension[effectiveDateTime] ^definition = "The DateTime the notification for the request came in."


// Note: Nictiz Send Emergency Notificiation
// Senders = Geneal Practitioners or Triagist
// reciver = controle room operator 
// contains concepts for:
// Patient data 
// get data -- information on Pt retrival (locatoin, and on site emergency responders or air worker types)
// destination Details (destination code, location/department, location, location address, special features, expected specialism)
// explanation data -- explanation of situation or text reason for request 
// Refferer Data -- information of the requestor of service e.g. name, ids, provider licences, refferer type, or could just be a related person 
// triage Data -- TBD the designation
// General practitioner data 
// where data -- mainly patient centric data about condiditons or current problems 
// -- episode 
// -- contact 
// -- medicaiotn appointment 

// Triage data as an encounter? or some sort of serice event or procedure?
// OR a Triage Note 75500-9 composition can be made?


Profile:   IHE_PCC_PS_Triage
Parent: RiskAssessment
Id:             IHE.PCC.PS.Triage
Title: "Triage Data"
Description:      """
TBD
"""

* basedOn only Reference(ServiceRequest)
* occurrenceDateTime.start MS
// Nictiz Triage data. Date/time start triage
* occurrenceDateTime.end MS
// Nictiz Triage data.entriage date time 

* extension contains data_absent_reason 
// Nictiz Triage data.skipping reasons 

// Nictiz Triage data.alert 

// Nictiz Triage data.reason fault (reasons triage was intterupted and potentially unfinished)

// Nictiz Triage data.entrance complains (initial complaint/chief complaint?)

* method? OR 
* basis 
// Nictiz Triage data.triage criteria ()

// Nictiz Triage data.urgency 

// Nictiz Triage data.followup

* note 
// Nictiz Triage data.explanation 

// Nictiz Triage data.triage system data 


// Nictiz Triage data.type data



