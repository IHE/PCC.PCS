This section corresponds to transaction [ITI-Y] of the IHE Technical Framework. Transaction [ITI-Y] is used by the Client and Server Actors. The go [ITI-Y] transaction is used to query and get back results.

### Scope

The Client [ITI-Y] transaction passes a go Request from a Client to a Server.

### Actors Roles

**Table: Actor Roles**

|Actor 										   | Role |
|-------------------+--------------------------|
| [Content Creator](2_actors_and_transactions.html#Content Creator)    | Sends Paramedicine Care Summary to Content Consumer |
| [Content Consumer](2_actors_and_transactions.html#Content Consumer)  | Receives The Paramedicine Care Summary from the Content Creator |

### Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0](http://www.hl7.org/FHIR/R4)
[HL7 CDA Release 2.0] CDAR2(http://www.hl7.org/documentcenter/public/standards/dstu/CDAR2_IG_PROCNOTE_DSTU_R1_2010JUL.zip) 
[HL7 IPS CDA] HL7 CDA® R2 Implementation Guide International Patient Summary STU Release 1 (https://www.hl7.org/implement/standards/product_brief.cfm?product_id=483) 
[SNOMED International] SNOMED CT   (http://www.snomed.org/snomed-ct/get-snomed-ct) 
[ISO/DIS 27269 Health informatics — The international patient summary] ISO/DIS 27269 (https://www.iso.org/standard/79491.html)
[HL7 Version 3 Domain Analysis Model, Emergency Medical Services, Release 1] HL7 EMS DAM (http://www.hl7.org/implement/standards/product_brief.cfm?product_id=421 )
[HL7 version 3 Domain Information Model; Emergency Model Services, release 1] HL7 EMS DIM (http://www.hl7.org/implement/standards/product_brief.cfm?product_id=302 )
(...) NEMSIS 3.5.0 (....)

### Interactions

N/A


#### go Query Message
N/A

##### Trigger Events

Upon patient handoff from the paramedicine care team to the receiving
facility, a Paramedicine Care Summary – Clinical Subset will be shared
with the receiving facility using the Document Sharing \[PCC-1\]
transaction.

When the full Paramedicine Care Summary data is available, a
Paramedicine Care Summary – Complete Report will be shared with the
receiving facility using the Document Sharing \[PCC-1\] transactions.

### CapabilityStatement Resource

Server implementing this transaction shall provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented. 
* Requirements CapabilityStatement for [Client](IHE.FooBar.Client.html)
* Requirements CapabilityStatement for [Client](IHE.FooBar.Server.html)

### Security Considerations

See [PCS Security Considerations](3_security_considerations.html)

#### Security Audit Considerations

''TODO: The security audit criteria ''

##### Client Audit 

''TODO: the specifics''

##### Server Audit 

''TODO: the specifics''
