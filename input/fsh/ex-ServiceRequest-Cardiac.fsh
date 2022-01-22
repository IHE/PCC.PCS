Instance:   ex-ServiceRequest-Cardiac
InstanceOf: ServiceRequest
Title: "Example of elements for Cardiac Example"
Description:      "holding typical values for a PCS service request"
* id = "05bf5e84-b7b3-496a-b77f-4d2fb7ffa16b"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* performer = Reference(Organization/09dbf2dd-49bf-4be4-b972-0f6e0bbf4618)
* reasonCode = $NEMSIS#2301019
//Note: eDispatch.01 - Dispatch Reason


Instance:   Inline-Instance-of-ServiceRequest-DispatchCenter
InstanceOf: Organization
id = "09dbf2dd-49bf-4be4-b972-0f6e0bbf4618"
identifier = 
name = "Yuma Police Department"
