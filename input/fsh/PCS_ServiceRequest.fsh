Profile:   IHE_PCS_ServiceRequest
Parent: ServiceRequest
Id:             IHE.PCS.ServiceRequest
Title: "IHE PCS ServiceRequest"
Description: The Service request that is used to define the Request for the PCS encounter

*category 1..1 
* valueCodeableConcept from NEMSIS_eResponse_TypeOfServiceRequested_VS

*reasonCode 1..*
* valueCodeableConcept from 

*insurance 0..1
*insurance = Reference(Coverage)