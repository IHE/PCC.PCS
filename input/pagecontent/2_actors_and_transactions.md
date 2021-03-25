
This section defines the actors and transactions in this implementation guide.

Figure below shows the actors directly
involved in the PCS 
Profile and the relevant transactions between them.

![Figure: PCS Actor Diagram](ActorsAndTransactions.svg "Figure: PCS Actor Diagram")

<div style="clear: left"/>

**Figure: PCS Actor Diagram**

Table X.1-1: &lt;Profile Acronym&gt; Profile - Actors and Transactions

|                 |                        |                        |                 |               |
|-----------------|------------------------|------------------------|-----------------|---------------|
| Actors  		  | Transactions           | Initiator or Responder | Optionality     | Reference     |
| Content Creator | Document Sharing PCC-1 | Initiator              | R               | PCC TF-2: 3.1 |
| Content Consumer| Document Sharing PCC-1 | Responder              | R               | PCC TF-2: 3.1 |
| Content Creator | Document Sharing PCC-1 | Initiator              | R               | PCC TF-2: 3.1 |
| Content Consumer| MHD ITI-65             | Responder              | R               | PCC TF-2: 3.1 |

Note 1: The Document Sharing PCC-1 transaction supports the MHD ITI-65 transaction that can be used for the FHIR version of this profile 


### Actors
The Content Creator shall be responsible for the creation of content and sharing of two documents that summarize the emergency transport encounter: 
	Paramedicine Care Summary – Clinical Subset (PCS-CS) containing the data elements defined in PCC TF-3: 6.3.1.D1 or, where the FHIR Option is used, containing the FHIR Composition bundle defined in PCC TF-3:6.6.x.2.1

	Paramedicine Care Summary – Complete Report (PCS-CR) containing the data elements defined in PCC TF-3: 6.3.1.D2, or, where the FHIR Option is used, containing the FHIR Composition bundle defined in PCC TF-3:6.6.x.2.1

##### Document Consumer

A Content Consumer is responsible for viewing, importing, or other processing options for Paramedicine Care Summary – Clinical Subset (1.3.6.1.4.1.19376.1.5.3.1.1.29.1) and Paramedicine Care Summary – Complete Report (1.3.6.1.4.1.19376.1.5.3.1.1.30.1) documents content created by a PCS Content Creator. This is specified in \[PCC-1\] document sharing transaction in PCC TF-2: 3.1

### Actor Options

Options that may be selected for each actor in this implementation guide, are listed in Table 3.2-1 below. Dependencies 
between options when applicable are specified in notes.

|                  |                                                     |
|------------------|-----------------------------------------------------|
| Actor            | Option Name                                         |
| Content Creator  | CDA Option <sup>Note1</sup>                         |
|				   | FHIR Option <sup>Note1</sup>                        |
| Content Consumer | View Option <sup>Note2</sup>                        |
|                  | Document Import Option <sup>Note2</sup>             |
|                  | Section Import Option <sup>Note2</sup>              |
|                  | Discrete Data Import Option <sup>Note2</sup>        |
|                  | Clinical Subset Data Import Option <sup>Note3</sup> |
|                  | Quality Data Import Option <sup>Note3</sup>         |
|                  | Trauma Data Import Option <sup>Note3</sup>          |

Note 1: The Content Creator must be able to support at least one of
these options.

Note 2: The Content Consumer must implement at least one of these
options.

Note 3: If the Content Consumer implements any of these options, it must
also support the Discrete Data Import Option.

#### CDA Option

This option defines the processing requirements placed on the Content
Creators for producing a CDA structured document version of the
Paramedicine Care Summary documents. The CDA details are in Volume 3,
Section 6.3.1

#### FHIR Option

This option defines the processing requirements placed on the Content
Creators for producing a FHIR document bundle version of the
Paramedicine Care Summary documents. The FHIR bundle details are in
Volume 3, Section 6.6.x.2.

#### Quality Data Import Option

This option defines the processing requirements placed on the Content
Consumers for providing access and importing quality data from selected
sections of the Paramedicine Care Summary. The discrete data import data
details are in Volume 3, Section 6.6.x.5.

#### Trauma Data Import Option

This option defines the processing requirements placed on the content
consumers for providing access and importing trauma data from selected
sections of the Paramedicine Care Summary. The discrete data import data
details are in Volume 3, Section 6.6.x.6.
#### Clinical Subset Data Import Option

This option defines the processing requirements placed on the Content
Consumers for providing access and importing the clinical subset data
from selected sections of the Paramedicine Care Summary. The discrete
data import data details are in Volume 3, Section 6.6.x.4.

### Transaction Descriptions
The transactions in this profile are summarized in the sections below.

#### PCC-1 transaction

This transaction is used to sharing  or transmission  of content  from  one 
actor to the other is addressed by the appropriate  use of  IHE  profiles   described  
below,  and  is  out  of  scope of  this  profile.  A Document  Source or a Portable Media 
Creator may  embody the Content  Creator Actor. A Document  Consumer,  a Document   Recipient   
or  a  Portable  Media  Importer  may  embody  the  Content  Consumer  Actor.  The  sharing   
or  transmiss io n   of  content  or updates from  one actor to the other is addressed by the 
use of appropriate  IHE profiles  described in  the section  on Content  Bindings  with  XDS, 
XDM, MHD, and  XDR.  

For more details see the detailed [transaction description](PCC-1)

#### ITI-65 transaction

This transaction is used to **do' things

For more details see the detailed [transaction description](domain-Y.html)