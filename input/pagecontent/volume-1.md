
### About This Guide

This content profiles defiines the mobile Paramedicine Summary of Care (mPSC) document that should be passed to the hospital for the trasnport of a patient from emergency medical services systems.


## mPSC Overview

When a patient is transported for a medical emergency to a hospital, scene information, transfer information, patient assessments, and interventions are only verbally available to hospitals when the patient arrives. This results in inefficiencies and potential errors in the patient care process. This profile will map the flow of the patient information from the ambulance patient record, commonly known as the electronic Patient Care Report (ePCR), to the hospital system. 

Currently, patient interventions and assessments are written into an ambulance electronic Patient Care Report (ePCR) and are either manually entered by the emergency medical services (EMS) crew or collected from electronic devices (e.g., hemodynamic monitor). The ePCR is updated with treatments and interventions that are administered during the EMS on-scene care and transport. The hospital will not typically have access to paper or electronic versions of this patient information until the report is finished and signed in the ePCR system and only if it is requested by the hospital. In this profile, the prehospital paramedicine interventions and patient assessments are made available to the hospital/emergency room IT system electronically when the patient arrives or in advance of patient arrival to the hospital. This informs medical decision making during the hospital treatment to improve patient care and to save lives. Additional information that can be found in the completed report can be shared with the hospital in electronic and codable form. The information available can then be used to report to registries and quality reporting.

## mPSC Actors, and Transactions
This section defines the actors, transactions, and/or content modules in this profile. General definitions of actors are given in the Technical Frameworks General Introduction Appendix A. IHE Transactions can be found in the Technical Frameworks General Introduction Appendix B. Both appendices are located at http://ihe.net/Technical_Frameworks/#GenIntro
 
<figure>
{%include docSharing.svg%}
<figcaption><b>Figure: 1:X.1-1: mPSC Actor Diagram</b></figcaption>
</figure>
<br clear="all">

Figure X.1-1 shows the actors directly involved in the mPSC Profile and the relevant transactions between them. If needed for context, other actors that may be indirectly involved due to their participation in other related profiles are shown in dotted lines. Actors which have a required grouping are shown in conjoined boxes (see Section X.3).

* Actors

  - [Content Creator](ActorsAndTransactions.html#content-creator)

  - [Content Consumer](ActorsAndTransactions.html#content-consumer)

* Transactions

  - [PCC-1](PCC-1.html)

  
**Table X.1-1: mPSC Profile – Actors and Transactions**
| Actors 			    | Transactions   					    | Initiator or Responder	| Optionality	| Reference	|
|-----------------------|----------------------------			|--------------------------|---------------|-----------|
| Content Creator   	| Document Sharing [PCC-1](PCC-1.html)  | Initiator				| R				| TBD		|
{:.grid}

Figure X.1-1 shows the actors directly involved in the mPSC Profile and the direction that the content is exchanged. 

A product implementation using this profile may group actors from this profile with actors from a workflow or transport profile to be functional. The grouping of the content module described in this profile to specific actors is described in more detail in [Required Actor Groupings](volume-1.html#mpsc-required-actor-groupings) or in [Cross Profile Considerations](volume-1.html#mpsc-cross-profile-considerations).

**Table X.1-2: mPSC – Actors and Content Modules**
| Actors 			    | Content Modules  										 | Optionality	| Reference	|
|-----------------------|-----------------------------							 |--------------|-----------|
| Content Creator   	| mobile Paramedicine Summary of Care – Clinical Subset Document   | R			| TBD		|
|						| mobile Paramedicine Summary of Care – Complete Report Document 	 | R 			| TBD		|
| Content Consumer  	| mobile Paramedicine Summary of Care – Clinical Subset Document   | O(Note 1)	| TBD		|
|						| mobile Paramedicine Summary of Care – Complete Report Document 	 | O(Note 1)	| TBD		|
{:.grid}

Note 1: The Content Consumer must be able to support at least one of these options. 
Table X.1-2 lists the content module(s) defined in the mPSC Profile. To claim support with this profile, an actor shall support all required content modules (labeled “R”) and may support optional content modules (labeled “O”). 

### Actor Descriptions and Actor Profile Requirements
Transactional requirements are documented in PCC TF-2 Transactions. This section documents any additional requirements on profile’s actors.
Content module requirements are documented in PCC TF-2 Content Modules. This section documents any additional requirements on profile’s actors.


#### Content Creator
The Content Creator shall be responsible for the creation of content and sharing of two documents that summarize the emergency transport encounter:
•	mobile Paramedicine Summary of Care – Clinical Subset (mPSC-CS) containing the data elements defined in PCC TF-3: 6.3.1.D1 or, where the FHIR Option is used, containing the FHIR Composition bundle defined (here)[StructureDefinition-IHE.PCC.mPSC.Composition.Complete.Report.html]
•	mobile Paramedicine Summary of Care – Complete Report (mPSC-CR) containing the data elements defined in PCC TF-3: 6.3.1.D2, or, where the FHIR Option is used, containing the FHIR Composition bundle defined (here)[StructureDefinition-IHE.PCC.mPSC.Composition.ClinicalSubset.html]

FHIR Capability Statement for [Content Creator](CapabilityStatement-IHE.mPSC.Content-Creator.html)     

#### Trigger Events
Upon patient handoff from the paramedicine care team to the receiving facility, a mobile Paramedicine Summary of Care – Clinical Subset will be shared with the receiving facility using the Document Sharing [PCC-1] transaction. 
When the full mobile Paramedicine Summary of Care data is available, a mobile Paramedicine Summary of Care – Complete Report will be shared with the receiving facility using the Document Sharing [PCC-1] transactions.

#### Content Consumer
A Content Consumer is responsible for viewing, importing, or other processing options for mobile Paramedicine Summary of Care – Clinical Subset (1.3.6.1.4.1.19376.1.5.3.1.1.29.1) and mobile Paramedicine Summary of Care – Complete Report (1.3.6.1.4.1.19376.1.5.3.1.1.30.1) documents content created by a mPSC Content Creator. This is specified in [PCC-1] document sharing transaction in PCC TF-2: 3.1

FHIR Capability Statement for [Content Consumer](CapabilityStatement-IHE.mPSC.Content-Consumer.html)  

## mPSC Actor Options

Options that may be selected for each actor in this profile, if any, are listed in the Table X.2-1. Dependencies between options, when applicable, are specified in notes.

**Table X.2-1: mobile Paramedicine Summary of Care – Actors and Options**

| Actors 			    | Option Name  				   				| Reference	|
|-----------------------|----------------------------- 				|--------------|
| Content Creator   	| CDA Option (Note 1) 		   				| TBD			|
						| FHIR Option Note1 		   				| TBD			|
| Content Consumer  	| View Option Note2   		   				| TBD			|
						| Document Import Option Note2 				| TBD			|
						| Section Import Option Note2  				| TBD			|
						| Discrete Data Import Option Note2 		| TBD			|
						| Clinical Subset Data Import Option Note3  | TBD			|
						| Quality Data Import Option Note3 			| TBD			|
						| Trauma Data Import Option Note3 			| TBD			|
{:.grid}

Note 1: The Content Creator must be able to support at least one of these options. 
Note 2: The Content Consumer must implement at least one of these options. 
Note 3: If the Content Consumer implements any of these options, it must also support the Discrete Data Import Option. 


### CDA Option
This option defines the processing requirements placed on the Content Creators for producing a CDA structured document version of the mobile Paramedicine Summary of Care documents. 
**TODO: link to CDA template infromaiton**

### FHIR Option
This option defines the processing requirements placed on the Content Creators for producing a FHIR document bundle version of the mobile Paramedicine Summary of Care documents. The FHIR details are defined in the:
[mobile Paramedicine Summary of Care International Composition Complete Report](StructureDefinition-IHE.PCC.mPSC.Composition.Complete.Report.html)
[mobile Paramedicine Summary of Care International Composition Clinical Subset](StructureDefinition-IHE.PCC.mPSC.Composition.ClinicalSubset.html)

### Quality Data Import Option
This option defines the processing requirements placed on the Content Consumers for providing access and importing quality data from selected sections of the mobile Paramedicine Summary of Care. 
**TODO: link option template information, FHIR and CDA**

### Trauma Data Import Option
This option defines the processing requirements placed on the content consumers for providing access and importing trauma data from selected sections of the mobile Paramedicine Summary of Care. 
**TODO: link option template information, FHIR and CDA**

### Clinical Subset Data Import Option
This option defines the processing requirements placed on the Content Consumers for providing access and importing the clinical subset data from selected sections of the mobile Paramedicine Summary of Care. 
**TODO: link option template information, FHIR and CDA**

### Cardiac Data Import Option 
This option defines the processing requirements placed on the Content Consumers for providing access and importing Cardiac Event data from selected sections of the mobile Paramedicine Summary of Care. 
**TODO: link option template information, FHIR and CDA**

## mPSC Required Actor Groupings 
There are no required actor groupings for this profile. 

## mPSC Overview

When a hospital is receiving a patient arriving in an emergency ambulance transport, the main source of the patient information is the ambulance crew that performed the emergency transport. This information
is not typically electronically transferred and therefore this relay of information is usually verbal. This can draw away from the treatment of the patient. The use of an interoperable transfer of patient 
information can reduce the time spent relaying information and provide the hospital treatment team with patient information that can be used to make decisions on their treatment upon their arrival to the hospital.

### Use Case 1: Emergency Response for Heart Attack

This use case describes how an emergency response for a heart attack is carried out and then how the information on interventions is recorded and provided to a hospital.

#### Emergency Response for Heart Attack Use Case Description

A fifty-year-old man develops heart attack symptoms. He calls 911 for an emergency transport to a hospital. The emergency transport team is able to retrieve some of the patient’s medical history, current medications, and allergies from the patient and inputs this information in its Electronic Patient Care Report (ePCR). The patient told EMTs that he had already taken his prescribed nitroglycerine thirty minutes before calling 911 when the chest pain first presented. A 12-lead EKG was established to monitor the patient’s heart rhythm, and the rhythm shows abnormalities indicative of a myocardial infarction. An EMT starts an intravenous line in the patient’s left arm. During the transport, the patient’s chest pain increases and breathing is elevated. After ensuring that the patient is not on any blood thinners, the EMT administers aspirin to the patient. The patient feels relief after he was given aspirin. However, after feeling this relief, he falls into cardiac arrest. Compressions are started and maintained until arrival at the hospital. The patient information is made available to the hospital system and the hospital has full access to the EKG data, vitals, and interventions that were shared during the transport. The EMS ePCR is completed and then electronically shared with the hospital to be available for quality metrics. This sharing can be either directly or through a document sharing infrastructure.

#### Process Flow
usecase1-processflow.plantuml 
**Figure X.4.2.1.2-1: Basic Process Flow in mPSC Profile**

**Figure: Use Case 1 Process Flow**
Figure X.4.2.1.2-1: Basic Process Flow in mPSC Profile

**Pre-conditions**:

- The person calling 911 is suffering from an emergent issue.

- An EMS response team is sent out for the call.

**Main Flow**:

- EMS provider arrives on scene and inputs the patient information into the ePCR.

- Interventions are performed and documented during transport.

- EMS, either directly or through a document sharing infrastructure, provides the information for the current patient condition and interventions that were performed to the hospital.

- The patient care is transferred to the hospital staff.

**Post-conditions:**

- The patient care is continued in the hospital.

- The mobile Paramedicine Summary of Care – Complete is completed and the full report is provided, either directly or through a document sharing infrastructure, to the hospital.


### Use Case 2: Emergency Death 

This use case describes how Paramedicine Responds to an emergency that Results in a Death can report their documentation in support of coroner or medical examiner investigation documentation utilizing this profile. 

#### Emergency Death Use Case Description

Emergency services are called when a motor vehicle crash takes place on a highway. A paramedicine team is dispatched to the accident along with the first responders activated for this event. When the paramedicine team arrives at the incident location they identify this as a mass casualty incident. When they arrived at the patient and evaluated their injuries, the patients were triaged as black and no resuscitation efforts were made. Once all other patients that were at the incident were evaluated and treated, the Paramedicine team completes their reporting for each of the patients. They submit the complete report to the Health Information Exchange. The Medical examiner queries the HIE as a document consumer and uses the information captured in this document to inform the cause of death determination. 

#### Process Flow
usecase2-processflow.plantuml 
**Figure X.4.2.1.2-1: Basic Process Flow in mPSC Profile**

**Figure: Use Case 1 Process Flow**
Figure X.4.2.1.2-1: Basic Process Flow in mPSC Profile

**Pre-conditions**:

- Emergency Services are called to request the first responders’ services. 

- The first responder crews are activated and directed to the incident location. 

**Main Flow**:

- Paramedicine providers arrive on scene and evaluate the patient. 

- Resuscitation is determined to be futile. 

- The use of safety equipment, accident information, work information for an accident on the job, and vehicle information is included in the report content which will be used for accident report documentationlThe paramedicine provider completes their Report and sends the document to the Health Information Exchange 


**Post-conditions:**

- The Medical examiner queries the HIE as a document consumer and uses the information captured in this document to inform the cause of death determination. 

- parties responsible for accident reporting use the information to complete information that will be submitted to the national accident reporting system.


### Use Case 3: Non Emergency Transport of a Patient to a Hospital

This use case describes how a Paramedicine Summary of Care can be utilized in a non emergency Transport to a hospital. 

#### Non Emergency Transport of a Patient to a Hospital

A patient is talking with their provider about seeking more specialized care at a hospital. Their Provider determines that the patient should be monitored on their way to the hospital. The provider reaches out to an ambulance service center to request a non-emergency medical transport to the hospital for their patient. The ambulance service center accepts this request, and the provider forwards the patient’s pertinent medical information to the ambulance service center. The ambulance service activates their providers to carry out this request and forwards the patient medical information that was provided to them to this team. The Paramedicine providers are able to utilize the medical information to populate their report and inform themselves on the situation and care that may need to be provided to the patient. The paramedicine team arrives at the patient and collects their first assessments and patient status and begins their transport to the hospital. During the transport the patient is monitored and cared for as needed, and remains a non emergency transport. The care of the patient is transferred to the receiving hospital. When this care is transferred the clinical subset is sent to their system to continue the monitoring and informing the care of the patient. The paramedicine provider completes the Complete Report and forwards that document to the receiving hospital system for documentation of longitudinal care documents and to the Provider that made the request for the service to inform them of the care event and transport. 

#### Process Flow
usecase3-processflow.plantuml 
**Figure X.4.2.1.2-1: Basic Process Flow in mPSC Profile**

**Figure: Use Case 1 Process Flow**
Figure X.4.2.1.2-1: Basic Process Flow in mPSC Profile

**Pre-conditions**:

- Provider calls an ambulance service to transfer the patient into a long-term care facility. 

- The control center accepts the request. 

- The provider forwards the Patient’s pertinent medical information to the Ambulance service

- The control center Activates the paramedicine team to carry out this transport, and forwards the patient’s medical information while they are en route.  

**Main Flow**:

- Paramedicine provider arrives at the patient’s side and performs initial assessments and gathers the first vital signs.

- The Patient’s care is transferred to the Paramedicine providers 

- The Transport of the patient is carried out with the necessary information documented into the electronic system 

- EMS, either directly or through a document sharing infrastructure, provides the information for the current patient information and patient statuses that were monitored during the transport, to the receiving facility with the Clinical subset document. 

- The care of the patient was transferred to the providers in the receiving facility. 

**Post-conditions:**

- The Complete Report document is completed and the full report is provided, either directly or through a document sharing infrastructure, to the hospital and any other systems that are responsible for the storing and maintenance of the patient’s medical records and longitudinal care. 

- To close the loop of the request from the provider, a complete report is sent to the requesting provider. 


### Use Case 4: Opioid Care with no Transport 

This use case describes how paramedicine services provides treatment to a patient but does not carry out a transport. 

#### Emergency Response for Heart Attack Use Case Description

Emergency services are contacted for a request for paramedicine services for an unresponsive patient. A Paramedicine team is dispatched to the incident location. The paramedicine team makes contact with the patient. The team is able to evaluate the patient and obtain their medical history from their friend. Based on the information provided by the patient’s friend the use of opioids was determined and the providers administered naloxone to the patient. When the medication took effect the patient became responsive.  The patient refused to be transported against medical advice. The paramedicine team completes their care with the patient, documenting the events of the care and the administration of the medication, without transport and finishing their care with the patient. The paramedicine providers complete their documentation. As a participant of an HIE they send a Complete Report document, this ensures that the documentation of this event can be utilized for longitudinal care of this patient.  

#### Process Flow
usecase4-processflow.plantuml 
**Figure X.4.2.1.2-1: Basic Process Flow in mPSC Profile**

**Figure: Use Case 1 Process Flow**
Figure X.4.2.1.2-1: Basic Process Flow in mPSC Profile

**Pre-conditions**:

- A request for emergency services is made.

- An emergency service control room operator activates a care team to assess the patient for care

- Any information that has been collected from the call is documented and forwarded to the the activated paramedicine team

**Main Flow**:

- The paramedicine providers arrive at the patient and get an identification and a general medical history from the patient’s friend

- The patient is assessed with the context of that information and the paramedicine providers administer naloxone to the patient and carry out other protocols used for overdose care. 

- The patient improves and becomes responsive. The paramedicine providers recommend that the patient should be transported to the hospital for continued care. The patient refuses the transport to the hospital against medical advice. 

- The Paramedicine providers document the refusal of care and complete their interactions with the patient.  

**Post-conditions:**

- The paramedicine providers complete their care report. 

- The mobile Paramedicine Summary of Care – Complete Report is sent to an HIE. 


## mPSC Security Considerations
See [ITI TF-2.x: Appendix Z.8](http://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf) “Mobile Security Considerations”.

## mPSC Cross Profile Considerations
The information that is imported by the mobile Paramedicine Summary of Care (mPSC) Content Consumer implementing the quality option may be leveraged to support content needed for the Quality Outcome Reporting for EMS (QORE) Profile. 
The use of the IHE XD* family of transactions is encouraged to support standards-based interoperability between systems acting as the mPSC Content Creator and mPSC Content Consumer. However, this profile does not require any groupings with ITI XD* actors to facilitate transport of the content document it defines. 
IHE transport transactions that MAY be utilized by systems playing the roles of mPSC Content Creator or Content Consumer to support the standard use case defined in this profile: 
A Document Source in XDS.b, a Portable Media Creator in XDM, or a Document Source in XDR might be grouped with the mPSC Content Creator. A Document Consumer in XDS.b, a Portable Media Importer in XDM, or a Document Recipient in XDR might be grouped with the mPSC Content Consumer. A registry/repository-based infrastructure is defined by the IHE Cross Enterprise Document Sharing (XDS.b) Profile that includes profile support that can be leveraged to facilitate retrieval of public health related information from a document sharing infrastructure: Multi-Patient Query (MPQ), and Document Metadata Subscription (DSUB). 
A reliable messaging-based infrastructure is defined by the IHE Cross Enterprise Document Reliable Interchange (XDR) Profile. A Document Source in XDR might be grouped with the mPSC Content Creator. A Document Recipient in XDR might be grouped with the mPSC Content Consumer. 
Detailed descriptions of these transactions can be found in the IHE IT Infrastructure Technical Framework.