This section corresponds to transaction [PCC-1] of the IHE Technical Framework. Transaction [PCC-1] is used by the Content Creator and Content Consumer Actors. describes common functional requirements for content exchange. 
Options for a Content Consumer are described below. Content profiles may reference these options as requirements for its Content Consumer; profiles may define other options as necessary.

### Scope

Documents are created by a Content Creator and consumed by a Content Consumer. The sharing or transmission of content from one actor to the other is addressed by grouping with appropriate actors from IHE profiles such as:
- Cross Enterprise Document Sharing (XDS)
- Cross Enterprise Document Sharing on Media (XDM)
- Cross Enterprise Document Sharing Reliable Ex (XDR)
- Cross Community Access (XCA)
- Multi-Patient Query (MPQ)
- Mobile Access to Health Documents (MHD)
- Request Form for Data Capture (RFD)
- others as appropriate

The population of metadata in the transport from the created content to the IHE transaction that shares it must be described in a Content Binding. Bindings for Document Sharing transactions such as XDS, XCA, XDR and XDM have been described in the section on Content Bindings in IHE PCC TF-2: 4. Transactions found in other IHE profiles (e.g., RFD, MHD) may also be used to exchange content.

### Actors Roles

**Table: Actor Roles**

|Actor 										   | Role |
|-------------------+--------------------------|------|
| [Content Creator]   | Create document(s) to be exchanged between two actors |
| [Content Consumer]  | Consume document(s) that has been exchanged between two actors |
{:grid}

**Content Creator Expected Actions**
1. The Content Creator SHALL create the document according to the content profile that is specified by the actor in the profile where it is used.
2. The content SHALL be shared using appropriate actors from the IHE profile it is grouped with as described above.

**Content Consumer Expected Actions**
1. The Content Consumer SHALL be able access documents using appropriate actors from the IHE profile it is grouped with as described above.
2. The Content Consumer SHALL support processing of the document as needed by the profile.
3. The Content Consumer options below MAY be referenced by profiles where this transaction is used to provide specific processing requirements.

### View Option

A Content Consumer that supports the View Option:
	1. SHALL render the document for viewing.
	
	When a CDA Document is used, this rendering shall meet the requirements defined for CDA Release 2 content presentation semantics (See Section 1.2.4 of the CDA Specification: Human readability and rendering CDA Documents). CDA Header information providing context critical information shall also be rendered in a human readable manner. This includes at a minimum the ability to render the document with the stylesheet specifications provided by the document source, if the document source provides a stylesheet. Content Consumers may optionally view the document with their own stylesheet, but must provide a mechanism to view using the source stylesheet.

### Document Import Option
The Content Consumer that supports the Document Import Option shall also support the View Option. In addition, the Content Consumer that supports the Document Import Option shall be able to support the storage of the entire document (as provided by the sharing framework, along with sufficient metadata to ensure its later viewing). This Option requires the proper tracking of the document origin. Once a document has been imported, the Content Consumer shall offer a means to view the document without the need to retrieve it again. When viewed after it was imported, a Content Consumer may choose to access the sharing framework to find out if the related Document viewed has been deprecated, replaced or addended.
	
	Note: For example, when using XDS, a Content Consumer may choose to query the Document Registry about a document previously imported in order to find out if this previously imported document may have been replaced or has received an addendum. This capability is offered to Content Consumers by this Integration Profile, but not required, as the events that may justify such a query are extremely implementation specific.

### Section Import Option
The Content Consumer that supports the Section Import Option shall also support the View Option. In addition, the Content Consumer that supports the Section Import Option shall be able to support the import of one or more sections of the document (along with sufficient metadata to link the data to its source). Once sections have been selected, a Content Consumer shall offer a means to copy the imported section(s) into local data structures as free text. This is to support the display of section level information for comparison or editing in workflows such as medication reconciliation while discrete data import is not possible. When viewed again after it is imported, a Content Consumer may choose to find out if the related information has been updated.
	
	Note: For example, when using XDS, a Content Consumer may choose to query the Document Registry about a document whose sections were previously imported in order to find out if this previously imported document may have been replaced or has received an addendum. This capability is offered to Content Consumers by this Integration Profile, but not required, as the events that may justify such a query are extremely implementation specific. This Option does not require, but does not exclude the Content Consumer from offering a means to select and import specific subsets of the narrative text of a section.

### Discrete Data Import Option
The Content Consumer that supports the Discrete Data Import Option shall be able to support the storage of the structured content of one or more sections of the document. This Option requires that the user be offered the possibility to select among the specific sections that include structured content a set of clinically relevant record entries (e.g., a problem or an allergy in a list) for import as part of the local patient record.
	
	Note: The Discrete Data Import Option does not require the support of the View, Import Document or Import Sections Options so that it could be used alone to support implementations of Content Consumers such as Public Health Data or Clinical Research systems that might aggregate and anonymize specific population healthcare information data as Document Consumer Actors, but one where no care provider actually views the medical summaries.

When discrete data is accessed after it was imported, a Content Consumer may choose to check if the document related to the discrete data viewed has been deprecated, replaced or addended.

A Content Consumer Actor grouped with the XDS Document Source Actor may query the Document Registry about a document from which discrete data was previously imported in order to find out if this previously imported document may have been replaced or has received an addendum.
