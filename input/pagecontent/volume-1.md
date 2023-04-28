
### About This Guide

This content profiles defiines the Paramedicine Care Summary (PCS) document that should be passed to the hospital for the trasnport of a patient from emergency medical services systems.


## PCS Overview

When a patient is transported for a medical emergency to a hospital, pertinant situational ifnformation, patient history, patient assessments, and interventions are only verbally available 
to hospitals when the patient arrives. This results in inefficiencies and potential errors in the patient care process. This profile will map the flow of the patient
information from the ambulance patient record, commonly known as the electronic Patient Care Record (ePCR), to the hospital system.

Currently, patient interventions and assessments are written into an ambulance electronic Patient Care Record (ePCR), and are either manually updated by the Emergency Medical Services (EMS) crew, 
or collected from electronic devices (e.g., hemodynamic monitor). The ePCR is updated with treatments and interventions that are administered during the transport.
The hospital will not typically have access to paper or electronic versions of this patient information until the report is finished and signed in the ePCR and only if it is requested by the hospital. 

In this content profile, the pertinant patient information are made available to the hospital/emergency room IT systemelectronically when the patient arrives, or in advance of patient arrival to the 
hospital. This informs medical decision making during the hospital treatment to improve patient care and to save lives. Additional
information in the form of the completed report can be shared with the hospital in an electronic and codable format. The information available can then be used to report to registries and utilized for 
quality reporting.

## PCS Actors, and Transactions
This section defines the actors, transactions, and/or content modules in this profile. General definitions of actors are given in the Technical Frameworks General Introduction Appendix A. IHE Transactions can be found in the Technical Frameworks General Introduction Appendix B. Both appendices are located at http://ihe.net/Technical_Frameworks/#GenIntro
 
 [Figure X.1-1: PCS Actor Diagram](PCS Actor Diagram.png)
Figure X.1-1 shows the actors directly involved in the PCS Profile and the relevant transactions between them. If needed for context, other actors that may be indirectly involved due to their participation in other related profiles are shown in dotted lines. Actors which have a required grouping are shown in conjoined boxes (see Section X.3).

* Actors

  - [Content Creator](2_actors_and_transactions.html#Content Creator)

  - [Content Consumer](2_actors_and_transactions.html#Content Consumer)

* Transactions

  - [PCC-1](PCC-1.html)
  - [ITI-65](ITI-65.html)
  
**Table X.1-1: PCS Profile – Actors and Transactions**
| Actors 			    | Transactions   					    | Initiator or Responder	| Optionality	| Reference	|
|-----------------------|----------------------------			|--------------------------|---------------|-----------|
| Content Creator   	| Document Sharing [PCC-1](PCC-1.html)  | Initiator				| R				| TBD		|
| Content Consumer  	| Document Sharing [PCC-1](ITI-65.html) | Responder				| R				| TBD		|
Figure X.1-1 shows the actors directly involved in the PCS Profile and the direction that the content is exchanged. 

A product implementation using this profile may group actors from this profile with actors from a workflow or transport profile to be functional. The grouping of the content module described in this profile to specific actors is described in more detail in [Required Actor Groupings](volume-1.html#pcs-required-actor-groupings) or in [Cross Profile Considerations](volume-1.html#pcs-cross-profile-considerations).

**Table X.1-2: PCS – Actors and Content Modules**
| Actors 			    | Content Modules  										 | Optionality	| Reference	|
|-----------------------|-----------------------------							 |--------------|-----------|
| Content Creator   	| Paramedicine Care Summary – Clinical Subset Document   | R			| TBD		|
						| Paramedicine Care Summary – Complete Report Document 	 | R 			| TBD		|
| Content Consumer  	| Paramedicine Care Summary – Clinical Subset Document   | O(Note 1)	| TBD		|
						| Paramedicine Care Summary – Complete Report Document 	 | O(Note 1)	| TBD		|
Note 1: The Content Consumer must be able to support at least one of these options. 
Table X.1-2 lists the content module(s) defined in the PCS Profile. To claim support with this profile, an actor shall support all required content modules (labeled “R”) and may support optional content modules (labeled “O”). 

### Actor Descriptions and Actor Profile Requirements
Transactional requirements are documented in PCC TF-2 Transactions. This section documents any additional requirements on profile’s actors.
Content module requirements are documented in PCC TF-2 Content Modules. This section documents any additional requirements on profile’s actors.

#### Content Creator
- The Content Creator shall be responsible for the creation of content and sharing of two documents that summarize the emergency transport encounter Paramedicine Care Summary – Clinical Subset (PCS-CS) containing the data elements defined in PCC TF-3: 6.3.1.D1 or, where the FHIR Option is used, containing the FHIR Composition bundle defined in PCC TF-3:6.6.x.2.1
- Paramedicine Care Summary – Complete Report (PCS-CR) containing the data elements defined in PCC TF-3: 6.3.1.D2, or, where the FHIR Option is used, containing the FHIR Composition bundle defined in PCC TF-3:6.6.x.2.1


#### Trigger Events
Upon patient handoff from the paramedicine care team to the receiving facility, a Paramedicine Care Summary – Clinical Subset will be shared with the receiving facility using the Document Sharing [PCC-1] transaction. 
When the full Paramedicine Care Summary data is available, a Paramedicine Care Summary – Complete Report will be shared with the receiving facility using the Document Sharing [PCC-1] transactions.

#### Content Consumer
A Content Consumer is responsible for viewing, importing, or other processing options for Paramedicine Care Summary – Clinical Subset (1.3.6.1.4.1.19376.1.5.3.1.1.29.1) and Paramedicine Care Summary – Complete Report (1.3.6.1.4.1.19376.1.5.3.1.1.30.1) documents content created by a PCS Content Creator. This is specified in [PCC-1] document sharing transaction in PCC TF-2: 3.1

## PCS Actor Options
Options that may be selected for each actor in this profile, if any, are listed in the Table X.2-1. Dependencies between options, when applicable, are specified in notes.
**Table X.2-1: Paramedicine Care Summary – Actors and Options**
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
Note 1: The Content Creator must be able to support at least one of these options. 
Note 2: The Content Consumer must implement at least one of these options. 
Note 3: If the Content Consumer implements any of these options, it must also support the Discrete Data Import Option. 


### CDA Option
This option defines the processing requirements placed on the Content Creators for producing a CDA structured document version of the Paramedicine Care Summary documents. 
**TODO: link to CDA template infromaiton**

### FHIR Option
This option defines the processing requirements placed on the Content Creators for producing a FHIR document bundle version of the Paramedicine Care Summary documents. The FHIR details are defined in the:
[Paramedicine Care Summary International Composition Complete Report](StructureDefinition-IHE.PCC.PCS.Composition.CR.html)
[Paramedicine Care Summary International Composition Clinical Subset](StructureDefinition-IHE.PCC.PCS.Composition.CS.html)

### Quality Data Import Option
This option defines the processing requirements placed on the Content Consumers for providing access and importing quality data from selected sections of the Paramedicine Care Summary. 
**TODO: link option template information, FHIR and CDA**

### Trauma Data Import Option
This option defines the processing requirements placed on the content consumers for providing access and importing trauma data from selected sections of the Paramedicine Care Summary. 
**TODO: link option template information, FHIR and CDA**

### Clinical Subset Data Import Option
This option defines the processing requirements placed on the Content Consumers for providing access and importing the clinical subset data from selected sections of the Paramedicine Care Summary. 
**TODO: link option template information, FHIR and CDA**

### Cardiac Data Import Option 
This option defines the processing requirements placed on the Content Consumers for providing access and importing Cardiac Event data from selected sections of the Paramedicine Care Summary. 
**TODO: link option template information, FHIR and CDA**

## PCS Required Actor Groupings 
There are no required actor groupings for this profile. 

## PCS Overview

When a hospital is receiving a patient arriving in an emergency ambulance transport, the main source of the patient information is the ambulance crew that performed the emergency transport. This information
is not typically electronically transferred and therefore this relay of information is usually verbal. This can draw away from the treatment of the patient. The use of an interoperable transfer of patient 
information can reduce the time spent relaying information and provide the hospital treatment team with patient information that can be used to make decisions on their treatment upon their arrival to the hospital.

### Use Case 1: Emergency Response for Heart Attack

This use case describes how an emergency response for a heart attack is carried out and then how the information on interventions are recorded and provided to a hospital.

#### Emergency Response for Heart Attack Use Case Description

A fifty-year-old man develops heart attack symptoms. He calls 911 for an emergency transport to a hospital. The emergency transport team is able to retrieve some of the patient’s medical history, current medications
and allergies from the patient and inputs this information in their Electronic Patient Care Record (ePCR). The patient told EMTs that he had already taken his prescribed nitroglycerine thirty minutes before calling 
911 when the chest pain first presented. A 12 lead EKG was established to monitor the patient’s heart rhythm and the rhythm shows abnormalities indicative to a myocardial infarction. The EMT starts an intravenous line 
in the patient’s left arm. During the transport the patient’s chest pain increases and breathing is elevated. After ensuring that the patient is not on any blood thinners, the EMT administers aspirin to the patient. 
The patient felt relief after he was given aspirin. However, after feeling this relief, he falls into cardiac arrest. Compressions are started and maintained until arrival at the hospital. The patient information is 
made available to the hospital system and the hospital has full access to the EKG data, vitals, and interventions that were shared during the transport. The EMS ePCR is completed and then electronically shared with the 
hospital to be available for quality metrics. This sharing can be either directly or through a document sharing infrastructure.

#### Process Flow
usecase1-processflow.plantuml 
**Figure X.4.2.1.2-1: Basic Process Flow in PCS Profile**

**Figure: Use Case 1 Process Flow**
Figure X.4.2.1.2-1: Basic Process Flow in PCS Profile

**Pre-conditions**:

- The person calling 911 is suffering from an emergent issue.

- An EMS response team is sent out for the call.

**Main Flow**:

- EMS provider arrives on scene and inputs the patient information into the ePCR.

- Interventions are performed and documented during transport.

- EMS, either directly or through a document sharing infrastructure, provides the Paramedicine Care Summary – ClinicalSubset containg the pertinant patient information to the hospital.

- The patient care is transferred to the hospital staff.

**Post-conditions:**

- The patient care is continued in the hospital.

- The Paramedicine Care Summary – Complete, is completed and the full report is provided either directly or through a document sharing infrastructure, to the hospital.

## PCS Security Considerations
See [ITI TF-2.x: Appendix Z.8](http://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf) “Mobile Security Considerations”.

## PCS Cross Profile Considerations
The information that is imported by the Paramedicine Care Summary (PCS) Content Consumer implementing the quality option may be leveraged to support content needed for the Quality Outcome Reporting for EMS (QORE) Profile. 
The use of the IHE XD* family of transactions is encouraged to support standards-based interoperability between systems acting as the PCS Content Creator and PCS Content Consumer. However, this profile does not require any groupings with ITI XD* actors to facilitate transport of the content document it defines. 
IHE transport transactions that MAY be utilized by systems playing the roles of PCS Content Creator or Content Consumer to support the standard use case defined in this profile: 
A Document Source in XDS.b, a Portable Media Creator in XDM, or a Document Source in XDR might be grouped with the PCS Content Creator. A Document Consumer in XDS.b, a Portable Media Importer in XDM, or a Document Recipient in XDR might be grouped with the PCS Content Consumer. A registry/repository-based infrastructure is defined by the IHE Cross Enterprise Document Sharing (XDS.b) Profile that includes profile support that can be leveraged to facilitate retrieval of public health related information from a document sharing infrastructure: Multi-Patient Query (MPQ), and Document Metadata Subscription (DSUB). 
A reliable messaging-based infrastructure is defined by the IHE Cross Enterprise Document Reliable Interchange (XDR) Profile. A Document Source in XDR might be grouped with the PCS Content Creator. A Document Recipient in XDR might be grouped with the PCS Content Consumer. 
Detailed descriptions of these transactions can be found in the IHE IT Infrastructure Technical Framework.