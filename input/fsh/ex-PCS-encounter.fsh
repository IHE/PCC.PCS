Instance:   example-PCS-Encounter-Complete-Cardiac
InstanceOf: IHE.PCC.PCS.Encounter.CompleteReport
Title: "Example of PCS CompleteReport for a Cardiac Encounter"
Description:      "holding typical values for a Cardiac Encounter in the PCS CompleteReport"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* status = #finished
* id = "fa51192c-c36a-4b0a-84c1-9dc6fded7c2c"
* identifier.value = "350-2021100700394"
//NEMSIS eResponse.03 - Incident Number --- VERIFY
* type = NEMSIS#2205001

* statusHistory[+].status = $NEMSIS#eTimes.01
* statusHistory[=].period.start = 2021-10-06T10:47:53-07:00
//NEMSIS eTimes.01 - PSAP Call Date/Time

* statusHistory[+].status = $NEMSIS#eTimes.02
* statusHistory[=].period.start = 2021-10-06T10:47:53-07:00
//NEMSIS eTimes.02 - Dispatch Notified Date/Time

* statusHistory[+].status = #planned
* statusHistory[=].period.start = 2021-10-06T10:48:40-07:00
//eTimes.03 - Unit Notified by Dispatch Date/Time

//TODO: JFM commented out all of the StatusHistoryObservation stuff as there is no such thing
//* statusHistory.StatusHistoryObservation.Delays[+] = $NEMSIS#2208013
//NEMSIS eResponse.08 - Type of Dispatch Delay

//* statusHistory.StatusHistoryObservation.Delays[+] = $NEMSIS#2212013
//* statusHistory.StatusHistoryObservation.Delays[=] = NEMSIS#2212033
//NEMSIS eResponse.11 - Type of Turn-Around Delay

//* statusHistory.StatusHistoryObservation.OdometerReadings[+] = 89524.2
//* statusHistory.StatusHistoryObservation.OdometerReadings[+] = 89524.7
//* statusHistory.StatusHistoryObservation.OdometerReadings[+] = 89525.3
//* statusHistory.StatusHistoryObservation.OdometerReadings[+] = 89526.4

* statusHistory[+].status = $NEMSIS#eTimes.04
* statusHistory[=].period.start = 2021-10-06T10:48:58-07:00
//NEMSIS eTimes.04 - Dispatch Acknowledged Date/Time

* statusHistory[+].status = $NEMSIS#eTimes.05
* statusHistory[=].period.start = 2021-10-06T10:49:45-07:00
//NEMSIS eTimes.05 - Unit En Route Date/Time
//* statusHistory.StatusHistoryObservation.OdomoterReadings[=] = 89524.2
//NEMSIS eResponse.19 - Beginning Odometer Reading of Responding Vehicle

* statusHistory[+].status = #arrived
* statusHistory[=].period.start = 2021-10-06T10:50:53-07:00
//NEMSIS eTimes.06 - Unit Arrived on Scene Date/Time
//* statusHistory.StatusHistoryObservation.OdomoterReadings[=] = 89524.7
//NEMSIS eResponse.20 - On-Scene Odometer Reading of Responding Vehicle
//* statusHistory.StatusHistoryObservation.Delays[=] = #260413007
//NEMSIS eResponse.09 - Type of Response Delay
//TODO: complete (None 260413007 SNOMED)

* statusHistory[+].status = $NEMSIS#eTimes.07
* statusHistory[=].period.start = 2021-10-06T10:51:38-07:00
//NEMSIS eTimes.07 - Arrived at Patient Date/Time

* statusHistory[+].status = $NEMSIS#eTimes.09
* statusHistory[=].period.start = 2021-10-06T11:03:52-07:00
//NEMSIS eTimes.09 - Unit Left Scene Date/Time
//* statusHistory.StatusHistoryObservation.Delays[=] = #260413007
//NEMSIS eResponse.10 - Type of Scene Delay
//TODO: complete (None 260413007 SNOMED)

* statusHistory[+].status = $NEMSIS#eTimes.11
* statusHistory[=].period.start = 2021-10-06T11:09:43-07:00
//NEMSIS eTimes.11 - Patient Arrived at Destination Date/Time
//* statusHistory.StatusHistoryObservation.OdomoterReadings[=] = 89525.3
//NEMSIS eResponse.21 - Patient Destination Odometer Reading of Responding Vehicle
//* statusHistory.StatusHistoryObservation.Delays[=] = #260413007
//NEMSIS eResponse.11 - Type of Transport Delay
//TODO: complete (None 260413007 SNOMED)

* statusHistory[+].status = $NEMSIS#eTimes.12
* statusHistory[=].period.start = 2021-10-06T11:12:20-07:00
//NEMSIS eTimes.12 - Destination Patient Transfer of Care Date/Time

* statusHistory[+].status = $NEMSIS#eTimes.13
* statusHistory[=].period.start = 2021-10-06T11:31:01-07:00
//NEMSIS eTimes.13 - Unit Back in Service Date/Time
//* statusHistory.StatusHistoryObservation.OdomoterReadings[=] = 89526.4
//NEMSIS eResponse.22 - Ending Odometer Reading of Responding Vehicle
//TODO: JFM commented next line out because of no value
//* statusHistory.StatusHistoryObservation.Delays[=] = 
//NEMSIS eResponse.12 - Type of Turn-Around Delay
//TODO: complete delays: Equipment/Supply Replenishment, EMS Crew Accompanies Patient for Facility Procedure

* statusHistory[+].status = $NEMSIS#eTimes.15
* statusHistory[=].period.start = 2021-10-06T11:36:20-07:00
//NEMSIS eTimes.15 - Unit Back at Home Location Date/Time

* statusHistory[+].status = #finished
* statusHistory[=].period.start = 2021-10-06T11:52:02-07:00
//NEMSIS eTimes.16 - EMS Call Completed Date/Time

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER

* serviceType = $NEMSIS#4232005

* priority.coding[+] = $NEMSIS#2223001
//eResponse.23 - Response Mode to Scene
* priority.coding[+] = $NEMSIS#2224015
* priority.coding[+] = $NEMSIS#2224011
* priority.coding[+] = $NEMSIS#2224001
//NEMSIS eResponse.24 - Additional Response Mode Descriptors

* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

* basedOn = Reference(ServiceRequest/05bf5e84-b7b3-496a-b77f-4d2fb7ffa16b)
//Dispatch 

* participant[+].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant[=].individual = Reference(Practitioner/21a78dce-38e6-11ec-8d3d-0242ac130003)
* participant[+].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF
* participant[=].individual = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* participant[+].type.coding[+] = $NEMSIS#2403001
* participant[=].type.coding[+] = $NEMSIS#2403003 
* participant[=].type.coding[+] = $NEMSIS#2403007
* participant[=].individual = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)

* period.start = 2021-10-06T10:48:40-07:00
//Encounter starts when Unit Notified by Dispatch -- VERIFY
* period.end = 2021-10-06T11:52:02-07:00
//Encounter ends when the EMS Call is Completed or Cancelled

* reasonCode = $NEMSIS#2301019
//Note: eDispatch.01 - Dispatch Reason

* diagnosis[+].condition = Reference(Condition/6392f114-3b62-11ec-8d3d-0242ac130003)
* diagnosis[=].use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC
* diagnosis[+].condition = Reference(Condition/225ccd48-3b6a-11ec-8d3d-0242ac130003)
* diagnosis[=].rank = 1
//NEMSIS eSituation.11 - Provider's Primary Impression

* location[+].location = Reference(Location/6ff401d4-4191-11ec-81d3-0242ac130003)
* location[=].physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#ve
* location[+].location = Reference(Location/10dba0e4-41a5-11ec-81d3-0242ac130003)
* location[+].location = Reference(Location/73c870bc-418a-11ec-81d3-0242ac130003)
* location[+].location = Reference(Location/e2bb641e-418c-11ec-81d3-0242ac130003)


* serviceProvider = Reference(Organization/1a2364d6-418f-11ec-81d3-0242ac130003)

//TODO: JFM commented next line out
//* BarriersToCare = $NEMSIS#3101027
//NEMSIS eHistory.01 - Barriers to Patient Care

* extension[Transport].extension[Priority].valueCodeableConcept = $NEMSIS#4217001
* extension[Transport].extension[PriorityDescriptors][+].valueCodeableConcept = $NEMSIS#4218001 
* extension[Transport].extension[PriorityDescriptors][+].valueCodeableConcept = $NEMSIS#4218007
* extension[Transport].extension[PriorityDescriptors][+].valueCodeableConcept = $NEMSIS#4218013
* extension[Transport].extension[NumberofPatients].valueInteger = 1
//* extension[Transport].extension[TansportReasonCode][+].valueCodeableConcept = $HARQ#A
//* extension[Transport].extension[TansportReasonCode][+].valueCodeableConcept = $HARQ#D
* extension[Transport].extension[Disposition].valueCodeableConcept = $NEMSIS#4230001
* extension[Transport].extension[DestinationReason][+].valueCodeableConcept = $NEMSIS#4220001
* extension[Transport].extension[DestinationReason][+].valueCodeableConcept = $NEMSIS#4220005








Instance: Inline-Instance-for-serviceProvider-Location
InstanceOf: Location
Usage: #inline
* id = b861aba6-38e0-11ec-8d3d-0242ac130003
* identifier.value = "340-TGCON058"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
//NEMSIS eResponse.01 - EMS Agency Number
//NEMSIS dAgency.02 - EMS Agency Number
* name = "IHETackTrust"
//NEMSIS eResponse.02 - EMS Agency Name
//NEMSIS dAgency.03 - EMS Agency Name

* identifier.value = "058"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SR
//NEMSIS dAgency.01 - EMS Agency Unique State ID
* identifier.assigner = Reference(Organization/1a2364d6-418f-11ec-81d3-0242ac130003)
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
//NEMSIS dAgency.25 - National Provider Identifier
//* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#
//NEMSIS dAgency.26 - Fire Department ID Number
//TODO: complete, possibly open issue

* address.state = "Arizona"
//TODO: JFM commented the following line out as it is missing a real code
//* type = $EMS "Emergency Medical Service"  

Instance: Inline-EMS-ex-patient-Cardiac-Ambulance-ChiefComplaint
InstanceOf: ConditionUvIps
Usage: #inline
* id = 6392f114-3b62-11ec-8d3d-0242ac130003
//* text = "Cardiac arrest"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional // Note: Verify
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* bodySite[+] = $loinc#LA18114-1 "General/global" 
//TODO Note: To be proprely translated into SNOMED]
* bodySite[+] = $loinc#LA18277-6 "Cardiovascular"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* onsetDateTime = "2021-10-06T10:45:58-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* evidence[+].code = $loinc#I46.9 "Cardiac arrest, cause unspecified"
* evidence[+].code = $loinc#R09.2 "Respiratory arrest"
* evidence{+].code = $loinc#R11.10 "Vomiting, unspecified"
// Note: TODO figure out how duration can be incorperated 

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Primary-Impression
InstanceOf: ConditionUvIps
Usage: #inline
* id = "225ccd48-3b6a-11ec-8d3d-0242ac130003"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional // Note: Verify
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = $loinc#I46.9 "Cardiac arrest, cause unspecified"
// NOte: ICD-10 [2.16.840.1.113883.6.3] refernce]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* onsetDateTime = "2021-10-06T10:45:58-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* evidence[+].code = $loinc#I46.9 "Cardiac arrest, cause unspecified"
* evidence[+].code = $loinc#R09.2 "Respiratory arrest"
* evidence[+].code = $loinc#R11.10 "Vomiting, unspecified"

