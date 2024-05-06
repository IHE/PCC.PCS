Profile:        Patient_Transport_ClinicalSubset
Parent:         Encounter
Id:             Patient.Transport.ClinicalSubset
Title:          "Patient Transport ClinicalSubset"
Description:    "Record of transport of a person or patient with constraints matching the Clinical Subset."


* statusHistory MS 

* extension contains http://hl7.org/fhir/StructureDefinition/resource-instance-description named description 0..1

* class MS 
// extend class codes to include trasnport or emergency transport, interfacility transport

* type MS 
//= from Tranport_Method.vs (example)
// eDisposition.16 - EMS Transport Method

* priority MS 
// eDisposition.17 - Transport Mode from Scene
// Nictiz Ambulance Sturgence 
//* extension contains PriorityDescriptors named PriorityDescriptors 0..*
// eDisposition.18 - Additional Transport Mode Descriptors

* subject MS 
* basedOn MS 
* extension contains http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter named encounter 0..1

* participant MS    
// TBD extend role valueset 


* period MS 
// Period.start = eTimes.09 - Unit Left Scene Date/Time
// Period.end = eTimes.11 - Patient Arrived at Destination Date/Time

* reasonCode 1..* MS   
//    * extesnion contains http://hl7.org/fhir/StructureDefinition/data-absent-reason from .vs 
//* reasonCode ^slicing.discriminator.type = #pattern
//* reasonCode ^slicing.discriminator.path = "reference"
//* reasonCode ^slicing.rules = #open
//* reasonCode ^slicing.ordered = false
//* reasonCode contains 
//    destinationReason 1..* MS and
    // eDisposition.20 - Reason for Choosing Destination
//    transportReason 0..1 MS and
    //eSituation.20 - Reason for Interfacility Transfer/Medical Transport
    //ePayment.44 - Ambulance Transport Reason Code
//    noTransportReason 0..* MS
//* reasonCode[destinationReason] only Reference(Transport_Destination_Reason)
//* reasonCode[transportReason] only Reference(Transport_Reason)
//* reasonCode[noTransportReason] only Reference(No_Transport_Reason)

//* extension contains TransportInstructions named TransportInstructions 0..* 

* extension contains NumberOfPatientsTransported named NumberOfPatientsTransported 0..*
//* extension contains Disposition named Disposition 0..1  
// eDisposition.30 - Transport Disposition 
//* extension contains PreArrivalAlert named PreArrivalAlert 0..*
//* extension contains trasnferOfCare named trasnferOfCare 0..*

* location 0..* MS 
* hospitalization 0..0
* partOf Reference(IHE_PCC_ParamedicineSummary_Encounter_ClinicalSubset)

Extension: NumberofPatients
Id: NumberofPatients
Title: "Number of Patients Transported"
Description: "The number of patients transported by this paramedicine crew and unit."
* ^context[+].type = #element
* ^context[=].expression = "NumberofPatients"
* value 0..1 MS 


//Extension: TransportInstructions
//Id: TransportInstructions
//Title: "Paramedicine Transport Instructions"
//Description: "TBD"
//* ^context[+].type = #element
//* ^context[=].expression = "TransportInstructions"
//* Extension contains  
//    dateTime 1..* MS and
//    instructions 0..1 and 
//    authorization 0..* and 
//    roundTripPurpose 0..1
//* TransportInstructions[dateTime] = value[x] only valueDateTime
//* TransportInstructions[instructions] only Reference(ParamedicineTransportInstructions)
//* TransportInstructions[authorization] only Reference(Any)
//* TransportInstructions[roundTripPurpose] only Reference(Round_Trip_Purpose_Description)


//Extension: TransportInstructionsObservations 
//Id: TransportInstructionsObservations
//Title: "Paramedicine Transport Observations"
//Description: "TBD"
//* ^context[+].type = #element
//* ^context[=].expression = "TransportObservations"
//* Extension contains  
//    howPatientMovedInToAmbulance 0..* MS and 
//    patientTransportPosition
//    howPatientMovedInToAmbulance
//    stretcherPurposeDescription
//* TransportInstructionsObservations[howPatientMovedInToAmbulance] only Reference(PatientMovedToAmbulance)
//* TransportInstructionsObservations[patientTransportPosition] only Reference(PatientPosition)
//* TransportInstructionsObservations[howPatientMovedInToAmbulance] only Reference(PatientMovedFromAmbulance)
//* TransportInstructionsObservations[stretcherPurposeDescription] only Reference(StretcherPurposeDescription)



//Extension: PreArrivalAlert
//Id: PreArrivalAlert
//Title: "Paramedicine Transport PreArrival Alert"
//Description: "TBD"
//* ^context[+].type = #element
//* ^context[=].expression = "PreArrivalAlert"
//* PreArrivalAlert only Reference(Activation_Of_Destination_Facility_Team)



//Profile:        Patient_Transport_CompleteReport
//Parent:         Patient.Transport.ClinicalSubset
//Id:             Patient.Transport.CompleteReport
//Title:          "Patient Transport Complete Report"
//Description:    "Record of transport of a person or patient with constraints matching the Complete Report."

//* extension contains TransportDisposition named TransportDisposition 0..*



//Extension: TransportDisposition
//Id: TransportDisposition
//Title: "Paramedicine Transport TransportDisposition"
//Description: "TBD"
//* ^context[+].type = #element
//* ^context[=].expression = "TransportDisposition"
//* extension contains
//    trasnportIndicator 0..1 and 
//    numberOfPatientsTransported 0..1 MS and 
//    disposition 0..* MS and  
//    //ePayment.41 - Patient Transport Assessment
//    dispositionInstructionsProvidedToPatient 0..* 
//* TransportDisposition[trasnportIndicator] only Reference(TrasnportIndicator)
//* TransportDisposition[disposition] only Reference(TrasnportDisposition)
//* TransportDisposition[numberOfPatientsTransported] only Reference(NumberOfPatientsTransported)
//* TransportDisposition[dispositionInstructionsProvidedToPatient] only Reference(Disposition_Instructions_Provided)