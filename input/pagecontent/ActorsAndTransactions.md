
This section defines the actors and transactions in this implementation guide.

Figure below shows the actors directly involved in the PCS Profile and the relevant transactions between them.

![Figure: PCS Actor Diagram](ActorsAndTransactions.svg "Figure: PCS Actor Diagram")

<div style="clear: left"/>

**Figure: PCS Actor Diagram**

Table X.1-1: PCS Profile - Actors and Transactions

| Actors          | Transactions           			| Initiator or Responder | Optionality     | Reference     |
|-----------------|---------------------------------|------------------------|-----------------|---------------|
| Content Creator | Document Sharing PCC-1 			| Initiator              | R               | PCC TF-2: 3.1 |
| Content Consumer| Document Sharing PCC-1 			| Responder              | R               | PCC TF-2: 3.1 |
| Content Creator | Provide Document Bundle ITI-65	| Initiator              | R               | PCC TF-2: 3.1 |
| Content Consumer| Provide Document Bundle ITI-65	| Responder              | R               | PCC TF-2: 3.1 |

Note 1: The Document Sharing PCC-1 transaction supports the MHD ITI-65 transaction that can be used for the FHIR version of this profile
 


### Actors
The Content Creator shall be responsible for the creation of content and sharing of two documents that summarize the PCS transport: 
- Paramedicine Care Summary – Clinical Subset (PCS-CS) containing the data elements defined in PCC TF-3: 6.3.1.D1 or, where the FHIR Option is used, containing the FHIR Composition bundle defined in PCC TF-3:6.6.x.2.1

- Paramedicine Care Summary – Complete Report (PCS-CR) containing the data elements defined in PCC TF-3: 6.3.1.D2, or, where the FHIR Option is used, containing the FHIR Composition bundle defined in PCC TF-3:6.6.x.2.1

##### Document Consumer

A Content Consumer is responsible for viewing, importing, or other processing options for Paramedicine Care Summary – Clinical Subset (1.3.6.1.4.1.19376.1.5.3.1.1.29.1) and Paramedicine Care Summary – Complete Report (1.3.6.1.4.1.19376.1.5.3.1.1.30.1) documents content created by a PCS Content Creator. This is specified in \[PCC-1\] document sharing transaction in PCC TF-2: 3.1

### Actor Options

Options that may be selected for each actor in this implementation guide, are listed in Table 3.2-1 below. Dependencies  between options when applicable are specified in notes.

| Actor            | Option Name                                         	   |
|------------------|-----------------------------------------------------------|
| Content Creator  | Create Paramedicine Summary of Care – Clinical Subset Note1 <sup>Note1</sup>                         	   |
|				   | Create Paramedicine Summary of Care – Complete Report <sup>Note1</sup>                        	   |
| Content Consumer | View Option <sup>Note2</sup>                        	   |
|                  | Document Import Option <sup>Note2</sup>             	   |
|                  | Section Import Option <sup>Note2</sup>              	   |
|                  | Discrete Data Import Option <sup>Note2</sup>        	   |
|                  | Clinical Subset Data Import Option <sup>Note3</sup> 	   |
|                  | Quality Data Import Option <sup>Note3</sup>         	   |
|                  | Trauma Data Import Option <sup>Note3</sup>          	   |

Note 1: The Content Creator must be able to support at least one of these options.

Note 2: The Content Consumer must implement at least one of these options.

Note 3: If the Content Consumer implements any of these options, it must also support the Discrete Data Import Option.

Note 4: If the Content Creator supports the Patient’s Occupation and Patient’s Occupational Industry data elements they shall support the Occupational Data for Health Option. 

#### Create Paramedicine Summary of Care – Clinical Subset Option

This option defines the processing requirements placed on the Content Creators for producing a CDA structured document version of the Create Paramedicine Summary of Care Clinical Subset documents. 

#### Create Paramedicine Summary of Care – Complete Report Option

This option defines the processing requirements placed on the Content Creators for producing a CDA structured document version of the Paramedicine Summary of Care Complete Report documents. 

#### Clinical Subset Data Import Option

This option defines the processing requirements placed on the Content Consumers for providing access and importing the clinical subset data from selected sections of the Paramedicine Summary of Care document. The discrete data import data details are in Volume 3, Section 6.6.x.4.

#### Trauma Data Import Option

This option defines the processing requirements placed on the content consumers for providing access and importing trauma data from selected sections of the Paramedicine Summary of Care document. The discrete data import data details are in Volume 3, Section 6.6.x.6.

#### Quality Data Import Option

This option defines the processing requirements placed on the Content Consumers for providing access and importing quality data from selected sections of the Paramedicine Summary. The discrete data import data details are in Volume 3, Section 6.6.x.5.
This applies to the import of airway management events and Cardiac events. 

#### View Option 
A Content Consumer that supports the View Option:  1.SHALL render the document for viewing. When a CDA Document is used, this rendering shall meet the requirements defined for CDA Release 2 content presentation semantics (See Section 1.2.4 of the CDA Specification: Human readability and rendering CDA Documents). CDA Header information providing context critical 
information shall also be rendered in a human readable manner. This includes at a minimum the ability to render the document with the stylesheet specifications provided by the document source, if the document source provides a stylesheet. Content Consumers may optionally view the document with their own stylesheet, but must provide a mechanism to view using the 
source stylesheet. 

#### Document Import Option
The Content Consumer that supports the Document Import Option shall also support the View Option. In addition, the Content Consumer that supports the Document Import Option shall be able to support the storage of the entire document (as provided by the sharing framework, along with sufficient metadata to ensure its later viewing). This Option requires the proper 
tracking of the document origin. Once a document has been imported, the Content Consumer shall offer a means to view the document without the need to retrieve it again. When viewed after it was imported, a Content Consumer may choose to access the sharing framework to find out if the related Document viewed has been deprecated, replaced or addended. 
Note:For example, when using XDS, a Content Consumer may choose to query the Document Registry about a document previously imported in order to find out if this previously imported document may have been replaced or has received an addendum. This capability is offered to Content Consumers by this Integration Profile, but not required, as the events that may 
justify such a query are extremely implementation specific. 

#### Section Import Option 

The Content Consumer that supports the Section Import Option shall also support the View Option. In addition, the Content Consumer that supports the Section Import Option shall be able to support the import of one or more sections of the document (along with sufficient metadata to link the data to its source). Once sections have been selected, a Content Consumer 
shall offer a means to copy the imported section(s) into local data structures as free text. This is to support the display of section level information for comparison or editing in workflows such as medication reconciliation while discrete data import is not possible. When viewed again after it is imported, a Content Consumer may choose to find out if the related 
information has been updated. 
Note:For example, when using XDS, a Content Consumer may choose to query the Document Registry about a document whose sections were previously imported in order to find out if this previously imported document may have been replaced or has received an addendum. This capability is offered to Content Consumers by this Integration Profile, but not required, as the events 
that may justify such a query are extremely implementation specific. 
This Option does not require, but does not exclude the Content Consumer from offering a means to select and import specific subsets of the narrative text of a section.  

#### Discrete Data Import Option
The Content Consumer that supports the Discrete Data Import Option shall be able to support the storage of the structured content of one or more sections of the document. This Option requires that the user be offered the possibility to select among the specific sections that include structured content a set of clinically relevant record entries (e.g., a problem or an 
allergy in a list) for import as part of the local patient record.   
Note:The Discrete Data Import Option does not require the support of the View, Import Document or Import Sections Options so that it could be used alone to support implementations of Content Consumers such as Public Health Data or Clinical Research systems that might aggregate and anonymize specific population healthcare information data as Document Consumer Actors, 
but one where no care provider actually views the medical summaries. 
When discrete data is accessed after it was imported, a Content Consumer may c hoose to check if the document related to the discrete data viewed has been deprecated, replaced or addended. 
A Content Consumer Actor grouped with the XDS Document Source Actor may query the Document Registry about a document from which discrete data was previously imported in order to find out if this previously imported document may have been replaced or has received an addendum.

### Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### Document Sharing [PCC-1] transaction

This transaction is used to sharing  or transmission  of content  from  one  actor to the other is addressed by the appropriate use of IHE profiles described below, and is out of scope of this profile.  
A Document Source or a Portable Media Creator may  embody the Content Creator Actor. A Document Consumer, a Document Recipient or a Portable Media Importer may embody the Content Consumer Actor. The sharing or transmission of content or updates from one actor to the other is addressed by the 
use of appropriate IHE profiles described in the section on Content Bindings with XDS, XDM, MHD, and XDR.  

For more details see the detailed [transaction description](PCC-1.html)

#### Provide Document Bundle [ITI-65] transaction

The Provide Document Bundle [ITI-65] transaction passes a Provide Document Bundle Request from a Document Source to a Document Recipient.

For more details see the detailed [transaction description](ITI-65.html)