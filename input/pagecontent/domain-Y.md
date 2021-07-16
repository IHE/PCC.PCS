This section corresponds to the Document Sharing transaction [PCC-1] of the IHE Technical Framework. Transaction [PCC-1] is used by the Content Creator and Content Consumer Actors. The [PCC-1] transaction is used to share or transmit content from one actor to the other is addressed by grouping with appropriate actors from IHE 
profiles such as: Cross Enterprise Document Sharing (XDS), Cross Enterprise Document Sharing on Media (XDM), Cross Enterprise Document Sharing Reliable Ex (XDR), Cross Community Access (XCA), Multi-Patient Query (MPQ), Mobile Access to Health Documents (MHD), Request Form for Data Capture (RFD), and others 
as appropriate. The population of metadata in the transport from the created content to the IHE transaction that shares it must be described in a Content Binding. Bindings for Document Sharing transactions such as XDS, XCA, XDR and XDM have been described in the section on Content Bindings in IHE PCC TF-2: 4. 
Transactions found in other IHE profiles (e.g., RFD, MHD) may also be used to exchange content.

### Scope

The Content Creator [PCC-1] transaction Provides a Document Bundle from a Content Creator to a Content Consumer.

### Actors Roles

**Table: Actor Roles**

|Actor 										   						   | Role 															 |
|----------------------------------------------------------------------|-----------------------------------------------------------------|
| [Content Creator](2_actors_and_transactions.html#Content Creator)    | Sends Paramedicine Care Summary to Content Consumer 			 |
| [Content Consumer](2_actors_and_transactions.html#Content Consumer)  | Receives The Paramedicine Care Summary from the Content Creator |

### Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0](http://www.hl7.org/FHIR/R4)
[HL7 CDA Release 2.0] CDAR2(http://www.hl7.org/documentcenter/public/standards/dstu/CDAR2_IG_PROCNOTE_DSTU_R1_2010JUL.zip) 
[HL7 IPS CDA] HL7 CDA® R2 Implementation Guide International Patient Summary STU Release 1 (https://www.hl7.org/implement/standards/product_brief.cfm?product_id=483) 
[HL7 IPS FHIR] HL7 FHIR International Patient Summary Implementation Guide STU 1 FHIR-R4.0.1
[SNOMED International] SNOMED CT   (http://www.snomed.org/snomed-ct/get-snomed-ct) 
[ISO/DIS 27269 Health informatics — The international patient summary] ISO/DIS 27269 (https://www.iso.org/standard/79491.html)
[HL7 Version 3 Domain Analysis Model, Emergency Medical Services, Release 1] HL7 EMS DAM (http://www.hl7.org/implement/standards/product_brief.cfm?product_id=421 )
[HL7 version 3 Domain Information Model; Emergency Model Services, release 1] HL7 EMS DIM (http://www.hl7.org/implement/standards/product_brief.cfm?product_id=302 )
[National EMS Information Systems; DataDictionary, Version 3.5.0] NEMSIS 3.5.0 (https://nemsis.org/media/nemsis_v3/release-3.5.0/DataDictionary/PDFHTML/EMSDEMSTATE/index.html)

### Expected Actions

Content Creator 
1)The Content Creator SHALL create the document according to the content profile that is specified by the actor in the profile where it is used.
2)The content SHALL be shared using appropriate actors from the IHE profile it is grouped with.

Content Consumer
1)The Content Consumer SHALL be able access documents using appropriate actors from the IHE profile it is grouped with.
2)The Content Consumer SHALL support processing of the document as needed by the profile. 
3)The Content Consumer options below MAY be referenced by profiles where this transaction is used to provide specific processing requirements.

##### Trigger Events

Upon patient handoff or prior to arrival to the receiving facility, a Paramedicine Care Summary – Clinical Subset will be shared with the receiving facility using the Document Sharing \[PCC-1\] OR \[ITI-65\]transaction.

When the full paramedicine report is completed, a Paramedicine Care Summary – Complete Report will be shared with the receiving facility using the Document Sharing \[PCC-1\] OR \[ITI-65\]transaction.

### CapabilityStatement Resource

N/A

### Security Considerations

See [PCS Security Considerations](3_security_considerations.html)

#### Security Audit Considerations

''TODO: The security audit criteria ''

##### Client Audit 

''TODO: the specifics''

##### Server Audit 

''TODO: the specifics''
