**Integrating the Healthcare Enterprise**

<img src="media\image1.jpeg" style="width:1.79722in;height:0.91875in" alt="IHE_LOGO_for_tf-docs" />

**IHE PCC**

**Technical Framework Supplement**

**Paramedicine Care Summary**

**(PCS)**

HL7<sup>®</sup> FHIR<sup>®</sup> STU 4

Using Resources at FMM Level 0-N

**Revision 2.0 – Draft for Public Comment**

**For review and comment only.**

**DO NOT implement this public comment version.**

Date: January 12, 2021

Author: PCC Technical Committee

Email: pcc@ihe.net

**Please verify you have the most recent version of this document.** See
[here](http://ihe.net/Technical_Frameworks/) for Trial Implementation
and Final Text versions and [here](http://ihe.net/Public_Comment/) for
Public Comment versions.

**Foreword**

This is a supplement to the IHE Patient Care Coordination Technical
Framework. Each supplement undergoes a process of public comment and
trial implementation before being incorporated into the volumes of the
Technical Frameworks.

This supplement is published on January 12, 2021 for Public Comment.
Comments are invited and can be submitted at
[http://www.ihe.net/PCC\_Public\_Comments](http://www.ihe.net/PCC_Public_Comments/).
In order to be considered in development of the Trial Implementation
version of the supplement, comments must be received by February 11,
2021.

This supplement describes changes to the existing technical framework
documents.

“Boxed” instructions like the sample below indicate to the Volume Editor
how to integrate the relevant section(s) into the relevant Technical
Framework volume.

Amend Section X.X by the following:

Where the amendment adds text, make the added text **<u>bold
underline</u>**. Where the amendment removes text, make the removed text
**~~bold strikethrough~~**. When entire new sections are added,
introduce with editor’s instructions to “add new text” or similar, which
for readability are not bolded or underlined.

General information about IHE can be found at
[www.ihe.net](http://www.ihe.net/).

Information about the IHE Patient Care Coordination domain can be found
at [ihe.net/IHE\_Domains](http://ihe.net/IHE_Domains/).

Information about the organization of IHE Technical Frameworks and
Supplements and the process used to create them can be found at
[http://ihe.net/IHE\_Process](http://ihe.net/IHE_Process/) and
[http://ihe.net/Profiles](http://ihe.net/Profiles/).

The current version of the IHE Patient Care Coordination Technical
Framework can be found at
[http://ihe.net/Technical\_Frameworks](http://ihe.net/Technical_Frameworks/).

CONTENTS

[Introduction to this Supplement 7](#introduction-to-this-supplement)

[Open Issues and Questions 8](#open-issues-and-questions)

[Closed Issues 12](#closed-issues)

[IHE Technical Frameworks General Introduction
14](#ihe-technical-frameworks-general-introduction)

[9 Copyright Licenses 14](#copyright-licenses)

[9. 1 Copyright of Base Standards 14](#copyright-of-base-standards)

[9.1.1 DICOM (Digital Imaging and Communications in Medicine)
14](#dicom-digital-imaging-and-communications-in-medicine)

[9.1.2 HL7 (Health Level Seven) 14](#hl7-health-level-seven)

[9.1.3 LOINC (Logical Observation Identifiers Names and Codes)
14](#loinc-logical-observation-identifiers-names-and-codes)

[9.1.4 SNOMED CT (Systematized Nomenclature of Medicine -- Clinical
Terms)
15](#snomed-ct-systematized-nomenclature-of-medicine----clinical-terms)

[10 Trademark 15](#trademark)

[IHE Technical Frameworks General Introduction Appendices
16](#ihe-technical-frameworks-general-introduction-appendices)

[Appendix A – Actor Summary Definitions 16](#_Toc61338959)

[Appendix B – Transaction Summary Definitions
16](#appendix-b-transaction-summary-definitions)

[Appendix D – Glossary 17](#appendix-d-glossary)

[**Volume 1 – Profiles 18**](#_Toc345074647)

[X Paramedicine Care Summary (PCS) Profile
18](#x-paramedicine-care-summary-pcs-profile)

[X.1 PCS Actors, Transactions, and Content Modules
18](#x.1-pcs-actors-transactions-and-content-modules)

[X.1.1 Actor Descriptions and Actor Profile Requirements
19](#x.1.1-actor-descriptions-and-actor-profile-requirements)

[X.1.1.1 Content Creator 19](#x.1.1.1-content-creator)

[X.1.1.1.1 Trigger Events 20](#x.1.1.1.1-trigger-events)

[X.1.1.2 Content Consumer 20](#x.1.1.2-content-consumer)

[X.2 PCS Actor Options 20](#x.2-pcs-actor-options)

[X.2.1 CDA Option 21](#x.2.1-cda-option)

[X.2.2 FHIR Option 21](#x.2.2-fhir-option)

[X.2.3 Quality Data Import Option 21](#x.2.3-quality-data-import-option)

[X.2.4 Trauma Data Import Option 21](#x.2.4-trauma-data-import-option)

[X.2.5 Clinical Subset Data Import Option
21](#x.2.5-clinical-subset-data-import-option)

[X.3 PCS Required Actor Groupings 21](#x.3-pcs-required-actor-groupings)

[X.4 PCS Overview 21](#x.4-pcs-overview)

[X.4.1 Concepts 21](#x.4.1-concepts)

[X.4.2 Use Cases 22](#x.4.2-use-cases)

[X.4.2.1 Use Case \#1: Emergency Response for Heart Attack
22](#x.4.2.1-use-case-1-emergency-response-for-heart-attack)

[X.4.2.1.1 Emergency Response for Heart Attack Use Case Description
22](#x.4.2.1.1-emergency-response-for-heart-attack-use-case-description)

[X.4.2.1.2 Emergency Response for Heart Attack Patient Process Flow
22](#x.4.2.1.2-emergency-response-for-heart-attack-patient-process-flow)

[X.5 PCS Security Considerations 23](#x.5-pcs-security-considerations)

[X.6 PCS Cross Profile Considerations
23](#x.6-pcs-cross-profile-considerations)

[Volume 1 Appendices 24](#_Toc345074666)

[**Volume 2 – Transactions 25**](#_Toc61338985)

[Volume 2 Appendices 26](#_Toc345074688)

[Volume 2 Namespace Additions 26](#volume-2-namespace-additions)

[**Volume 3 – Content Modules 27**](#_Toc345074694)

[5 IHE Namespaces, Concept Domains and Vocabularies
27](#ihe-namespaces-concept-domains-and-vocabularies)

[5.1 IHE Namespaces 27](#ihe-namespaces)

[5.2 IHE Concept Domains 27](#ihe-concept-domains)

[5.3 IHE Format Codes and Vocabularies
27](#ihe-format-codes-and-vocabularies)

[5.3.1 IHE Format Codes 27](#ihe-format-codes)

[5.3.2 IHEActCode Vocabulary 27](#iheactcode-vocabulary)

[5.3.3 IHERoleCode Vocabulary 27](#iherolecode-vocabulary)

[6 Content Modules 28](#content-modules)

[6.3.1 CDA Document Content Modules 28](#cda-document-content-modules)

[6.3.1.D1 Paramedicine Care Summary – Clinical Subset (PCS-CS) Document
Content Module
28](#d1-paramedicine-care-summary-clinical-subset-pcs-cs-document-content-module)

[6.3.1.D1.1 Format Code 28](#d1.1-format-code)

[6.3.1.D1.2 LOINC Code 28](#d1.2-loinc-code)

[6.3.1.D1.3 Referenced Standards 28](#d1.3-referenced-standards)

[6.3.1.D1.4 Data Element Requirement Mappings to CDA
28](#d1.4-data-element-requirement-mappings-to-cda)

[6.3.1.D1.5 Paramedicine Care Summary – Clinical Subset (PCS - CS)
Document Content Module Specification
37](#d1.5-paramedicine-care-summary-clinical-subset-pcs---cs-document-content-module-specification)

[6.3.1.D1.5.1 Advance Directives Constraints
39](#d1.5.1-advance-directives-constraints)

[6.3.1.D1.5.2 Allergies and Intolerances Constraint
39](#d1.5.2-allergies-and-intolerances-constraint)

[6.3.1.D1.5.3 Vital Signs Section – Vital Signs Observation Constraints
40](#d1.5.3-vital-signs-section-vital-signs-observation-constraints)

[6.3.1.D1.5.4 Medication Summary Constraints
41](#d1.5.4-medication-summary-constraints)

[6.3.1.D1.5.5 Medications Administered –Constraints
42](#d1.5.5-medications-administered-constraints)

[6.3.1.D1.5.7 Vital signs - Physical Examination Constraints
42](#d1.5.7-vital-signs---physical-examination-constraints)

[6.3.1.D1.5.9 History of Present Illness Constraint
44](#d1.5.9-history-of-present-illness-constraint)

[6.3.1.D1.5.10 Problems 44](#d1.5.10-problems)

[6.3.1.D1.5.11 Allergies and Other Adverse Reaction –Constraints
44](#d1.5.11-allergies-and-other-adverse-reaction-constraints)

[6.3.1.D2 Paramedicine Care Summary – Complete Report (PCS-CR) Document
Content Module
44](#d2-paramedicine-care-summary-complete-report-pcs-cr-document-content-module)

[6.3.1.D2.1 Format Code 44](#d2.1-format-code)

[6.3.1.D2.2 LOINC Code 44](#d2.2-loinc-code)

[6.3.1.D2.3 Referenced Standards 44](#d2.3-referenced-standards)

[6.3.1.D2.4 Data Element Requirement Mappings to CDA
45](#d2.4-data-element-requirement-mappings-to-cda)

[6.3.1.D2.5 Paramedicine Care Summary – Complete Report (PCS-CR)
Document Content Module Specification
53](#d2.5-paramedicine-care-summary-complete-report-pcs-cr-document-content-module-specification)

[6.3.1.D2.5.1 Advance Directives Observation Constraints
56](#d2.5.1-advance-directives-observation-constraints)

[6.3.1.D2.5.2 Allergy and Intolerance Concern Constraint
56](#d2.5.2-allergy-and-intolerance-concern-constraint)

[6.3.1.D2.5.4 Vital Signs Section – Vital Signs Observation Constraints
56](#d2.5.4-vital-signs-section-vital-signs-observation-constraints)

[6.3.1.D2.5.5 Current Medications –Constraints
58](#d2.5.5-current-medications-constraints)

[6.3.1.D2.5.6 Medications Administered –Constraints
58](#d2.5.6-medications-administered-constraints)

[6.3.1.D2.5.8 Vital Signs - Physical Examination Entries Constraints
59](#d2.5.8-vital-signs---physical-examination-entries-constraints)

[6.3.1.D2.5.10 History of Present Illness Constraint
60](#d2.5.10-history-of-present-illness-constraint)

[6.3.1.D2.5.11 Problems Constraint 60](#d2.5.11-problems-constraint)

[6.3.1.D2.5.12 Allergies and Other Adverse Reaction –Constraints
60](#d2.5.12-allergies-and-other-adverse-reaction-constraints)

[6.3.1.D2.5.13 EMS Injury Incident Description Section
61](#d2.5.13-ems-injury-incident-description-section)

[6.3.1.D2.6 PCS Conformance and Example
61](#d2.6-pcs-conformance-and-example)

[6.3.2 CDA Header Content Modules 61](#cda-header-content-modules)

[6.3.2.H CDA Header Content Module 61](#h-cda-header-content-module)

[6.3.2.H.1 Ethnicity Vocabulary Constraints
61](#h.1-ethnicity-vocabulary-constraints)

[6.3.2.H.3 Race Vocabulary Constraint
61](#h.3-race-vocabulary-constraint)

[6.3.2.H.7 documentationOf Vocabulary Constraint
61](#h.7-documentationof-vocabulary-constraint)

[6.3.3 CDA Section Content Modules 62](#_Toc61339035)

[6.3.3.4.30 Coded Detailed Physical Examination Section
1.3.6.1.4.1.19376.1.5.3.1.1.9.15.1
62](#coded-detailed-physical-examination-section-1.3.6.1.4.1.19376.1.5.3.1.1.9.15.1)

[6.3.3.10.S1 Mental Status Organizer- Section Content Module
63](#s1-mental-status-organizer--section-content-module)

[6.3.3.10.S2 Review of Systems - EMS - Section Content Module
64](#s2-review-of-systems---ems---section-content-module)

[6.3.3.10.S2.1 Pregnancy Status Vocabulary Constraint
65](#s2.1-pregnancy-status-vocabulary-constraint)

[6.3.3.10.S3 EMS Procedures and Interventions Section Content Module
66](#s3-ems-procedures-and-interventions-section-content-module)

[6.3.3.10.S3.1 &lt;effectiveTime&gt;&lt;low value=''/&gt;&lt;high
value=''/&gt;&lt;/effectiveTime&gt;
66](#s3.1-effectivetimelow-valuehigh-valueeffectivetime)

[6.3.3.10.S3.2 &lt;approachSiteCode code='' displayName='' codeSystem=''
codeSystemName=''/&gt;
67](#s3.2-approachsitecode-code-displayname-codesystem-codesystemname)

[6.3.3.10.S3.3 &lt;performer&gt; 67](#s3.3-performer)

[6.3.3.10.S3.4 @negationInd 67](#s3.4-negationind)

[6.3.3.10.S3.5 &lt;entryRelationship typeCode='RSON'&gt;
67](#s3.5-entryrelationship-typecoderson)

[6.3.3.10.S4 EMS Injury Incident Description Clinical Section Content
Module
69](#s4-ems-injury-incident-description-clinical-section-content-module)

[6.3.3.10.S4.1 Trauma Center Criteria 70](#s4.1-trauma-center-criteria)

[6.3.3.10.S4.2 Vehicle Impact Area 70](#s4.2-vehicle-impact-area)

[6.3.3.10.S4.3 Patient Location In Vehicle
70](#s4.3-patient-location-in-vehicle)

[6.3.3.10.S5 EMS Procedures and Interventions Clinical Section Content
Module
71](#s5-ems-procedures-and-interventions-clinical-section-content-module)

[6.3.3.10.S5.1 Procedure Successful Observation
71](#s5.1-procedure-successful-observation)

[6.3.3.10.S5.2 Procedure Patient Response Observation
72](#s5.2-procedure-patient-response-observation)

[6.3.3.10.S5.3 Procedure Patient Response Observation
72](#s5.3-procedure-patient-response-observation)

[6.3.3.10.S6 EMS Scene Clinical Section Content Module
72](#s6-ems-scene-clinical-section-content-module)

[6.3.3.10.S6.1 First Unit Indicator 72](#s6.1-first-unit-indicator)

[6.3.3.10.S2.2 Procedure Patient Response Observation
72](#s2.2-procedure-patient-response-observation)

[6.3.3.10.S7 EMS Situation Clinical Section Content Module
73](#s7-ems-situation-clinical-section-content-module)

[6.3.3.10.S7.1 Initial Patient Acuity 73](#s7.1-initial-patient-acuity)

[6.3.4 CDA Entry Content Modules 73](#cda-entry-content-modules)

[6.3.4.E1 Mental Status Entry Content Module
74](#e1-mental-status-entry-content-module)

[6.3.4.E2 Last Oral Intake Entry Content Module
74](#e2-last-oral-intake-entry-content-module)

[6.3.4.E3 Last Known Well Entry Content Module
75](#e3-last-known-well-entry-content-module)

[6.5 PCC Value Sets and Concept Domains 75](#_Toc335730763)

[6.5.X Paramedicine Care Summary Concept Domains
75](#x-paramedicine-care-summary-concept-domains)

[6.6 HL7 FHIR Content Module 76](#hl7-fhir-content-module)

[6.6.X Transport Content 76](#x-transport-content)

[6.6.X.1 Referenced Standards 76](#x.1-referenced-standards)

[6.6.X.2.1 FHIR Resource Bundle Content
76](#x.2.1-fhir-resource-bundle-content)

[6.6.X.2.2 FHIR Resource Data Specifications
77](#x.2.2-fhir-resource-data-specifications)

[6.6.X.4 Clinical Subset Data Import Option 88](#_Toc61339070)

[6.6.X.5 Quality Data Import Option 97](#_Toc61339071)

[6.6.X.6 Trauma Data Import Option 100](#x.6-trauma-data-import-option)

[Volume 3 Appendices 102](#_Toc61339073)

[Appendix A 103](#appendix-a)

[A.1 Data Elements Table 103](#a.1-data-elements-table)

[**Volume 4 – National Extensions 119**](#_Toc61339076)

[4 National Extensions 119](#national-extensions)

[4.I National Extensions for IHE USA
119](#i-national-extensions-for-ihe-usa)

[4.I.1 Comment Submission 119](#i.1-comment-submission)

[4.I.2 Paramedicine Care Summary PCS
119](#i.2-paramedicine-care-summary-pcs)

[4.I.2.1 PCS US Volume 3 Constraints
119](#i.2.1-pcs-us-volume-3-constraints)

[4.I.2.1.1 PCS US Volume 3 Attribute Constraints
119](#i.2.1.1-pcs-us-volume-3-attribute-constraints)

[4.I.2.1.2 PCS US Volume 3 Section Constraints
119](#i.2.1.2-pcs-us-volume-3-section-constraints)

[4.I.2.2 PCS Value Set Binding for US Realm Concept Domains
120](#i.2.2-pcs-value-set-binding-for-us-realm-concept-domains)

[Volume 4 Appendices 121](#_Toc61339085)

 Introduction to this Supplement
===============================

Whenever possible, IHE profiles are based on established and stable
underlying standards. However, if an IHE domain determines that an
emerging standard has high likelihood of industry adoption, and the
standard offers significant benefits for the use cases it is attempting
to address, the domain may develop IHE profiles based on such a
standard. During Trial Implementation, the IHE domain will update and
republish the IHE profile as the underlying standard evolves.

Product implementations and site deployments may need to be updated in
order for them to remain interoperable and conformant with an updated
IHE profile.

This IPS Profile incorporates content from Release 4 of the emerging
HL7<sup>®</sup> FHIR<sup>®</sup> specification. HL7 describes FHIR
Change Management and Versioning at
<https://www.hl7.org/fhir/versions.html>.

HL7 provides a rating of the maturity of FHIR content based on the FHIR
Maturity Model (FMM): level 0 (draft) through N (Normative). See
<http://hl7.org/fhir/versions.html#maturity>.

The FMM levels for FHIR content used in this profile are listed in the
following table.

<table>
<thead>
<tr class="header">
<th><p>FHIR Content</p>
<p>(Resources, Value Sets, etc.)</p></th>
<th>FMM Level</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Documents</td>
<td><span class="smallcaps">3</span></td>
</tr>
<tr class="even">
<td>Composition</td>
<td><span class="smallcaps">2</span></td>
</tr>
<tr class="odd">
<td>Patient</td>
<td><span class="smallcaps">N</span></td>
</tr>
<tr class="even">
<td>Practitioner</td>
<td><span class="smallcaps">3</span></td>
</tr>
<tr class="odd">
<td>MedicationStatement</td>
<td><span class="smallcaps">3</span></td>
</tr>
<tr class="even">
<td>Medication</td>
<td>3</td>
</tr>
<tr class="odd">
<td>AllergyIntolerance</td>
<td>3</td>
</tr>
<tr class="even">
<td>Condition</td>
<td>3</td>
</tr>
<tr class="odd">
<td>Immunization</td>
<td>3</td>
</tr>
<tr class="even">
<td>Procedure</td>
<td>3</td>
</tr>
<tr class="odd">
<td>Organization</td>
<td>3</td>
</tr>
<tr class="even">
<td>DeviceUseStatement</td>
<td>0</td>
</tr>
<tr class="odd">
<td>Device</td>
<td>2</td>
</tr>
<tr class="even">
<td>Observation</td>
<td>N</td>
</tr>
<tr class="odd">
<td>Specimen</td>
<td>2</td>
</tr>
<tr class="even">
<td>Imaging Study</td>
<td>3</td>
</tr>
<tr class="odd">
<td>DiagnosticReport</td>
<td>3</td>
</tr>
<tr class="even">
<td>CarePlan</td>
<td>2</td>
</tr>
<tr class="odd">
<td>Consent</td>
<td>2</td>
</tr>
<tr class="even">
<td>VitalSigns</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Encounter</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>MedicationAdministration</td>
<td>2</td>
</tr>
<tr class="odd">
<td>ServiceRequest</td>
<td>2</td>
</tr>
</tbody>
</table>

When a patient is transported for a medical emergency to a hospital,
scene information, transfer information, patient assessments, and
interventions are only verbally available to hospitals when the patient
arrives. This results in inefficiencies and potential errors in the
patient care process. This profile will map the flow of the patient
information from the ambulance patient record, commonly known as the
electronic Patient Care Record (ePCR), to the hospital Electronic
Medical Record (EMR).

Open Issues and Questions
-------------------------

1.  What are the implications to this profile of the current
    developments in HL7 related to supporting Document and/or Note
    sourcing, retrieval, creation, and consumption? There are ongoing
    conversations in the Patient Care Workgroup around coming up with a
    proposal for managing documents and notes within FHIR. Some
    viewpoints are focused on simply locating clinical documents and/or
    notes (i.e., metadata) whereas as other viewpoints desire to explore
    what content might actually be included in the documents and notes.

<!-- -->

1.  See HL7 patient care work group discussion:
    > [*http://wiki.hl7.org/index.php?title=ClinicalNote\_FHIR\_Resource\_Proposal*](http://wiki.hl7.org/index.php?title=ClinicalNote_FHIR_Resource_Proposal)
    > See Monday Q2 HL7 WGM discussion related to this topic:
    > [*http://wiki.hl7.org/index.php?title=January\_2018\_WGM\_New\_Orleans;\_Jan\_27\_to\_Feb\_8*](http://wiki.hl7.org/index.php?title=January_2018_WGM_New_Orleans;_Jan_27_to_Feb_8)

<!-- -->

1.  There are a number of issues relating to the FHIR mapping and
    resources needed to support this profile:

<!-- -->

1.  Investigate the FHIR process for defining the resources required to
    > fulfill NEMSIS.

2.  The injury information may need to be more extensive modeling in
    > FHIR.

3.  There is no value set in FHIR relating to the level of care of
    > ambulance units.

4.  Extensions in FHIR need to me made to help include some of the
    > needed attributes.

5.  IHE has filed a ticket against the FHIR specification \#16237 to
    > allow for EMS events to be recorded in a status history without
    > the use of the extension

6.  IHE has filed a ticket against the FHIR specification \#16238 to
    > allow for there to be an outcome element for the end of the
    > encounter.

7.  Document reference for Advanced Directives in the FHIR mapping table
    > can support the use case as it exists today. Currently there are
    > ongoing efforts within HL7 to make available the clauses of an
    > advanced directives available in coded form.

<!-- -->

1.  Should there be a section which explicitly describes the differences
    in EMS PCR concepts as opposed to the IHE Medical Summary Sections.
    For example, the Advanced Directives Section in the Medical Summary
    allows for the inclusion of the Advanced Directive documentation (or
    links to the documentation). The EMS PCR provides coding as to the
    type of Advanced Directives which the EMS knows exists. OR do we
    just create a new Section in 6.3.1.D.5x and discuss the content.

<!-- -->

1.  The EMS Situation Chief Complaint is used to populate the Reason for
    > Referral as well as the Primary Symptoms, Other Associated
    > Symptoms, and Provider’s Primary and Secondary Impressions.

2.  The EMS Situation

3.  The EMS Medical Allergies and Environment/Food Allergies are used to
    > populate the standard Allergies and Adverse Reactions Section.

4.  The EMS Current Medications is used to populate the standard
    > Medications Section.

5.  The EMS Vital Signs are used to populate the standard Vital Signs
    > Section. Note: This includes Body Weight which is documented in
    > the EMS Physical Assessment Section.

6.  The EMS Physical Assessment us used to populate the standard
    > Physical Examination Section.

7.  The EMS Medications Administered is used to populate the standard
    > Medications Administered and Allergies and Adverse Reactions
    > Sections.

8.  The Pregnancy Status, Last Oral Intake and Last Known Well data
    > elements have been populated to a new Review of Systems – EMS
    > Section.

<!-- -->

1.  In consideration of reusable vital sign concepts:

<!-- -->

1.  8884-9 Heart rate rhythm is used for the vital signs instead of
    > 67519-9 Cardiac rhythm NEMSIS

2.  72089-6 Total score \[NIH Stroke Scale\] is used for the vital signs
    > instead of 67520-7 Stroke scale overall interpretation NEMSIS

3.  11454-6 Responsiveness assessment at First encounter is used for the
    > vital signs instead of 67775-7 Level of responsiveness NEMSIS

4.  2710-2 Oxygen Saturation is used for the vital signs instead of
    > 2708-6 Oxygen saturation in Arterial blood

5.  Also included in vital sign metrics is 80341-1 Respiratory effort,
    > which is not in the EMS Run Report, but is part of the data
    > dictionary for this specification

6.  The EMS VITAL SIGNS created a new Vital Signs Organizer to contain
    > all of the additional Vital Signs collected. This has been
    > modelled using the IHE PCC Vital Signs adding the additional vital
    > sign observations

<!-- -->

1.  The following vital signs are not included in the specification:

<!-- -->

1.  Reperfusion check list - This is a checklist and does not appear to
    > be a vital sign. If it is required, it needs to be modelled and
    > additional information needs to be (what are the outputs that need
    > to be captured).

2.  The Respiratory Effort is not currently included in the EMS Patient
    > Care Report. Are there any constraints that should be placed on
    > the Respiratory Effort vocabulary?

3.  Pulse Rhythm is not currently included in the EMS Patient Care
    > Report. No definition exists in either the IHE or HL7 CDA
    > specifications.

<!-- -->

1.  The following HL7 EMS Patient Care Report value sets are referenced,
    but no Value Sets have been defined. This information is needed so
    that the specification can be complete and decisions can be made on
    whether the value set needs to be internationalized.

<!-- -->

1.  MedicationClinical Drug (2.16.840.1.113883.3.88.12.80.17)

2.  Medication omission reason (2.16.840.1.113883.17.3.5.42)

<!-- -->

1.  The following attributes are not modeled in this specification
    because this use case focuses on communicating relevant information
    from EMS into the hospital:

<!-- -->

1.  Medication Response Observation

2.  Medication Prior Administration Observation

3.  Patient age (can be computed from birthdate)

4.  Barrier to care

<!-- -->

1.  In order to use the standard Medications Section from the Medical
    Summary, a number of the EMS Current Medication concepts were
    transformed. Public Comment is requesting that these transformations
    be verified.,

<!-- -->

1.  we have the ability to document Drug Treatment Unknown and No Drug
    > Therapy Prescribed

2.  There are currently no codes to indicate the Patient is on
    > Anticoagulants (without specifying the substance).

3.  What should the SNOMED CT parent be to specify allergen (This should
    > be an existing international value set). Recommendation is to use
    > the HL7 Allergen Type mapped to SNOMED CT.

<!-- -->

1.  In order to use the standard Medications Administered Section from
    the Medical Summary, a number of the EMS Medications Administered
    concepts were transformed (and other were not). Public Comment is
    requesting that these transformations be reviewed.

<!-- -->

1.  Reason for not Administering the Medication was moved forward.

2.  Medication Complications were moved to the standard Allergies and
    > Adverse Reactions Section.

3.  Medication Response Observation was not moved forward.

4.  Medications Prior to Administration was not moved forward.

<!-- -->

1.  A new Review of Systems – EMS section has been created which
    includes information related to Pregnancy Status, Last Oral Intake,
    and Time Last Known Well.

2.  Public Comment input is requested to review the EMS Cardiac Arrest
    Event Section to ensure there aren’t any US Specific concepts.

3.  Public Comment input is requested to review the transformation of
    the EMS Patient Care Report information for use in the Reason for
    Referral Section.

4.  Public Comment input is requested to review whether the EMS
    Situation Section should be moved forward since most of the
    information is transformed to other Sections within the EMS Patient
    Care Medical Summary.

5.  Should there be a special section to “vital signs obtained prior to
    EMS” that should be specially tagged?

6.  Review the FHIR mapping for the Medications sections. There seem to
    have a combination of complex and simple uses for the FHIR
    structuring and we are unsure is it is appropriate to be mixing the
    two.

7.  Review the FHIR mapping for the “protocol age category”.

8.  A complete example of the Paramedicine Care Summary (PCS) Document
    Content Module should be made to be available on the IHE ftp server
    at: <ftp://ftp.ihe.net/TF_Implementation_Material/PCC/PCS/>.

9.  The LOINC code more specific to the CDA documents will be requested.

10. The following data elements do not currently have FHIR resources
    that they can be mapped to. When they are created they will be added
    to the 6.6.X.3.2 FHIR Resource Data Specifications table.

<!-- -->

1.  eSoftware Creator

2.  eSoftware Name

3.  eSoftware Version

4.  Standby Purpose

5.  Primary Role of the Unit

6.  Type of dispatch delay

7.  Type of response delay

8.  Type of scene delay

9.  Type of transport delay

10. Type of turn-around delay

11. EMS vehicle (unit) number

12. EMS unit call sign

13. Vehicle Dispatch GPS Location

14. EMD Performed

15. EMD Card Number

16. Dispatch Center Name or ID

17. Unit Dispatched CAD Record ID

18. Response Urgency

19. First EMS Unit on Scene

20. Date/Time Initial Responder Arrived on Scene

21. Numbers of Patients on Scene

22. Scene GPS Location

23. Incident Facility or Location Name

24. Incident Street Address

25. Incident Apartment, Suite, or Room

26. Time Units of Duration of Complaint

27. Patient's Occupational Industry

28. Patient's Occupation

29. Presence of Emergency Information Form

30. Destination GPS Location

31. Type of Destination

32. Hospital In-Patient Destination

33. Date/Time of Destination Prearrival Alert or Activation

Closed Issues
-------------

1.  (2/12/2018) Committee decided to use both CDA and FHIR. This is the
    same approach used in RIPT. CDA is more prevalent in "production"
    settings and is expected to remain so for the expected future and
    thus needs to be included. FHIR will help to "future-proof" by
    providing an implementation path for vendors that are newer to the
    market and not willing to invest in a full CDA supported
    infrastructure.

2.  The PCS Profile leverages Sections/Entries from the HL7 EMS Patient
    Care Report which have US Realm Constraints, and used, were they
    exists, sections and entries that represent the information from the
    IHE CDA content modules so that discrete import and interpretation
    are able to be more readily used by EMRs that already support IHE
    Medical Summary.

3.  The PCS Profile adds to the IHE Medical Summary constraints those
    identified by the HL7 EMS Patient Care Report that support the EMS
    concepts.

4.  The EMS Advance Directives concept is different from the IHE PCC
    Advance Directive concept, so both are being maintained within the
    EMS Patient Care Medical Summary.

5.  Only Header Data Elements that are constrained are listed in the
    Header Information Table. It is assumed that all the other header
    information is inherited from the Medical Summary.

6.  Committee removed Billing section requirements from volume 3 and
    keep billing constraints in volume 4 and keep the codes the way that
    they are (7/16/2018).

7.  Committee moved to add “Per EMS” to the element name for Hospital
    capability as seen by the EMS reporting. The Mapping will remain the
    same. (7/18/18).

8.  Public Comment input was requested to review the EMS Procedures
    Performed. Currently the information in this Section does match the
    IHE PCC concept of List of Surgeries as a Procedure Entry. Committee
    moves forward using the procedure entry for IHE and using an
    extension to be able to continue with an IHE extension of the
    procedure entry that includes the concepts found in the Hl7 EMS
    Procedures Performed. (7/18/18).

9.  Committee moves forward with the EMS Past Medical History Section
    from the HL7 spec. Even though there is currently there is not
    enough information in this Section (e.g., start/end dates, if the
    condition still exists) to transform it into a standard Past Medical
    History, committee moves forward anyway.

10. Committee has determined that there were no international needs for
    the EMS Disposition Section Value Sets to be updated for
    international needs and will move forward with this value set.
    (7/18/18).

11. Comment has determined that all additional EMS specific data
    elements/Sections which need to be mapped into the patient medical
    record via the Paramedicine Care Summary-Complete Report; however,
    the data in the Paramedicine Care Summary – Clinical subset should
    be limited to information which may be used for patient care.

12. OIDs have been assigned and added into the profile.

13. The Advance Direct Type Vocabulary is not US Realm specific.

14. A new Mental Status Entry based upon the HL7 C-CDA R2 IG has been
    created.

15. We are interpreting the “return of spontaneous circulation” as a
    vital sign.

16. The Clinical subset is reduced to the entry level.

17. We are interpreting the “Type of CPR provided” as the techniques
    used by those performing CPR prior to the EMS arrival. If this were
    to be used to describe the type of CPR provided by EMS it would be
    recorded as a procedure.

IHE Technical Frameworks General Introduction
=============================================

The [IHE Technical Framework General
Introduction](http://ihe.net/Technical_Frameworks/#GenIntro) is shared
by all of the IHE domain technical frameworks. Each technical framework
volume contains links to this document where appropriate.

9 Copyright Licenses
====================

IHE International hereby grants to each Member Organization, and to any
other user of these documents, an irrevocable, worldwide, perpetual,
royalty-free, nontransferable, nonexclusive, non-sublicensable license
under its copyrights in any IHE profiles and Technical Framework
documents, as well as any additional copyrighted materials that will be
owned by IHE International and will be made available for use by Member
Organizations, to reproduce and distribute (in any and all print,
electronic or other means of reproduction, storage or transmission) such
IHE Technical Documents.

The licenses covered by this Copyright License are only to those
copyrights owned or controlled by IHE International itself. If parts of
the Technical Framework are included in products that also include
materials owned or controlled by other parties, licenses to use those
products are beyond the scope of this IHE document and would have to be
obtained from that other party.

9. 1 Copyright of Base Standards
--------------------------------

IHE technical documents refer to and make use of a number of standards
developed and published by several standards development organizations.
All rights for their respective base standards are reserved by these
organizations. This agreement does not supersede any copyright
provisions applicable to such base standards. Copyright license
information for frequently referenced base standards is provided below.

### 9.1.1 DICOM (Digital Imaging and Communications in Medicine)

DICOM<sup>®</sup> is the registered trademark of the National Electrical
Manufacturers Association for its standards publications relating to
digital communications of medical information.

### 9.1.2 HL7 (Health Level Seven)

HL7<sup>®</sup>, Health Level Seven<sup>®</sup>, CDA<sup>®</sup>, and
FHIR<sup>®</sup> are registered trademarks of Health Level Seven
International.

Health Level Seven, Inc. has granted permission to IHE to reproduce
tables from the HL7 standard. The HL7 tables in this document are
copyrighted by Health Level Seven, Inc. All rights reserved. Material
drawn from these documents is credited where used.

### 9.1.3 LOINC (Logical Observation Identifiers Names and Codes)

LOINC<sup>®</sup> is registered United States trademarks of Regenstrief
Institute, Inc.

### 9.1.4 SNOMED CT (Systematized Nomenclature of Medicine -- Clinical Terms)

Some IHE Profiles incorporate SNOMED<sup>®</sup> CT, which is used by
permission of the International Health Terminology Standards Development
Organisation. SNOMED CT<sup>©</sup> was originally created by the
College of American Pathologists. SNOMED CT is a registered trademark of
the International Health Terminology Standards Development Organisation,
all rights reserved.

10 Trademark
============

IHE<sup>®</sup> and the IHE logo are trademarks of the Healthcare
Information Management Systems Society in the United States and
trademarks of IHE Europe in the European Community. They may only be
used with the written consent of the IHE International Board Operations
Committee, which may be given to a Member Organization in broad terms
for any use that is consistent with the IHE mission and operating
principles.

IHE Technical Frameworks General Introduction Appendices
========================================================

The [IHE Technical Framework General Introduction
Appendices](http://ihe.net/Technical_Frameworks/#GenIntro) are
components shared by all of the IHE domain technical frameworks. Each
technical framework volume contains links to these documents where
appropriate.

Update the following appendices to the General Introduction as indicated
below. Note that these are not appendices to this domain’s Technical
Framework (TF-1, TF-2, TF-3 or TF-4) but rather, they are appendices to
the IHE Technical Frameworks General Introduction located
[here](https://www.ihe.net/resources/technical_frameworks/#GenIntro).

Appendix A – Actor Summary Definitions
======================================

Add the following **new or modified** actors to the IHE Technical
Frameworks General Introduction Appendix A:

| New (or modified) Actor Name | Description |
|------------------------------|-------------|
| No new actors                |             |
|                              |             |

In addition to new actors (if any) the table below lists *existing*
actors that are utilized in this profile.

List of Existing Actors Utilized in this Profile (as defined in Gazelle)

| Existing Actor Name | Definition                                                                                                             |
|---------------------|------------------------------------------------------------------------------------------------------------------------|
| Content Creator     | The Content Creator Actor creates content and transmits to a Content Consumer.                                         |
| Content Consumer    | The Content Consumer Actor views, imports, or performs other processing of content created by a Content Creator Actor. |

Appendix B – Transaction Summary Definitions
============================================

Add the following **new or modified** transactions to the IHE Technical
Frameworks General Introduction Appendix B:

| New (or modified) Transaction Name and Number | Definition |
|-----------------------------------------------|------------|
| No new transactions                           |            |

Appendix D – Glossary
=====================

Add the following **new or modified glossary** terms to the IHE
Technical Frameworks General Introduction Appendix D.

<table>
<thead>
<tr class="header">
<th>New (or modified) Glossary Term</th>
<th>Definition</th>
<th>Synonyms</th>
<th><p>Acronym/</p>
<p>Abbreviation</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>No new terms</td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

<span id="_Toc345074647" class="anchor"></span>Volume 1 – Profiles

X Paramedicine Care Summary (PCS) Profile
=========================================

Currently, patient interventions and assessments are written into an
ambulance electronic Patient Care Record (ePCR), and are either manually
updated by the Emergency Medical Services (EMS) crew, or collected from
electronic devices (e.g., hemodynamic monitor). The ePCR is updated with
treatments and interventions that are administered during the transport.
The hospital will not typically have access to paper or electronic
versions of this patient information until the report is finished and
signed in the ePCR and only if it is requested by the hospital. In this
profile, the prehospital and paramedicine interventions and patient
assessments are made available to the hospital/emergency room IT system
electronically when the patient arrives, or in advance of patient
arrival to the hospital. This informs medical decision making during the
hospital treatment to improve patient care and to save lives. Additional
information that can be found in the completed report can be shared with
the hospital in electronic and codable form. The information available
can then be used to report to registries and quality reporting.

X.1 PCS Actors, Transactions, and Content Modules
-------------------------------------------------

This section defines the actors, transactions, and/or content modules in
this profile. General definitions of actors are given in the Technical
Frameworks General Introduction Appendix A. IHE Transactions can be
found in the Technical Frameworks General Introduction Appendix B. Both
appendices are located at
<http://ihe.net/Technical_Frameworks/#GenIntro>

<img src="media\image2.jpeg" style="width:4.625in;height:0.84583in" />Figure
X.1-1 shows the actors directly involved in the PCS Profile and the
relevant transactions between them. If needed for context, other actors
that may be indirectly involved due to their participation in other
related profiles are shown in dotted lines. Actors which have a required
grouping are shown in conjoined boxes (see Section X.3).

Figure X.1-1: PCS Actor Diagram

Table X.1-1 lists the transactions for each actor directly involved in
the PCS Profile. To claim compliance with this profile, an actor shall
support all required transactions (labeled “R”) and may support the
optional transactions (labeled “O”).

Table X.1-1: PCS Profile – Actors and Transactions

|                  |                            |                        |             |               |
|------------------|----------------------------|------------------------|-------------|---------------|
| Actors           | Transactions               | Initiator or Responder | Optionality | Reference     |
| Content Creator  | Document Sharing \[PCC-1\] | Initiator              | R           | PCC TF-2: 3.1 |
| Content Consumer | Document Sharing \[PCC-1\] | Responder              | R           | PCC TF-2: 3.1 |

Figure X.1-1 shows the actors directly involved in the PCS Profile and
the direction that the content is exchanged.

A product implementation using this profile may group actors from this
profile with actors from a workflow or transport profile to be
functional. The grouping of the content module described in this profile
to specific actors is described in more detail in Required Actor
Groupings PCC TF-1: X.3 or in Cross Profile Considerations PCC TF-1:
X.6.

Table X.1-2 lists the content module(s) defined in the PCS Profile. To
claim support with this profile, an actor shall support all required
content modules (labeled “R”) and may support optional content modules
(labeled “O”).

Table X.1-2: PCS – Actors and Content Modules

| Actors           | Content Modules                                                                       | Optionality        | Reference          |
|------------------|---------------------------------------------------------------------------------------|--------------------|--------------------|
| Content Creator  | Paramedicine Care Summary – Clinical Subset Document 1.3.6.1.4.1.19376.1.5.3.1.1.29.1 | R                  | PCC TF-3: 6.3.1.D1 |
|                  | Paramedicine Care Summary – Complete Report Document 1.3.6.1.4.1.19376.1.5.3.1.1.30.1 | R                  | PCC TF-3: 6.3.1.D2 |
| Content Consumer | Paramedicine Care Summary – Clinical Subset Document 1.3.6.1.4.1.19376.1.5.3.1.1.29.1 | O <sup>Note1</sup> | PCC TF-3: 6.3.1.D1 |
|                  | Paramedicine Care Summary – Complete Report Document 1.3.6.1.4.1.19376.1.5.3.1.1.30.1 | O <sup>Note1</sup> | PCC TF-3: 6.3.1.D2 |

Note 1: The Content Consumer must be able to support at least one of
these options.

### X.1.1 Actor Descriptions and Actor Profile Requirements

Transactional requirements are documented in PCC TF-2 Transactions. This
section documents any additional requirements on profile’s actors.

Content module requirements are documented in PCC TF-2 Content Modules.
This section documents any additional requirements on profile’s actors.

#### X.1.1.1 Content Creator

-   The Content Creator shall be responsible for the creation of content
    and sharing of two documents that summarize the emergency transport
    encounter Paramedicine Care Summary – Clinical Subset (PCS-CS)
    containing the data elements defined in PCC TF-3: 6.3.1.D1 or, where
    the FHIR Option is used, containing the FHIR Composition bundle
    defined in PCC TF-3:6.6.x.2.1

-   Paramedicine Care Summary – Complete Report (PCS-CR) containing the
    data elements defined in PCC TF-3: 6.3.1.D2, or, where the FHIR
    Option is used, containing the FHIR Composition bundle defined in
    PCC TF-3:6.6.x.2.1

##### X.1.1.1.1 Trigger Events

Upon patient handoff from the paramedicine care team to the receiving
facility, a Paramedicine Care Summary – Clinical Subset will be shared
with the receiving facility using the Document Sharing \[PCC-1\]
transaction.

When the full Paramedicine Care Summary data is available, a
Paramedicine Care Summary – Complete Report will be shared with the
receiving facility using the Document Sharing \[PCC-1\] transactions.

#### X.1.1.2 Content Consumer

A Content Consumer is responsible for viewing, importing, or other
processing options for Paramedicine Care Summary – Clinical Subset
(1.3.6.1.4.1.19376.1.5.3.1.1.29.1) and Paramedicine Care Summary –
Complete Report (1.3.6.1.4.1.19376.1.5.3.1.1.30.1) documents content
created by a PCS Content Creator. This is specified in \[PCC-1\]
document sharing transaction in PCC TF-2: 3.1

X.2 PCS Actor Options
---------------------

Options that may be selected for each actor in this profile, if any, are
listed in the Table X.2-1. Dependencies between options, when
applicable, are specified in notes.

Table X.2-1: Paramedicine Care Summary – Actors and Options

| Actor            | Option Name                                         | Reference       |
|------------------|-----------------------------------------------------|-----------------|
| Content Creator  | CDA Option <sup>Note1</sup>                         | Section X.2.1   |
|                  | FHIR Option <sup>Note1</sup>                        | Section X.2.2   |
| Content Consumer | View Option <sup>Note2</sup>                        | PCC TF-2: 3.1.1 |
|                  | Document Import Option <sup>Note2</sup>             | PCC TF-2: 3.1.2 |
|                  | Section Import Option <sup>Note2</sup>              | PCC TF-2: 3.1.3 |
|                  | Discrete Data Import Option <sup>Note2</sup>        | PCC TF-2: 3.1.4 |
|                  | Clinical Subset Data Import Option <sup>Note3</sup> | Section X.2.5   |
|                  | Quality Data Import Option <sup>Note3</sup>         | Section X.2.3   |
|                  | Trauma Data Import Option <sup>Note3</sup>          | Section X.2.4   |

Note 1: The Content Creator must be able to support at least one of
these options.

Note 2: The Content Consumer must implement at least one of these
options.

Note 3: If the Content Consumer implements any of these options, it must
also support the Discrete Data Import Option.

### X.2.1 CDA Option

This option defines the processing requirements placed on the Content
Creators for producing a CDA structured document version of the
Paramedicine Care Summary documents. The CDA details are in Volume 3,
Section 6.3.1

### X.2.2 FHIR Option

This option defines the processing requirements placed on the Content
Creators for producing a FHIR document bundle version of the
Paramedicine Care Summary documents. The FHIR bundle details are in
Volume 3, Section 6.6.x.2.

### X.2.3 Quality Data Import Option

This option defines the processing requirements placed on the Content
Consumers for providing access and importing quality data from selected
sections of the Paramedicine Care Summary. The discrete data import data
details are in Volume 3, Section 6.6.x.5.

### X.2.4 Trauma Data Import Option

This option defines the processing requirements placed on the content
consumers for providing access and importing trauma data from selected
sections of the Paramedicine Care Summary. The discrete data import data
details are in Volume 3, Section 6.6.x.6.

### X.2.5 Clinical Subset Data Import Option

This option defines the processing requirements placed on the Content
Consumers for providing access and importing the clinical subset data
from selected sections of the Paramedicine Care Summary. The discrete
data import data details are in Volume 3, Section 6.6.x.4.

X.3 PCS Required Actor Groupings 
--------------------------------

There are no required actor groupings for this profile.

X.4 PCS Overview
----------------

Transferring patient information from a Paramedicine ePCR using a send
transaction can increase the efficiency of patient hand off between
ambulance and hospitals.

### X.4.1 Concepts

When a hospital is receiving a patient arriving in an emergency
ambulance transport, the main source of the patient information is the
ambulance crew that performed the emergency transport. This information
is not typically electronically transferred and therefore this relay of
information is usually verbal. This can draw away from the treatment of
the patient. The use of an interoperable transfer of patient information
can reduce the time spent relaying information and provide the hospital
treatment team with patient information that can be used to make
decisions on their treatment upon their arrival to the hospital.

### X.4.2 Use Cases

#### X.4.2.1 Use Case \#1: Emergency Response for Heart Attack

This use case describes how an emergency response for a heart attack is
carried out and then how the information on interventions are recorded
and provided to a hospital.

##### X.4.2.1.1 Emergency Response for Heart Attack Use Case Description

A fifty-year-old man develops heart attack symptoms. He calls 911 for an
emergency transport to a hospital. The emergency transport team is able
to retrieve some of the patient’s medical history, current medications
and allergies from the patient and inputs this information in their
Electronic Patient Care Record (ePCR). The patient told EMTs that he had
already taken his prescribed nitroglycerine thirty minutes before
calling 911 when the chest pain first presented. A 12 lead EKG was
established to monitor the patient’s heart rhythm and the rhythm shows
abnormalities indicative to a myocardial infarction. The EMT starts an
intravenous line in the patient’s left arm. During the transport the
patient’s chest pain increases and breathing is elevated. After ensuring
that the patient is not on any blood thinners, the EMT administers
aspirin to the patient. The patient felt relief after he was given
aspirin. However, after feeling this relief, he falls into cardiac
arrest. Compressions are started and maintained until arrival at the
hospital. The patient information is made available to the hospital
system and the hospital has full access to the EKG data, vitals, and
interventions that were shared during the transport. The EMS ePCR is
completed and then electronically shared with the hospital to be
available for quality metrics. This sharing can be either directly or
through a document sharing infrastructure.

##### X.4.2.1.2 Emergency Response for Heart Attack Patient Process Flow

Figure X.4.2.1.2-1: Basic Process Flow in PCS Profile

**Pre-conditions**:

The person calling 911 is suffering from an emergent issue.

An EMS response team is sent out for the call.

**Main Flow**:

EMS provider arrives on scene and inputs the patient information into
the ePCR.

Interventions are performed and documented during transport.

EMS, either directly or through a document sharing infrastructure,
provides the information for the current patient condition and
interventions that were performed to the hospital.

The patient care is transferred to the hospital staff.

**Post-conditions:**

The patient care is continued in the hospital.

The Paramedicine Care Summary – Complete, is completed and the full
report is provided either directly or through a document sharing
infrastructure, to the hospital.

X.5 PCS Security Considerations
-------------------------------

See [ITI TF-2.x: Appendix
Z.8](http://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf)
“Mobile Security Considerations”.

X.6 PCS Cross Profile Considerations
------------------------------------

The information that is imported by the Paramedicine Care Summary (PCS)
Content Consumer implementing the quality option may be leveraged to
support content needed for the Quality Outcome Reporting for EMS (QORE)
Profile.

The use of the IHE XD\* family of transactions is encouraged to support
standards-based interoperability between systems acting as the PCS
Content Creator and PCS Content Consumer. However, this profile does not
require any groupings with ITI XD\* actors to facilitate transport of
the content document it defines.

IHE transport transactions that MAY be utilized by systems playing the
roles of PCS Content Creator or Content Consumer to support the standard
use case defined in this profile:

A Document Source in XDS.b, a Portable Media Creator in XDM, or a
Document Source in XDR might be grouped with the PCS Content Creator. A
Document Consumer in XDS.b, a Portable Media Importer in XDM, or a
Document Recipient in XDR might be grouped with the PCS Content
Consumer. A registry/repository-based infrastructure is defined by the
IHE Cross Enterprise Document Sharing (XDS.b) Profile that includes
profile support that can be leveraged to facilitate retrieval of public
health related information from a document sharing infrastructure:
Multi-Patient Query (MPQ), and Document Metadata Subscription (DSUB).

A reliable messaging-based infrastructure is defined by the IHE Cross
Enterprise Document Reliable Interchange (XDR) Profile. A Document
Source in XDR might be grouped with the PCS Content Creator. A Document
Recipient in XDR might be grouped with the PCS Content Consumer.

Detailed descriptions of these transactions can be found in the IHE IT
Infrastructure Technical Framework.

<span id="_Toc345074666" class="anchor"></span>Volume 1 Appendices

None

<span id="_Toc61338985" class="anchor"></span>Volume 2 – Transactions

No new transactions.

<span id="_Toc345074688" class="anchor"></span>Volume 2 Appendices

None

Volume 2 Namespace Additions
============================

N/A

<span id="_Toc345074694" class="anchor"></span>Volume 3 – Content
Modules

5 IHE Namespaces, Concept Domains and Vocabularies
==================================================

5.1 IHE Namespaces
------------------

No new namespaces.

5.2 IHE Concept Domains
-----------------------

No new concept domains.

5.3 IHE Format Codes and Vocabularies
-------------------------------------

### 5.3.1 IHE Format Codes

The following new Format Codes are introduced with the PCS Profile. A
complete listing of IHE Format Codes can be found at
<http://wiki.ihe.net/index.php/IHE_Format_Codes>.

| Profile                                              | Format Code             | Media Type | Template ID                      |
|------------------------------------------------------|-------------------------|------------|----------------------------------|
| Paramedicine Care Summary – Clinical Subset (PCS-CS) | urn:ihe:pcc:pcs-cs:2018 | text/xml   | 1.3.6.1.4.1.19376.1.5.3.1.1.29.1 |
| Paramedicine Care Summary – Complete Report (PCS-CR) | urn:ihe:pcc:pcs-cr:2018 | text/xml   | 1.3.6.1.4.1.19376.1.5.3.1.1.30.1 |

### 5.3.2 IHEActCode Vocabulary

NA

### 5.3.3 IHERoleCode Vocabulary

NA

6 Content Modules
=================

### 6.3.1 CDA Document Content Modules

#### 6.3.1.D1 Paramedicine Care Summary – Clinical Subset (PCS-CS) Document Content Module 

The Paramedicine Care Summary – Clinical Subset document content module
is a Medical Summary and inherits all header constraints from the
International Patient Summary (2.16.840.1.113883.10.22.1.1). The
intention of this document is to provide a clinical subset of the
Paramedicine care report to an emergency department that does not
include non-pertinent data.

##### 6.3.1.D1.1 Format Code

The XDSDocumentEntry format code for this content is
urn:ihe:pcc:pcs-cs:2018

##### 6.3.1.D1.2 LOINC Code 

The LOINC code for this document is 67796-3 -ParamedicineCareSummary.

##### 6.3.1.D1.3 Referenced Standards

All standards which reference in this document are listed below with
their common abbreviation, full title, and link to the standard.

Table 6.3.1.D1.3-1: Paramedicine Care Summary Document – Referenced
Standards

|               |                                                                              |                                                                                                 |
|---------------|------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| Abbreviation  | Title                                                                        | URL                                                                                             |
| CDAR2         | HL7 CDA Release 2.0                                                          | <http://www.hl7.org/documentcenter/public/standards/dstu/CDAR2_IG_PROCNOTE_DSTU_R1_2010JUL.zip> |
| HL7 IPS CDA   | HL7 CDA® R2 Implementation Guide International Patient Summary STU Release 1 | <https://www.hl7.org/implement/standards/product_brief.cfm?product_id=483>                      |
| SNOMED CT     | SNOMED International                                                         | <http://www.snomed.org/snomed-ct/get-snomed-ct>                                                 |
| ISO/DIS 27269 | ISO/DIS 27269 Health informatics — The international patient summary         | <https://www.iso.org/standard/79491.html>                                                       |
| HL7 EMS DAM   | HL7 Version 3 Domain Analysis Model, Emergency Medical Services, Release 1   | <http://www.hl7.org/implement/standards/product_brief.cfm?product_id=421>                       |
| HL7 EMS DIM   | HL7 version 3 Domain Information Model; Emergency Model Services, release 1  | <http://www.hl7.org/implement/standards/product_brief.cfm?product_id=302>                       |

##### 6.3.1.D1.4 Data Element Requirement Mappings to CDA

This section identifies the mapping of data between referenced standards
into the CDA implementation guide.

Table 6.3.1.D1.4-1: Paramedicine Care Summary (PCS) – Data Element
Requirement Mappings to CDA

<table>
<thead>
<tr class="header">
<th>PCS Data Elements</th>
<th>IPS CDA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Patient Attributes</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]</td>
</tr>
<tr class="even">
<td>Patient’s name</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/name</td>
</tr>
<tr class="odd">
<td>Address</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/addr</td>
</tr>
<tr class="even">
<td>Telecoms</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/telecom</td>
</tr>
<tr class="odd">
<td>Administrative gender</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/administrativeGenderCode</td>
</tr>
<tr class="even">
<td>Date of birth</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/birthTime</td>
</tr>
<tr class="odd">
<td>Patient’s preferred language</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/languageCommunication/languageCode</td>
</tr>
<tr class="even">
<td>Healthcare related identifiers</td>
<td>see below</td>
</tr>
<tr class="odd">
<td>Patient identifier</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/id</td>
</tr>
<tr class="even">
<td>Insurance information</td>
<td>see below</td>
</tr>
<tr class="odd">
<td>Insurance identifier</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/id</td>
</tr>
<tr class="even">
<td>Patient's Address Book</td>
<td>see below</td>
</tr>
<tr class="odd">
<td>Preferred healthcare providers</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/code</td>
</tr>
<tr class="even">
<td>Healthcare provider (person)</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson</td>
</tr>
<tr class="odd">
<td>Healthcare provider Name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name</td>
</tr>
<tr class="even">
<td>Healthcare provider Role</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/code</td>
</tr>
<tr class="odd">
<td>Healthcare provider Telecoms</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/telecom</td>
</tr>
<tr class="even">
<td>Healthcare provider (organization)</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/scopingOrganization</td>
</tr>
<tr class="odd">
<td>Organization’s name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/scopingOrganization/name</td>
</tr>
<tr class="even">
<td>Organization’s Telecoms</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/telecom</td>
</tr>
<tr class="odd">
<td>Other’s address details</td>
<td>see below</td>
</tr>
<tr class="even">
<td>Addressee</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian</td>
</tr>
<tr class="odd">
<td>Addressee Role</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/code<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian</td>
</tr>
<tr class="even">
<td>Addressee Name</td>
<td><p>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name</p>
<p>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/guardianPerson/name</p></td>
</tr>
<tr class="odd">
<td>Addressee Address</td>
<td><p>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr</p>
<p>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/addr</p></td>
</tr>
<tr class="even">
<td>Addressee Telecoms</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/telecom<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/telecom</td>
</tr>
<tr class="odd">
<td>Advance Directives Section</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]</td>
</tr>
<tr class="even">
<td>Advance Directives</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]</td>
</tr>
<tr class="odd">
<td>Advance Directive</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]<br />
/ClinicalDocument/[IPS Advance Directives Section]</td>
</tr>
<tr class="even">
<td>Person Authorizing Directive</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/participant<br />
/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/author</td>
</tr>
<tr class="odd">
<td>Person Authorizing Name</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/participant/participantRole/playingEntity/name<br />
/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/author/assignedAuthor/assignedPerson/name</td>
</tr>
<tr class="even">
<td>Person Authorizing Role</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/participant/participantRole/code<br />
/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/author/assignedAuthor/code</td>
</tr>
<tr class="odd">
<td>Person Authorizing Telecoms</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/participant/participantRole/telecom<br />
/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/author/assignedAuthor/telecom</td>
</tr>
<tr class="even">
<td>Directive Category</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/code</td>
</tr>
<tr class="odd">
<td>Directive Description</td>
<td><blockquote>
<p>/ClinicalDocument/[IPS Advance Directives Section]/text</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Reference to Legal Document</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/reference/externalDocument</td>
</tr>
<tr class="odd">
<td>Allergies and Intolerances</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]</td>
</tr>
<tr class="even">
<td>Allergies/Intolerances content status</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/observation/code</td>
</tr>
<tr class="odd">
<td>Allergies and Intolerances</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance description</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/text</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Clinical status</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Allergy Status Observation]/value</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Onset Date</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/observation/effectiveTime/low</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance End Date</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/observation/effectiveTime/high</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Criticality</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Criticality Observation]</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Certainty</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Allergy Certainty Observation]</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Type of propensity</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/observation/code</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Diagnosis</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/value</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Reaction</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Reaction Manifestation]</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Manifestation of the reaction</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Reaction Manifestation]/value</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Severity</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Reaction Manifestation]/entryRelationship/[IPS Severity Observation]</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Agent</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/participant</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Agent code</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/participant/participantRole/playingEntity/code</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Category</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/participant/participantRole/playingEntity/code</td>
</tr>
<tr class="odd">
<td>Functional Status Section</td>
<td>/ClinicalDocument/[IPS Functional Status Section]</td>
</tr>
<tr class="even">
<td>Disabilities</td>
<td>/ClinicalDocument/[IPS Functional Status Section]</td>
</tr>
<tr class="odd">
<td>Disability</td>
<td>/ClinicalDocument/[IPS Functional Status Section]</td>
</tr>
<tr class="even">
<td>Disability Description</td>
<td><blockquote>
<p>/ClinicalDocument/[IPS Functional Status Section]/text</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Disability Code</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/observation/value</td>
</tr>
<tr class="even">
<td>Onset Date</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/observation/effectiveTime/low</td>
</tr>
<tr class="odd">
<td>Functional assessments (determines autonomy)</td>
<td>/ClinicalDocument/[IPS Functional Status Section]</td>
</tr>
<tr class="even">
<td>Functional Assessment (type performed)</td>
<td>/ClinicalDocument/[IPS Functional Status Section]</td>
</tr>
<tr class="odd">
<td>Functional Assessment description</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/text</td>
</tr>
<tr class="even">
<td>Date of assessment</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/effectiveTime<br />
/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/component/[IPS Survey Observation]/effectiveTime</td>
</tr>
<tr class="odd">
<td>Functional Assessment Type</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/code<br />
/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/component/[IPS Survey Observation]/code</td>
</tr>
<tr class="even">
<td>Functional Assessment Result</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/component/[IPS Survey Observation]/value</td>
</tr>
<tr class="odd">
<td>Functional Assessment</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/component/[IPS Survey Observation]</td>
</tr>
<tr class="even">
<td>History of Past Problems</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]</td>
</tr>
<tr class="odd">
<td>Past problems</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]</td>
</tr>
<tr class="even">
<td>Past problem</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]</td>
</tr>
<tr class="odd">
<td>Problem type</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/code</td>
</tr>
<tr class="even">
<td>Problem Description</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/text</td>
</tr>
<tr class="odd">
<td>Problem Diagnosis</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/value</td>
</tr>
<tr class="even">
<td>Problem Severity</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/entryRelationship/[IPS Severity Observation]</td>
</tr>
<tr class="odd">
<td>Problem Onset Date</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/effectiveTime/low</td>
</tr>
<tr class="even">
<td>Problem Status</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/entryRelationship/[IPS Problem Status Observation]</td>
</tr>
<tr class="odd">
<td>Date Problem Resolved</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/effectiveTime/high</td>
</tr>
<tr class="even">
<td>Specialist Contact for problem</td>
<td>Not explicitly specified (see open issues #41)</td>
</tr>
<tr class="odd">
<td>History of Pregnancy Section</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]</td>
</tr>
<tr class="even">
<td>Current pregnancy status</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Status Observation]</td>
</tr>
<tr class="odd">
<td>Pregnancy description</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/text</td>
</tr>
<tr class="even">
<td>Pregnancy details</td>
<td>see below</td>
</tr>
<tr class="odd">
<td>Date of observation</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Status Observation]/effectiveTime</td>
</tr>
<tr class="even">
<td>Pregnancy state</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Status Observation]/value</td>
</tr>
<tr class="odd">
<td>Expected delivery date</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Status Observation]/entryRelationship/[IPS Pregnancy Expected Delivery Date Observation]/value</td>
</tr>
<tr class="even">
<td>Specialist contact</td>
<td>Not explicitly specified (see open issues #41)</td>
</tr>
<tr class="odd">
<td>Previous history of pregnancies</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]</td>
</tr>
<tr class="even">
<td>Previous pregnancies status</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Observation]/value</td>
</tr>
<tr class="odd">
<td>Previous pregnancies<br />
description</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/text</td>
</tr>
<tr class="even">
<td>Previous pregnancies</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Observation]</td>
</tr>
<tr class="odd">
<td>Previous pregnancy details</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Observation]</td>
</tr>
<tr class="even">
<td>Outcome date</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Observation]/effectiveTime</td>
</tr>
<tr class="odd">
<td>Outcome</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Observation]/value</td>
</tr>
<tr class="even">
<td>Specialist contact</td>
<td>Not explicitly specified (see open issues #41)</td>
</tr>
<tr class="odd">
<td>Summary metric</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Outcome Observation]</td>
</tr>
<tr class="even">
<td>History of Procedures</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]</td>
</tr>
<tr class="odd">
<td>Procedures content status</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/code</td>
</tr>
<tr class="even">
<td>Procedures</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]</td>
</tr>
<tr class="odd">
<td>Procedure</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]</td>
</tr>
<tr class="even">
<td>Procedure code</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/code</td>
</tr>
<tr class="odd">
<td>Procedure description</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/text</td>
</tr>
<tr class="even">
<td>Body site</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/targetSiteCode</td>
</tr>
<tr class="odd">
<td>Procedure date</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/effectiveTime</td>
</tr>
<tr class="even">
<td>Immunizations</td>
<td>/ClinicalDocument/[IPS Immunizations Section]</td>
</tr>
<tr class="odd">
<td>Immunizations content status</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/consumable/[IPS Immunization Medication Information]/manufacturedProduct/manufacturedMaterial/code</td>
</tr>
<tr class="even">
<td>Immunizations</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]</td>
</tr>
<tr class="odd">
<td>Immunization</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]</td>
</tr>
<tr class="even">
<td>Vaccine for type of disease</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/consumable/[IPS Immunization Medication Information]/manufacturedProduct/manufacturedMaterial/code</td>
</tr>
<tr class="odd">
<td>Target diseases</td>
<td></td>
</tr>
<tr class="even">
<td>Target disease</td>
<td></td>
</tr>
<tr class="odd">
<td>Date of immunization</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/effectiveTime</td>
</tr>
<tr class="even">
<td>Product administered</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/consumable/[IPS Immunization Medication Information]/manufacturedProduct/manufacturedMaterial/code</td>
</tr>
<tr class="odd">
<td>Brand name</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/consumable/[IPS Immunization Medication Information]/manufacturedProduct/manufacturedMaterial/code</td>
</tr>
<tr class="even">
<td>Product administration process</td>
<td>see below</td>
</tr>
<tr class="odd">
<td>Performer</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/performer</td>
</tr>
<tr class="even">
<td>Route of administration</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/routeCode</td>
</tr>
<tr class="odd">
<td>Medical Devices</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]</td>
</tr>
<tr class="even">
<td>Device content status</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]/participant/participantRole/playingDevice/code</td>
</tr>
<tr class="odd">
<td>Devices</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]</td>
</tr>
<tr class="even">
<td>Device</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]</td>
</tr>
<tr class="odd">
<td>Device type</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]/participant/participantRole/playingDevice/code</td>
</tr>
<tr class="even">
<td>Device identifier</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]/participant/participantRole/id</td>
</tr>
<tr class="odd">
<td>Use start date</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]/effectiveTime/low</td>
</tr>
<tr class="even">
<td>Use end date</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]/effectiveTime/high</td>
</tr>
<tr class="odd">
<td>Medication Summary</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]</td>
</tr>
<tr class="even">
<td>Medication summary content status</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/code</td>
</tr>
<tr class="odd">
<td>Medications</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]</td>
</tr>
<tr class="even">
<td>Medication</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]</td>
</tr>
<tr class="odd">
<td>Reason</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[Indication (V2)]</td>
</tr>
<tr class="even">
<td>Medicinal product</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]</td>
</tr>
<tr class="odd">
<td>Product code</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/code</td>
</tr>
<tr class="even">
<td>Product common name (and strength)</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/asSpecializedKind/name</td>
</tr>
<tr class="odd">
<td>Pharmaceutical dose form</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/formCode</td>
</tr>
<tr class="even">
<td>Brand name</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/asContent/containerPackagedProduct/name</td>
</tr>
<tr class="odd">
<td>Active ingredients</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/ingredient</td>
</tr>
<tr class="even">
<td>Active ingredient</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/ingredient</td>
</tr>
<tr class="odd">
<td>Substance code</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/ingredient/ingredientSubstance/code</td>
</tr>
<tr class="even">
<td>Strength</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/ingredient/quantity</td>
</tr>
<tr class="odd">
<td>Administration instruction</td>
<td>see below</td>
</tr>
<tr class="even">
<td>Instruction</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/text</td>
</tr>
<tr class="odd">
<td>Period of medication use</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/[UV Use Period]</td>
</tr>
<tr class="even">
<td>Route of administration</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/routeCode</td>
</tr>
<tr class="odd">
<td>Dose instruction</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[IPS Subordinate SubstanceAdministration]</td>
</tr>
<tr class="even">
<td>No. of units per intake</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[IPS Subordinate SubstanceAdministration]/doseQuantity</td>
</tr>
<tr class="odd">
<td>Frequency of intake</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[IPS Subordinate SubstanceAdministration]/effectiveTime</td>
</tr>
<tr class="even">
<td>Plan of Care</td>
<td>/ClinicalDocument/[IPS Plan of Care Section]</td>
</tr>
<tr class="odd">
<td>Plans</td>
<td>/ClinicalDocument/[IPS Plan of Care Section]</td>
</tr>
<tr class="even">
<td>Plan</td>
<td>/ClinicalDocument/[IPS Plan of Care Section]</td>
</tr>
<tr class="odd">
<td>Plan type</td>
<td>Not explicitly specified</td>
</tr>
<tr class="even">
<td>Plan date</td>
<td>Not explicitly specified</td>
</tr>
<tr class="odd">
<td>Plan description</td>
<td>/ClinicalDocument/[IPS Plan of Care Section].text</td>
</tr>
<tr class="even">
<td>Recommendations (Core Care Plan)</td>
<td>/ClinicalDocument/[IPS Plan of Care Section]/entry</td>
</tr>
<tr class="odd">
<td>Recommendation</td>
<td>/ClinicalDocument/[IPS Plan of Care Section]/entry/[…] (several templates)</td>
</tr>
<tr class="even">
<td>Recommendation for treatment</td>
<td>depends on the template used</td>
</tr>
<tr class="odd">
<td>Given recommendation date</td>
<td>depends on the template used</td>
</tr>
<tr class="even">
<td>Applicable date</td>
<td>depends on the template used</td>
</tr>
<tr class="odd">
<td>Extensive Plan</td>
<td>Not explicitly specified</td>
</tr>
<tr class="even">
<td>Problems</td>
<td>/ClinicalDocument/[IPS Problems Section]</td>
</tr>
<tr class="odd">
<td>Problems content status</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/code</td>
</tr>
<tr class="even">
<td>Problems</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]</td>
</tr>
<tr class="odd">
<td>Problem</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]</td>
</tr>
<tr class="even">
<td>Problem type</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/code</td>
</tr>
<tr class="odd">
<td>Problem description</td>
<td>/ClinicalDocument/[IPS Problems Section]/text</td>
</tr>
<tr class="even">
<td>Diagnosis</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/value</td>
</tr>
<tr class="odd">
<td>Severity</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/entryRelationship/[IPS Severity Observation]/value</td>
</tr>
<tr class="even">
<td>Onset date</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/effectiveTime/low</td>
</tr>
<tr class="odd">
<td>Problem status</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/entryRelationship/[IPS Problem Status Observation]/value</td>
</tr>
<tr class="even">
<td>Specialist contact</td>
<td>Not explicitly specified (see open issues #41)</td>
</tr>
<tr class="odd">
<td>Results</td>
<td>/ClinicalDocument/[IPS Results Section]</td>
</tr>
<tr class="even">
<td>Observation results</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/[…] (several observation templates)</td>
</tr>
<tr class="odd">
<td>Observation result</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/[…] (several observation templates)</td>
</tr>
<tr class="even">
<td>Date of observation</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/effectiveTime<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/effectiveTime</td>
</tr>
<tr class="odd">
<td>Observation type</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/code<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/code</td>
</tr>
<tr class="even">
<td>Result description</td>
<td>/ClinicalDocument/[IPS Results Section]/text</td>
</tr>
<tr class="odd">
<td>Value</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/value</td>
</tr>
<tr class="even">
<td>Observation result</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation</td>
</tr>
<tr class="odd">
<td>Performer</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/performer<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/performer</td>
</tr>
<tr class="even">
<td>Observer</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/author</td>
</tr>
<tr class="odd">
<td>Social History</td>
<td>/ClinicalDocument/[IPS Social History Section]</td>
</tr>
<tr class="even">
<td>Life style factors</td>
<td>/ClinicalDocument/[IPS Social History Section]/entry</td>
</tr>
<tr class="odd">
<td>Life style factor</td>
<td>/ClinicalDocument/[IPS Social History Section]/entry/[…] (several observation templates)</td>
</tr>
<tr class="even">
<td>Life style factor description</td>
<td>/ClinicalDocument/[IPS Social History Section]/text</td>
</tr>
<tr class="odd">
<td>Life style factor details</td>
<td>/ClinicalDocument/[IPS Social History Section]/entry/observation/value</td>
</tr>
<tr class="even">
<td>Reference date range</td>
<td>/ClinicalDocument/[IPS Social History Section]/entry/observation/effectiveTime</td>
</tr>
<tr class="odd">
<td>Vital Signs</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]</td>
</tr>
<tr class="even">
<td>Vital signs</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]</td>
</tr>
<tr class="odd">
<td>Vital sign</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]</td>
</tr>
<tr class="even">
<td>Date of observation</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/effectiveTime</td>
</tr>
<tr class="odd">
<td>Observation type</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code</td>
</tr>
<tr class="even">
<td>Result description</td>
<td>/ClinicalDocument/[IPS Vital Signs Section].text</td>
</tr>
<tr class="odd">
<td>Value</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Vital sign</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]</td>
</tr>
<tr class="odd">
<td>Physician Certification Statement</td>
<td>Reason for Referral</td>
</tr>
<tr class="even">
<td>Date Physician Certification Statement Signed</td>
<td>Reason for Referral</td>
</tr>
<tr class="odd">
<td>Reason for Physician Certification Statement</td>
<td>Coded Reason for Referral</td>
</tr>
<tr class="even">
<td>Healthcare Provider Type Signing Physician Certification Statement</td>
<td>Reason for Referral</td>
</tr>
<tr class="odd">
<td>Last Name of Individual Signing Physician Certification Statement</td>
<td>Reason for Referral</td>
</tr>
<tr class="even">
<td>First Name of Individual Signing Physician Certification Statement</td>
<td>Reason for Referral</td>
</tr>
</tbody>
</table>

##### 6.3.1.D1.5 Paramedicine Care Summary – Clinical Subset (PCS - CS) Document Content Module Specification

This section specifies the header, section, and entry content modules
which comprise the Paramedicine Care Summary – Clinical Subset (PCS-CS)
Document Content Module, using the Template ID as the key identifier.

Sections that are used according to the definitions in other
specifications are identified with the relevant specification document.
Additional constraints on vocabulary value sets, not specifically
constrained within the section template, are also identified.

Note: The only header items that are mentioned are the items that are
constrained.

Table 6.3.1.D1.5-1: Paramedicine Care Summary (PCS) Document Content
Module Specification

<table>
<tbody>
<tr class="odd">
<td>Template Name</td>
<td>Paramedicine Care Summary – Clinical Subset (PCS-CS)</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Template ID</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.29.1</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Parent Template</td>
<td>International Patient Summary (2.16.840.1.113883.10.22.1.1)</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>General Description</td>
<td>The Paramedicine Care Summary will contain the patient’s paramedicine care information and interventions.</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Document Code</td>
<td>SHALL BE 67796-3Code System LOINC (CodeSystem: 2.16.840.1.113883.6.1 LOINC), “EMS Patient Care Report”</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Opt and Card</td>
<td>Condition</td>
<td>Header Element or Section Name</td>
<td>Template ID</td>
<td>Specification Document</td>
<td>Vocabulary Constraint</td>
</tr>
<tr class="odd">
<td>Header Elements</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>R</p>
<p>[1..*]</p></td>
<td></td>
<td>author</td>
<td>2.16.840.1.113883.10.22.2.2</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>custodian</td>
<td>2.16.840.1.113883.10.22.2.3</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>documentationOf</td>
<td>2.16.840.1.113883.10.22.2.6</td>
<td>HL7 IPS CDA</td>
<td>6.3.2.H.7</td>
</tr>
<tr class="odd">
<td><p>RE</p>
<p>[0..1]</p></td>
<td></td>
<td>legalAuthenticator</td>
<td>2.16.840.1.113883.10.22.2.4</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>recordTarget</td>
<td>2.16.840.1.113883.10.22.2.1</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td><p>RE</p>
<p>[0..*]</p></td>
<td></td>
<td>relatedDocument</td>
<td>2.16.840.1.113883.10.22.2.7</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td><p>RE</p>
<p>[0..*]</p></td>
<td></td>
<td>IPS Patient Contacts</td>
<td>2.16.840.1.113883.10.22.2.5</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td><p>RE</p>
<p>[0..*]]</p></td>
<td></td>
<td>IPS CDA Organization</td>
<td>2.16.840.1.113883.10.22.9.1</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td><p>O</p>
<p>[0..1]</p></td>
<td></td>
<td>Personal Information: Race</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.1</td>
<td>PCC TF-2: 6.3.1.1</td>
<td>6.3.2.H.3</td>
</tr>
<tr class="odd">
<td><p>O</p>
<p>[0..1]</p></td>
<td></td>
<td>Personal Information: Ethnicity</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.1</td>
<td>PCC TF-2: 6.3.1.1</td>
<td>6.3.2.H.1</td>
</tr>
<tr class="even">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>IPS CDA Person</td>
<td>2.16.840.1.113883.10.22.9.3</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td>Sections</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>RE [0..1]</td>
<td></td>
<td>IPS Advance Directives</td>
<td>2.16.840.1.113883.10.22.3.12</td>
<td>HL7 IPS CDA</td>
<td>6.3.D1.5.1</td>
</tr>
<tr class="odd">
<td>R [1..1]</td>
<td></td>
<td>IPS Allergies and Intolerances</td>
<td>2.16.840.1.113883.10.22.3.2</td>
<td>HL7 IPS CDA</td>
<td>6.3.D1.5.2</td>
</tr>
<tr class="even">
<td>R [1..1]</td>
<td></td>
<td>IPS Medication Summary</td>
<td>2.16.840.1.113883.10.22.3.1</td>
<td>HL7 IPS CDA</td>
<td>6.3.D1.5.4</td>
</tr>
<tr class="odd">
<td>O [0..1]</td>
<td></td>
<td>Medications Administered Section</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.3.21</td>
<td>PCC TF-2: 6.3.3.3.3, 6.3.3.2.11</td>
<td>6.3.D1.5.4, 6.3.D1.5.11</td>
</tr>
<tr class="even">
<td>RE [0..1]</td>
<td></td>
<td>IPS History of Past Illness</td>
<td>2.16.840.1.113883.10.22.3.7</td>
<td>HL7 IPS CDA</td>
<td>6.3.D1.5.9</td>
</tr>
<tr class="odd">
<td>RE [1..N]</td>
<td></td>
<td>IPS Functional Status</td>
<td>2.16.840.1.113883.10.22.3.8</td>
<td>HL7 IPS CDA</td>
<td>6.3.D1.5.7</td>
</tr>
<tr class="even">
<td>RE [0..1]</td>
<td></td>
<td>IPS History of Procedures</td>
<td>2.16.840.1.113883.10.22.3.4</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td>O [0..1]</td>
<td></td>
<td>IPS Immunizations</td>
<td>2.16.840.1.113883.10.22.3.5</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td>O [0..1]</td>
<td></td>
<td>IPS Medical Devices</td>
<td>2.16.840.1.113883.10.22.3.6</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td>R [1..1]</td>
<td></td>
<td>IPS Problems</td>
<td>2.16.840.1.113883.10.22.3.3</td>
<td>HL7 IPS CDA</td>
<td>6.3.D1.5.10</td>
</tr>
<tr class="even">
<td>O [0..1]</td>
<td></td>
<td>IPS Results</td>
<td>2.16.840.1.113883.10.22.3.14</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td>RE [0..*]</td>
<td></td>
<td>IPS Vital Signs</td>
<td>2.16.840.113883.10.22.4.44</td>
<td>HL7 IPS CDA</td>
<td><p>6.3.D1.5.3</p>
<p>6.3.D1.5.7</p></td>
</tr>
<tr class="even">
<td>RE [0..1]</td>
<td></td>
<td>IPS History of Pregnancy</td>
<td>2.16.840.1.113883.10.22.3.11</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td>O[0..1]</td>
<td></td>
<td>Payor</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.5.3.7</td>
<td>PCC TF-2: 6.3.3.7.1</td>
<td></td>
</tr>
</tbody>
</table>

###### 6.3.1.D1.5.1 Advance Directives Constraints

The Advance Directive Type shall be drawn from the Advance Directive
Type concept domain as defined by local jurisdiction. The &lt;value&gt;
element shall be encoded in the /value concept (e.g., In the US the
value shall be drawn from the AdvanceDirectiveType -
2.16.840.1.113883.17.3.11.63 \[HL7 EMS PCR\] value set.).

###### 6.3.1.D1.5.2 Allergies and Intolerances Constraint

The Drug Allergies allergen SHOULD be drawn from the RxNorm coding
system 2.16.840.1.113883.6.88 unless otherwise specified by local
jurisdiction. The &lt;value&gt; element SHALL be encoded in the
participant/participantRole/playingEntity/code concept.

The Non-Drug Allergies allergen SHALL be drawn from the SNOMED CT coding
system. The &lt;value&gt; element SHALL be encoded in the
participant/participantRole/playingEntity/code concept.

In the case that the existence of the drug or non-drug allergy is known,
but not the substance type, the allergen SHALL be coded using {6497000,
SNOMED CT, Substance Type Unknown}. The &lt;value&gt; element SHALL be
encoded in the participant/participantRole/playingEntity/code concept.

In the case that there are no known drug allergies the allergen SHALL be
coded using {409137002, SNOMED CT, No Known Drug Allergies}. The
&lt;value&gt; element SHALL be encoded in
participant/participantRole/playingEntity/code concept.

###### 6.3.1.D1.5.3 Vital Signs Section – Vital Signs Observation Constraints

The following additional vital sign observation entries SHALL be
supported using the LOINC codes, with the specified data types and unit.
The Coded Vital Signs Section SHALL include one or more Vital Signs
Observation (templateID 1.3.6.1.4.1.19376.1.5.3.1.4.13.2 \[PCC TF-2\]).
For pain scale and stroke scale SHALL include the Type.

Table 6.3.1.D1.5.3-1: Vital Signs Descriptions and LOINC Codes

| LOINC    | Description                                  | Units    | Type |
|----------|----------------------------------------------|----------|------|
| 8478-0   | MEAN ARTERIAL PRESSURE                       | mm\[Hg\] | PQ   |
| 19889-5  | END TITLE CARBON DIOXIDE (ETCO2)             | %        | PQ   |
| 20563-3  | CARBON MONOXIDE (CO)                         | %        | PQ   |
| 2339-0   | BLOOD GLUCOSE LEVEL                          | mg/dl    | PQ   |
| 9267-6   | GLASGOW COMA SCORE-EYE                       | n/a      | PQ   |
| 9268-4   | GLASGOW MOTOR                                | n/a      | PQ   |
| 9270-0   | GLASGOW COMA SCORE.VERBAL                    | n/a      | PQ   |
| 9269-2   | TOTAL GLASGOW COMA SCORE                     | n/a      | PQ   |
| 9267-6   | GLASCOW QUALIFIER                            | n/a      | PQ   |
| 38208-5  | PAIN SCALE SCORE                             | n/a      | PQ   |
| 80316-3  | PAIN SCALE TYPE                              | n/a      | PQ   |
| 72089-6  | STROKE SCALE SCORE                           | n/a      | PQ   |
| 67521-5  | STROKE SCALE TYPE                            | n/a      | PQ   |
| 48334-7  | APGAR 1 MINUTE                               | n/a      | PQ   |
| 48333-9  | APGAR 5 MINUTE                               | n/a      | PQ   |
| 48332-1  | APGAR 10 MINUTE                              | n/a      | PQ   |
| 80341-1  | RESPIRATORY EFFORT                           | n/a      | PQ   |
| 11454-6  | RESPONSIVENESS ASSESSMENT AT FIRST ENCOUNTER | n/a      | PQ   |

In addition, the following attributes will be supported for the
additional LOINC definitions:

The Method of Measurement SHALL be included in the Vital Signs
Observation for the following vital signs:

-   Systolic Blood Pressure

-   Diastolic Blood Pressure

-   Mean Arterial Pressure

-   Temperature

-   Stroke Score

-   and Heart Rate (if LOINC /value 8886-4 is designated).

The &lt;methodCode&gt;element SHALL be encoded in the /methodCode
concept.

The Stroke Scale Type SHALL be drawn from the StrokeScale concept domain
as defined by local jurisdiction. (e.g., In the US the value set SHALL
be drawn from the StrokeScale (templateID 2.16.840.1.113883.17.3.11.88
\[HL7 EMS PCR\]) value set. The &lt;value&gt; element SHALL be encoded
the in /methodCode concept.

The Glasgow Qualifier SHALL be drawn from the
GlasgowComaScoreSpecialCircumstances (templateID
2.16.840.1.113883.17.3.11.89 \[HL7 EMS PCR\]) value set. The
&lt;value&gt; element SHALL be encoded in the /value concept.

The Stroke Type SHALL be drawn from the Stroke Scale Interpretation
concept domain as defined by local jurisdiction. (e.g., In the US the
value set shall be Stroke (templateID 2.16.840.1.113883.17.3.11.93 \[HL7
EMS PCR\]) Value Set. The &lt;value&gt; element SHALL be encoded the
/methodCode concept.

The Level of Responsiveness SHALL be drawn from the
LevelOfResponsiveness (templateID 2.16.840.1.113883.17.3.11.21 \[HL7 EMS
PCR\]) value set. The &lt;value&gt; element SHALL be encoded the concept
in /value concept.

###### 6.3.1.D1.5.4 Medication Summary Constraints

The following special cases exist for encoding the product medication:

-   In the case that the patient is currently on anticoagulants and no
    medication details are provided for the anticoagulants, the product
    SHALL be coded using {81839001, SNOMED CT, Anticoagulant (product)}.
    The product SHALL be encoded in the Product Entry (templateID
    1.3.6.1.4.1.19376.1.5.3.1.4.7.2 \[PCC TF-2\])
    /manufacturedProduct/manufacturedMaterial/code concept.

-   In the case that the patient is currently on medications, but none
    of the medication details exist and the patient is not on
    anticoagulants, the Medications Section (templateIDs
    2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
    TF-2\]) SHALL be coded using {182904002, SNOMED CT, Drug Treatment
    Unknown}. The &lt;code&gt; element SHALL be encoded in the
    substanceAdminstration/act/code concept.

-   In the case that the patient is currently not on medications, the
    Medications Section (template IDs 2.16.840.1.113883.10.20.1.24 and
    1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC TF-2\]) SHALL be coded using
    {182849000, SNOMED CT, No Drug Therapy Prescribed}. The &lt;code&gt;
    element SHALL be encoded in the substanceAdminstration/act/code
    concept.

The routeCode shall be drawn from the Medication Administration Route
concept domain as defined by local jurisdiction. The &lt;routeCode&gt;
element shall be encoded in the substanceAdminstration (templateID
2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\])/routeCode concept. (e.g., In the US the value set SHALL be drawn
from the EMSLevelOfService – MedicationAdminstrationRoute
2.16.840.1.113883.17.3.11.43 \[HL7 \[HL7 EMS PCR\] value set).

The manufacturedMaterial shall be drawn from the Manufactured Material
concept domain as defined by local jurisdiction. The &lt;code&gt;
element shall be encoded in the substanceAdminstration (templateID
2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\])/consumable/manufacturedProduct/manufacturedMaterial concept
(e.g., In the US the value set shall be drawn from the RxNorm
2.16.840.1.113883.6.88 value set).

###### 6.3.1.D1.5.5 Medications Administered –Constraints

In the case that the medication is not administered, this shall be
reflected in the substanceAdministration (templateID
2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\]). The negationInd SHALL be set to "true", and an
entryRelationship SHALL contain exactly one \[1..1\] @typeCode="RSON"
drawn from the MedicationNotGiven Reason (2.16.840.1.113883.17.3.11.92
\[HL7 EMS PCR\]) value est and encoded in the /value concept.

The routeCode shall be drawn from the Medication Administration Route
concept domain as defined by local jurisdiction. The &lt;routeCode&gt;
Element SHALL be encoded in the substanceAdminstration (templateID
2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\])/routeCode concept (e.g., In the US the value set shall be drawn
from the EMSLevelOfService – MedicationAdminstrationRoute
2.16.840.1.113883.17.3.11.43 \[HL7 EMS PCR\] value set).

The manufacturedMaterial shall be drawn from the Medical Clinical Drug
concept domain as defined by the local jurisdiction. The
&lt;manufacturedMaterial&gt; element SHALL be encoded the in the
substanceAdminstration (templateID 2.16.840.1.113883.10.20.1.24 and
1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\])/consumable/manufacturedProduct/manufactureredMaterial concept
(e.g., In the US the value set shall be drawn from the
MedicationClinicalDrug 2.16.840.1.113883.3.88.12.80.17 \[HL7 EMS PCR\]
value set).

The assignedEntity shall be drawn from the Provider Role concept domain
as defined by local jurisdiction. The &lt;ProviderRole&gt; element SHALL
be encoded in the substanceAdminstration (templateID
2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\])/performer/assignedEntity/code concept (e.g., In the US the value
set shall be drawn from the ProviderRole 2.16.840.1.113883.17.3.11.46
\[HL7 EMS PCR\] value set.).

If a complication is identified as part of the administration of a
medication, the medication complication SHALL be documented in Allergies
and Other Adverse Reaction Section (templateID
1.3.6.1.4.1.19376.1.5.3.1.3.13 \[PCC TF-2\]).

###### 6.3.1.D1.5.7 Vital signs - Physical Examination Constraints 

The physical examination assessment findings SHALL be drawn from the HL7
EMS PCR assessment value sets. The following table provides the mappings
between the HL7 EMS PCR and \[PCC TF-2\] assessment concepts. The
assessment &lt;value&gt; element shall be encoded in the /value concept.

Table 6.3.1.D1.5.7-1: Physical Examination Assessment Concepts

| IHE Assessment Concept       | IHE PCC templateID                 | HL7 EMS PCR Assessment Concept | HL7 EMS PCR Value Set        |
|------------------------------|------------------------------------|--------------------------------|------------------------------|
| Integumentary System         | 1.3.6.1.4.1.19376.1.5.3.1.1.9.17   | Skin                           | 2.16.840.1.113883.17.3.11.25 |
| Head Assessment              | 1.3.6.1.4.1.19376.1.5.3.1.1.9.18   | Head                           | 2.16.840.1.113883.17.3.11.26 |
| Neurologic System            | 1.3.6.1.4.1.19376.1.5.3.1.1.9.35   | Neurological                   | 2.16.840.1.113883.17.3.11.40 |
| Ears, Nose, Mouth and Throat | 1.3.6.1.4.1.19376.1.5.3.1.1.9.20   | Face                           | 2.16.840.1.113883.17.3.11.27 |
| Neck                         | 1.3.6.1.4.1.19376.1.5.3.1.1.9.24   | Neck                           | 2.16.840.1.113883.17.3.11.28 |
| Thorax and Lungs             | 1.3.6.1.4.1.19376.1.5.3.1.1.9.26   | Chest And Lung                 | 2.16.840.1.113883.17.3.11.29 |
| Heart                        | 1.3.6.1.4.1.19376.1.5.3.1.1.9.29   | Heart                          | 2.16.840.1.113883.17.3.11.30 |
| Abdomen                      | 1.3.6.1.4.1.19376.1.5.3.1.1.9.31   | Abdomen                        | 2.16.840.1.113883.17.3.11.32 |
| Genitalia                    | 1.3.6.1.4.1.19376.1.5.3.1.1.9.36   | Pelvic And Genitourinary       | 2.16.840.1.113883.17.3.11.33 |
| Musculoskeletal              | 1.3.6.1.4.1.19376.1.5.3.1.1.9.34   | Back and Spine                 | 2.16.840.1.113883.17.3.11.34 |
| Extremities                  | 1.3.6.1.4.1.19376.1.5.3.1.1.16.2.1 | Extremities                    | 2.16.840.1.113883.17.3.11.36 |
| Eye                          | 1.3.6.1.4.1.19376.1.5.3.1.1.1.9.1  | Eye                            | 2.16.840.1.113883.17.3.11.38 |
| Mental Status Entry          | 1.3.6.1.4.1.19376.1.5.3.1.4.25     | Mental                         | 2.16.840.1.113883.17.3.11.84 |

Additionally, the following target site locations SHALL also be drawn
from the HL7 EMS PCR finding location value sets and mapped into the
\[PCC TF-2\] assessment target site. The target site location
&lt;value&gt; element shall be encoded in the /targetSiteCode/code
concept.

Table 6.3.1.D1.5.7-2: Physical Examination Target Site Locations

| IHE Target Site Concept    | IHE PCC templateID                 | HL7 EMS PCR Finding Location Concept | HL7 EMS PCR Value Set        |
|----------------------------|------------------------------------|--------------------------------------|------------------------------|
| Abdomen target site        | 1.3.6.1.4.1.19376.1.5.3.1.1.9.31   | AbdominalFinding Location            | 2.16.840.1.113883.17.3.11.32 |
| Back and Spine target site | 1.3.6.1.4.1.19376.1.5.3.1.1.9.34   | BackSpineFindingLocation             | 2.16.840.1.113883.17.3.11.35 |
| Extremities                | 1.3.6.1.4.1.19376.1.5.3.1.1.16.2.1 | ExtremityFinding Location            | 2.16.840.1.113883.17.3.11.37 |
| Eye target site            | 1.3.6.1.4.1.19376.1.5.3.1.1.9.1    | EyeFindingLocation                   | 2.16.840.1.113883.17.3.11.39 |

###### 6.3.1.D1.5.9 History of Present Illness Constraint

The Content Creator SHALL create a text entry within the History of
Present Illness Section (templateID 1.3.6.1.4.1.19376.1.5.3.1.3.4 \[PCC
TF-2\]) that contain the narrative description of EMS Patient Care
Report Narrative the EMS encounter.

###### 6.3.1.D1.5.10 Problems 

The EMS Situation Provider’s Primary Impression and Provider’s Secondary
Impression SHALL be documented in the Active Problems Section within the
Active Problems Section (templateID 1.3.6.1.4.1.193796.1.5.3.1.3.1 \[PCC
TF-2\]).

###### 6.3.1.D1.5.11 Allergies and Other Adverse Reaction –Constraints

A complication associated with the EMS administration of a medication
shall be documented as an Allergy and Other Adverse Reaction. The
medication complication SHALL be documented in an Allergy and
Intolerance Concern (templateID 1.3.6.1.4.1.19376.1.5.3.1.4.5.3 \[PCC
TF-2\]). The Allergy and Intolerance Concern SHALL contain exactly one
\[1..1\] code/@code=”67541-3” (Medication complication NEMSIS) and the
&lt;value&gt; element shall be encoded in the /value concept. The value
set SHALL be drawn from the MedicationComplication
(2.16.840.1.113883.17.3.11.45 \[EMS-PCR\]) value set.

#### 6.3.1.D2 Paramedicine Care Summary – Complete Report (PCS-CR) Document Content Module 

The Paramedicine Care Summary – Complete Report document content module
is a Medical Summary and inherits all header constraints from the
International Patient Summary (2.16.840.1.113883.10.22.1.1). This
document is extended in order to create a complete report that the
Paramedicine services provided and can be utilized for quality and
measure reports.

##### 6.3.1.D2.1 Format Code

The XDSDocumentEntry format code for this content is
urn:ihe:pcc:pcs-cr:2018

##### 6.3.1.D2.2 LOINC Code 

The LOINC code for this document 67796-3 ParamedicineCareSummary.

##### 6.3.1.D2.3 Referenced Standards

All standards which reference in this document are listed below with
their common abbreviation, full title, and link to the standard.

Table 6.3.1.D2.3-1: Paramedicine Care Summary – Complete Report Document
– Referenced Standards

|               |                                                                              |                                                                                                 |
|---------------|------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| Abbreviation  | Title                                                                        | URL                                                                                             |
| CDAR2         | HL7 CDA Release 2.0                                                          | <http://www.hl7.org/documentcenter/public/standards/dstu/CDAR2_IG_PROCNOTE_DSTU_R1_2010JUL.zip> |
| HL7 IPS CDA   | HL7 CDA® R2 Implementation Guide International Patient Summary STU Release 1 | <https://www.hl7.org/implement/standards/product_brief.cfm?product_id=483>                      |
| SNOMED CT     | SNOMED International                                                         | <http://www.snomed.org/snomed-ct/get-snomed-ct>                                                 |
| ISO/DIS 27269 | ISO/DIS 27269 Health informatics — The international patient summary         | <https://www.iso.org/standard/79491.html>                                                       |
| HL7 EMS DAM   | HL7 Version 3 Domain Analysis Model, Emergency Medical Services, Release 1   | <http://www.hl7.org/implement/standards/product_brief.cfm?product_id=421>                       |
| HL7 EMS DIM   | HL7 version 3 Domain Information Model; Emergency Model Services, release 1  | <http://www.hl7.org/implement/standards/product_brief.cfm?product_id=302>                       |

##### 6.3.1.D2.4 Data Element Requirement Mappings to CDA

This section identifies the mapping of data between referenced standards
into the CDA implementation guide.

Table 6.3.1.D2.4-1: Paramedicine Care Summary – Complete Report (PCS-CR)
– Data Element Requirement Mappings to CDA

<table>
<thead>
<tr class="header">
<th>PCS Data Elements</th>
<th>CDA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Patient Attributes</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]</td>
</tr>
<tr class="even">
<td>Patient’s name</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/name</td>
</tr>
<tr class="odd">
<td>Address</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/addr</td>
</tr>
<tr class="even">
<td>Telecoms</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/telecom</td>
</tr>
<tr class="odd">
<td>Administrative gender</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/administrativeGenderCode</td>
</tr>
<tr class="even">
<td>Date of birth</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/birthTime</td>
</tr>
<tr class="odd">
<td>Patient’s preferred language</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/languageCommunication/languageCode</td>
</tr>
<tr class="even">
<td>Healthcare related identifiers</td>
<td>see below</td>
</tr>
<tr class="odd">
<td>Patient identifier</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/id</td>
</tr>
<tr class="even">
<td>Insurance information</td>
<td>see below</td>
</tr>
<tr class="odd">
<td>Insurance identifier</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/id</td>
</tr>
<tr class="even">
<td>Patient's Address Book</td>
<td>see below</td>
</tr>
<tr class="odd">
<td>Preferred healthcare providers</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/code</td>
</tr>
<tr class="even">
<td>Healthcare provider (person)</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson</td>
</tr>
<tr class="odd">
<td>Healthcare provider Name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name</td>
</tr>
<tr class="even">
<td>Healthcare provider Role</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/code</td>
</tr>
<tr class="odd">
<td>Healthcare provider Telecoms</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/telecom</td>
</tr>
<tr class="even">
<td>Healthcare provider (organization)</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/scopingOrganization</td>
</tr>
<tr class="odd">
<td>Organization’s name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/scopingOrganization/name</td>
</tr>
<tr class="even">
<td>Organization’s Telecoms</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/telecom</td>
</tr>
<tr class="odd">
<td>Other’s address details</td>
<td>see below</td>
</tr>
<tr class="even">
<td>Addressee</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian</td>
</tr>
<tr class="odd">
<td>Addressee Role</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/code<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian</td>
</tr>
<tr class="even">
<td>Addressee Name</td>
<td><p>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name</p>
<p>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/guardianPerson/name</p></td>
</tr>
<tr class="odd">
<td>Addressee Address</td>
<td><p>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr</p>
<p>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/addr</p></td>
</tr>
<tr class="even">
<td>Addressee Telecoms</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/telecom<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/telecom</td>
</tr>
<tr class="odd">
<td>Advance Directives Section</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]</td>
</tr>
<tr class="even">
<td>Advance Directives</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]</td>
</tr>
<tr class="odd">
<td>Advance Directive</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]<br />
/ClinicalDocument/[IPS Advance Directives Section]</td>
</tr>
<tr class="even">
<td>Person Authorizing Directive</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/participant<br />
/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/author</td>
</tr>
<tr class="odd">
<td>Person Authorizing Name</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/participant/participantRole/playingEntity/name<br />
/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/author/assignedAuthor/assignedPerson/name</td>
</tr>
<tr class="even">
<td>Person Authorizing Role</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/participant/participantRole/code<br />
/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/author/assignedAuthor/code</td>
</tr>
<tr class="odd">
<td>Person Authorizing Telecoms</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/participant/participantRole/telecom<br />
/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/author/assignedAuthor/telecom</td>
</tr>
<tr class="even">
<td>Directive Category</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/code</td>
</tr>
<tr class="odd">
<td>Directive Description</td>
<td><blockquote>
<p>/ClinicalDocument/[IPS Advance Directives Section]/text</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Reference to Legal Document</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]/entry/[IPS Advance Directive Organizer]/component/[IPS Advance Directive Observation]/reference/externalDocument</td>
</tr>
<tr class="odd">
<td>Allergies and Intolerances</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]</td>
</tr>
<tr class="even">
<td>Allergies/Intolerances content status</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/observation/code</td>
</tr>
<tr class="odd">
<td>Allergies and Intolerances</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance description</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/text</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Clinical status</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Allergy Status Observation]/value</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Onset Date</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/observation/effectiveTime/low</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance End Date</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/observation/effectiveTime/high</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Criticality</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Criticality Observation]</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Certainty</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Allergy Certainty Observation]</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Type of propensity</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/observation/code</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Diagnosis</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/value</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Reaction</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Reaction Manifestation]</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Manifestation of the reaction</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Reaction Manifestation]/value</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Severity</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/entryRelationship/[IPS Reaction Manifestation]/entryRelationship/[IPS Severity Observation]</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Agent</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/participant</td>
</tr>
<tr class="odd">
<td>Allergy/Intolerance Agent code</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/participant/participantRole/playingEntity/code</td>
</tr>
<tr class="even">
<td>Allergy/Intolerance Category</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance]/participant/participantRole/playingEntity/code</td>
</tr>
<tr class="odd">
<td>Functional Status Section</td>
<td>/ClinicalDocument/[IPS Functional Status Section]</td>
</tr>
<tr class="even">
<td>Disabilities</td>
<td>/ClinicalDocument/[IPS Functional Status Section]</td>
</tr>
<tr class="odd">
<td>Disability</td>
<td>/ClinicalDocument/[IPS Functional Status Section]</td>
</tr>
<tr class="even">
<td>Disability Description</td>
<td><blockquote>
<p>/ClinicalDocument/[IPS Functional Status Section]/text</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Disability Code</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/observation/value</td>
</tr>
<tr class="even">
<td>Onset Date</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/observation/effectiveTime/low</td>
</tr>
<tr class="odd">
<td>Functional assessments (determines autonomy)</td>
<td>/ClinicalDocument/[IPS Functional Status Section]</td>
</tr>
<tr class="even">
<td>Functional Assessment (type performed)</td>
<td>/ClinicalDocument/[IPS Functional Status Section]</td>
</tr>
<tr class="odd">
<td>Functional Assessment description</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/text</td>
</tr>
<tr class="even">
<td>Date of assessment</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/effectiveTime<br />
/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/component/[IPS Survey Observation]/effectiveTime</td>
</tr>
<tr class="odd">
<td>Functional Assessment Type</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/code<br />
/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/component/[IPS Survey Observation]/code</td>
</tr>
<tr class="even">
<td>Functional Assessment Result</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/component/[IPS Survey Observation]/value</td>
</tr>
<tr class="odd">
<td>Functional Assessment</td>
<td>/ClinicalDocument/[IPS Functional Status Section]/entry/[IPS Survey Panel]/component/[IPS Survey Observation]</td>
</tr>
<tr class="even">
<td>History of Past Problems</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]</td>
</tr>
<tr class="odd">
<td>Past problems</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]</td>
</tr>
<tr class="even">
<td>Past problem</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]</td>
</tr>
<tr class="odd">
<td>Problem type</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/code</td>
</tr>
<tr class="even">
<td>Problem Description</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/text</td>
</tr>
<tr class="odd">
<td>Problem Diagnosis</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/value</td>
</tr>
<tr class="even">
<td>Problem Severity</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/entryRelationship/[IPS Severity Observation]</td>
</tr>
<tr class="odd">
<td>Problem Onset Date</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/effectiveTime/low</td>
</tr>
<tr class="even">
<td>Problem Status</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/entryRelationship/[IPS Problem Status Observation]</td>
</tr>
<tr class="odd">
<td>Date Problem Resolved</td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/effectiveTime/high</td>
</tr>
<tr class="even">
<td>Specialist Contact for problem</td>
<td>Not explicitly specified (see open issues #41)</td>
</tr>
<tr class="odd">
<td>History of Pregnancy Section</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]</td>
</tr>
<tr class="even">
<td>Current pregnancy status</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Status Observation]</td>
</tr>
<tr class="odd">
<td>Pregnancy description</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/text</td>
</tr>
<tr class="even">
<td>Pregnancy details</td>
<td>see below</td>
</tr>
<tr class="odd">
<td>Date of observation</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Status Observation]/effectiveTime</td>
</tr>
<tr class="even">
<td>Pregnancy state</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Status Observation]/value</td>
</tr>
<tr class="odd">
<td>Expected delivery date</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Status Observation]/entryRelationship/[IPS Pregnancy Expected Delivery Date Observation]/value</td>
</tr>
<tr class="even">
<td>Specialist contact</td>
<td>Not explicitly specified (see open issues #41)</td>
</tr>
<tr class="odd">
<td>Previous history of pregnancies</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]</td>
</tr>
<tr class="even">
<td>Previous pregnancies status</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Observation]/value</td>
</tr>
<tr class="odd">
<td>Previous pregnancies<br />
description</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/text</td>
</tr>
<tr class="even">
<td>Previous pregnancies</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Observation]</td>
</tr>
<tr class="odd">
<td>Previous pregnancy details</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Observation]</td>
</tr>
<tr class="even">
<td>Outcome date</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Observation]/effectiveTime</td>
</tr>
<tr class="odd">
<td>Outcome</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Observation]/value</td>
</tr>
<tr class="even">
<td>Specialist contact</td>
<td>Not explicitly specified (see open issues #41)</td>
</tr>
<tr class="odd">
<td>Summary metric</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Outcome Observation]</td>
</tr>
<tr class="even">
<td>History of Procedures</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]</td>
</tr>
<tr class="odd">
<td>Procedures content status</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/code</td>
</tr>
<tr class="even">
<td>Procedures</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]</td>
</tr>
<tr class="odd">
<td>Procedure</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]</td>
</tr>
<tr class="even">
<td>Procedure code</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/code</td>
</tr>
<tr class="odd">
<td>Procedure description</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/text</td>
</tr>
<tr class="even">
<td>Body site</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/targetSiteCode</td>
</tr>
<tr class="odd">
<td>Procedure date</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/effectiveTime</td>
</tr>
<tr class="even">
<td>Immunizations</td>
<td>/ClinicalDocument/[IPS Immunizations Section]</td>
</tr>
<tr class="odd">
<td>Immunizations content status</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/consumable/[IPS Immunization Medication Information]/manufacturedProduct/manufacturedMaterial/code</td>
</tr>
<tr class="even">
<td>Immunizations</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]</td>
</tr>
<tr class="odd">
<td>Immunization</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]</td>
</tr>
<tr class="even">
<td>Vaccine for type of disease</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/consumable/[IPS Immunization Medication Information]/manufacturedProduct/manufacturedMaterial/code</td>
</tr>
<tr class="odd">
<td>Target diseases</td>
<td></td>
</tr>
<tr class="even">
<td>Target disease</td>
<td></td>
</tr>
<tr class="odd">
<td>Date of immunization</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/effectiveTime</td>
</tr>
<tr class="even">
<td>Product administered</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/consumable/[IPS Immunization Medication Information]/manufacturedProduct/manufacturedMaterial/code</td>
</tr>
<tr class="odd">
<td>Brand name</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/consumable/[IPS Immunization Medication Information]/manufacturedProduct/manufacturedMaterial/code</td>
</tr>
<tr class="even">
<td>Product administration process</td>
<td>see below</td>
</tr>
<tr class="odd">
<td>Performer</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/performer</td>
</tr>
<tr class="even">
<td>Route of administration</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/routeCode</td>
</tr>
<tr class="odd">
<td>Medical Devices</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]</td>
</tr>
<tr class="even">
<td>Device content status</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]/participant/participantRole/playingDevice/code</td>
</tr>
<tr class="odd">
<td>Devices</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]</td>
</tr>
<tr class="even">
<td>Device</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]</td>
</tr>
<tr class="odd">
<td>Device type</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]/participant/participantRole/playingDevice/code</td>
</tr>
<tr class="even">
<td>Device identifier</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]/participant/participantRole/id</td>
</tr>
<tr class="odd">
<td>Use start date</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]/effectiveTime/low</td>
</tr>
<tr class="even">
<td>Use end date</td>
<td>/ClinicalDocument/[IPS Medical Devices Section]/entry/[IPS Medical Device]/effectiveTime/high</td>
</tr>
<tr class="odd">
<td>Medication Summary</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]</td>
</tr>
<tr class="even">
<td>Medication summary content status</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/code</td>
</tr>
<tr class="odd">
<td>Medications</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]</td>
</tr>
<tr class="even">
<td>Medication</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]</td>
</tr>
<tr class="odd">
<td>Reason</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[Indication (V2)]</td>
</tr>
<tr class="even">
<td>Medicinal product</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]</td>
</tr>
<tr class="odd">
<td>Product code</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/code</td>
</tr>
<tr class="even">
<td>Product common name (and strength)</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/asSpecializedKind/name</td>
</tr>
<tr class="odd">
<td>Pharmaceutical dose form</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/formCode</td>
</tr>
<tr class="even">
<td>Brand name</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/asContent/containerPackagedProduct/name</td>
</tr>
<tr class="odd">
<td>Active ingredients</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/ingredient</td>
</tr>
<tr class="even">
<td>Active ingredient</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/ingredient</td>
</tr>
<tr class="odd">
<td>Substance code</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/ingredient/ingredientSubstance/code</td>
</tr>
<tr class="even">
<td>Strength</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/consumable/[IPS Medication Information]/manufacturedMaterial/ingredient/quantity</td>
</tr>
<tr class="odd">
<td>Administration instruction</td>
<td>see below</td>
</tr>
<tr class="even">
<td>Instruction</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/text</td>
</tr>
<tr class="odd">
<td>Period of medication use</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/[UV Use Period]</td>
</tr>
<tr class="even">
<td>Route of administration</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/routeCode</td>
</tr>
<tr class="odd">
<td>Dose instruction</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[IPS Subordinate SubstanceAdministration]</td>
</tr>
<tr class="even">
<td>No. of units per intake</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[IPS Subordinate SubstanceAdministration]/doseQuantity</td>
</tr>
<tr class="odd">
<td>Frequency of intake</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[IPS Subordinate SubstanceAdministration]/effectiveTime</td>
</tr>
<tr class="even">
<td>Plan of Care</td>
<td>/ClinicalDocument/[IPS Plan of Care Section]</td>
</tr>
<tr class="odd">
<td>Plans</td>
<td>/ClinicalDocument/[IPS Plan of Care Section]</td>
</tr>
<tr class="even">
<td>Plan</td>
<td>/ClinicalDocument/[IPS Plan of Care Section]</td>
</tr>
<tr class="odd">
<td>Plan type</td>
<td>Not explicitly specified</td>
</tr>
<tr class="even">
<td>Plan date</td>
<td>Not explicitly specified</td>
</tr>
<tr class="odd">
<td>Plan description</td>
<td>/ClinicalDocument/[IPS Plan of Care Section].text</td>
</tr>
<tr class="even">
<td>Recommendations (Core Care Plan)</td>
<td>/ClinicalDocument/[IPS Plan of Care Section]/entry</td>
</tr>
<tr class="odd">
<td>Recommendation</td>
<td>/ClinicalDocument/[IPS Plan of Care Section]/entry/[…] (several templates)</td>
</tr>
<tr class="even">
<td>Recommendation for treatment</td>
<td>depends on the template used</td>
</tr>
<tr class="odd">
<td>Given recommendation date</td>
<td>depends on the template used</td>
</tr>
<tr class="even">
<td>Applicable date</td>
<td>depends on the template used</td>
</tr>
<tr class="odd">
<td>Extensive Plan</td>
<td>Not explicitly specified</td>
</tr>
<tr class="even">
<td>Problems</td>
<td>/ClinicalDocument/[IPS Problems Section]</td>
</tr>
<tr class="odd">
<td>Problems content status</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/code</td>
</tr>
<tr class="even">
<td>Problems</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]</td>
</tr>
<tr class="odd">
<td>Problem</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]</td>
</tr>
<tr class="even">
<td>Problem type</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/code</td>
</tr>
<tr class="odd">
<td>Problem description</td>
<td>/ClinicalDocument/[IPS Problems Section]/text</td>
</tr>
<tr class="even">
<td>Diagnosis</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/value</td>
</tr>
<tr class="odd">
<td>Severity</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/entryRelationship/[IPS Severity Observation]/value</td>
</tr>
<tr class="even">
<td>Onset date</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/effectiveTime/low</td>
</tr>
<tr class="odd">
<td>Problem status</td>
<td>/ClinicalDocument/[IPS Problems Section]/entry/[IPS Problem Concern Entry]/entryRelationship/[IPS Problem Entry]/entryRelationship/[IPS Problem Status Observation]/value</td>
</tr>
<tr class="even">
<td>Specialist contact</td>
<td>Not explicitly specified (see open issues #41)</td>
</tr>
<tr class="odd">
<td>Results</td>
<td>/ClinicalDocument/[IPS Results Section]</td>
</tr>
<tr class="even">
<td>Observation results</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/[…] (several observation templates)</td>
</tr>
<tr class="odd">
<td>Observation result</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/[…] (several observation templates)</td>
</tr>
<tr class="even">
<td>Date of observation</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/effectiveTime<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/effectiveTime</td>
</tr>
<tr class="odd">
<td>Observation type</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/code<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/code</td>
</tr>
<tr class="even">
<td>Result description</td>
<td>/ClinicalDocument/[IPS Results Section]/text</td>
</tr>
<tr class="odd">
<td>Value</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/value</td>
</tr>
<tr class="even">
<td>Observation result</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation</td>
</tr>
<tr class="odd">
<td>Performer</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/performer<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/performer</td>
</tr>
<tr class="even">
<td>Observer</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/author</td>
</tr>
<tr class="odd">
<td>Social History</td>
<td>/ClinicalDocument/[IPS Social History Section]</td>
</tr>
<tr class="even">
<td>Life style factors</td>
<td>/ClinicalDocument/[IPS Social History Section]/entry</td>
</tr>
<tr class="odd">
<td>Life style factor</td>
<td>/ClinicalDocument/[IPS Social History Section]/entry/[…] (several observation templates)</td>
</tr>
<tr class="even">
<td>Life style factor description</td>
<td>/ClinicalDocument/[IPS Social History Section]/text</td>
</tr>
<tr class="odd">
<td>Life style factor details</td>
<td>/ClinicalDocument/[IPS Social History Section]/entry/observation/value</td>
</tr>
<tr class="even">
<td>Reference date range</td>
<td>/ClinicalDocument/[IPS Social History Section]/entry/observation/effectiveTime</td>
</tr>
<tr class="odd">
<td>Vital Signs</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]</td>
</tr>
<tr class="even">
<td>Vital signs</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]</td>
</tr>
<tr class="odd">
<td>Vital sign</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]</td>
</tr>
<tr class="even">
<td>Date of observation</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/effectiveTime</td>
</tr>
<tr class="odd">
<td>Observation type</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code</td>
</tr>
<tr class="even">
<td>Result description</td>
<td>/ClinicalDocument/[IPS Vital Signs Section].text</td>
</tr>
<tr class="odd">
<td>Value</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Vital sign</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]</td>
</tr>
<tr class="odd">
<td>Physician Certification Statement</td>
<td>Reason for Referral</td>
</tr>
<tr class="even">
<td>Date Physician Certification Statement Signed</td>
<td>Reason for Referral</td>
</tr>
<tr class="odd">
<td>Reason for Physician Certification Statement</td>
<td>Coded Reason for Referral</td>
</tr>
<tr class="even">
<td>Healthcare Provider Type Signing Physician Certification Statement</td>
<td>Reason for Referral</td>
</tr>
<tr class="odd">
<td>Last Name of Individual Signing Physician Certification Statement</td>
<td>Reason for Referral</td>
</tr>
<tr class="even">
<td>First Name of Individual Signing Physician Certification Statement</td>
<td>Reason for Referral</td>
</tr>
</tbody>
</table>

##### 6.3.1.D2.5 Paramedicine Care Summary – Complete Report (PCS-CR) Document Content Module Specification

This section specifies the header, section, and entry content modules
which comprise the Paramedicine Care Summary – Complete Report (PCS-CR)
Document Content Module, using the 1.3.6.1.4.1.19376.1.5.3.1.1.30.1 as
the key identifier.

Sections that are used according to the definitions in other
specifications are identified with the relevant specification document.
Additional constraints on vocabulary value sets, not specifically
constrained within the section template, are also identified.

Note: The only header items that are mentioned are the items that are
constrained.

Table 6.3.1.D2.5-1: Paramedicine Care Summary – Complete Report (PCS-CR)
Document Content Module Specification

<table>
<tbody>
<tr class="odd">
<td>Template Name</td>
<td>Paramedicine Care Summary – Complete Report (PCS-CR)</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Template ID</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.30.1</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Parent Template</td>
<td>International Patient Summary (2.16.840.1.113883.10.22.1.1).</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>General Description</td>
<td>The Paramedicine Care Summary will contain the patient’s paramedicine care information and interventions.</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Document Code</td>
<td>SHALL BE 67796-3 EMS patient care report Code System LOINC (CodeSystem: 2.16.840.1.113883.6.1 LOINC), “ParamedicineCareSummary”</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Opt and Card</td>
<td>Condition</td>
<td>Header Element or Section Name</td>
<td>Template ID</td>
<td>Specification Document</td>
<td>Vocabulary Constraint</td>
</tr>
<tr class="odd">
<td>Header Elements</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>R</p>
<p>[1..*]</p></td>
<td></td>
<td>author</td>
<td>2.16.840.1.113883.10.22.2.2</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>custodian</td>
<td>2.16.840.1.113883.10.22.2.3</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>documentationOf</td>
<td>2.16.840.1.113883.10.22.2.6</td>
<td>HL7 IPS CDA</td>
<td>6.3.2.H.7</td>
</tr>
<tr class="odd">
<td><p>RE</p>
<p>[0..1]</p></td>
<td></td>
<td>legalAuthenticator</td>
<td>2.16.840.1.113883.10.22.2.4</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>recordTarget</td>
<td>2.16.840.1.113883.10.22.2.1</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td><p>RE</p>
<p>[0..*]</p></td>
<td></td>
<td>relatedDocument</td>
<td>2.16.840.1.113883.10.22.2.7</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td><p>RE</p>
<p>[0..*]</p></td>
<td></td>
<td>IPS Patient Contacts</td>
<td>2.16.840.1.113883.10.22.2.5</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td><p>RE</p>
<p>[0..*]]</p></td>
<td></td>
<td>IPS CDA Organization</td>
<td>2.16.840.1.113883.10.22.9.1</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td><p>O</p>
<p>[0..1]</p></td>
<td></td>
<td>Personal Information: Race</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.1</td>
<td>PCC TF-2: 6.3.1.1</td>
<td>6.3.2.H.3</td>
</tr>
<tr class="odd">
<td><p>O</p>
<p>[0..1]</p></td>
<td></td>
<td>Personal Information: Ethnicity</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.1</td>
<td>PCC TF-2: 6.3.1.1</td>
<td>6.3.2.H.1</td>
</tr>
<tr class="even">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>IPS CDA Person</td>
<td>2.16.840.1.113883.10.22.9.3</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td><p>R</p>
<p>[1..*]</p></td>
<td></td>
<td>author</td>
<td>2.16.840.1.113883.10.22.2.2</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>custodian</td>
<td>2.16.840.1.113883.10.22.2.3</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>documentationOf</td>
<td>2.16.840.1.113883.10.22.2.6</td>
<td>HL7 IPS CDA</td>
<td>6.3.2.H.7</td>
</tr>
<tr class="even">
<td><p>RE</p>
<p>[0..1]</p></td>
<td></td>
<td>legalAuthenticator</td>
<td>2.16.840.1.113883.10.22.2.4</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td><p>R</p>
<p>[1..1]</p></td>
<td></td>
<td>recordTarget</td>
<td>2.16.840.1.113883.10.22.2.1</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td>Sections</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>RE [0..1]</td>
<td></td>
<td>IPS Advance Directives</td>
<td>2.16.840.1.113883.10.22.3.12</td>
<td>HL7 IPS CDA</td>
<td>6.3.D2.5.1</td>
</tr>
<tr class="even">
<td>R [1..1]</td>
<td></td>
<td>IPS Allergies and Intolerances</td>
<td>2.16.840.1.113883.10.22.3.2</td>
<td>HL7 IPS CDA</td>
<td><p>6.3.D2.5.2</p>
<p>6.3.D2.5.12</p></td>
</tr>
<tr class="odd">
<td>R [1..1]</td>
<td></td>
<td>IPS Medication Summary</td>
<td>2.16.840.1.113883.10.22.3.1</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td>O [0..1]</td>
<td></td>
<td>Medications Administered Section</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.3.21</td>
<td>PCC TF-2: 6.3.3.3.3, 6.3.3.2.11</td>
<td>6.3.D2.5.5</td>
</tr>
<tr class="odd">
<td>RE [0..1]</td>
<td></td>
<td>IPS History of Past Illness</td>
<td>2.16.840.1.113883.10.22.3.7</td>
<td>HL7 IPS CDA</td>
<td>6.3.D2.5.10</td>
</tr>
<tr class="even">
<td>RE [1..N]</td>
<td></td>
<td>IPS Functional Status</td>
<td>2.16.840.1.113883.10.22.3.8</td>
<td>HL7 IPS CDA</td>
<td>6.3.D2.5.8</td>
</tr>
<tr class="odd">
<td>RE [0..1]</td>
<td></td>
<td>IPS History of Procedures</td>
<td>2.16.840.1.113883.10.22.3.4</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td>O [0..1]</td>
<td></td>
<td>IPS Immunizations</td>
<td>2.16.840.1.113883.10.22.3.5</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="odd">
<td>O [0..1]</td>
<td></td>
<td>IPS Medical Devices</td>
<td>2.16.840.1.113883.10.22.3.6</td>
<td>HL7 IPS CDA</td>
<td>,</td>
</tr>
<tr class="even">
<td>R [1..1]</td>
<td></td>
<td>IPS Problems</td>
<td>2.16.840.1.113883.10.22.3.3</td>
<td>HL7 IPS CDA</td>
<td>6.3.D2.5.11</td>
</tr>
<tr class="odd">
<td>O [0..1]</td>
<td></td>
<td>IPS Results</td>
<td>2.16.840.1.113883.10.22.3.14</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td>RE [0..*]</td>
<td></td>
<td>IPS Vital Signs</td>
<td>2.16.840.113883.10.22.4.44</td>
<td>HL7 IPS CDA</td>
<td><p>6.3.D2.5.4</p>
<p>6.3.1.D2.5.8</p></td>
</tr>
<tr class="odd">
<td>RE [0..1]</td>
<td></td>
<td>IPS History of Pregnancy</td>
<td>2.16.840.1.113883.10.22.3.11</td>
<td>HL7 IPS CDA</td>
<td></td>
</tr>
<tr class="even">
<td>O[0..1]</td>
<td></td>
<td>Payor</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.5.3.7</td>
<td>PCC TF-2: 6.3.3.7.1</td>
<td>6.3.D2.5.3</td>
</tr>
<tr class="odd">
<td>RE [0..1]</td>
<td></td>
<td>Cause of Injury</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>R [1..1]</td>
<td></td>
<td>Chief Complaint</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>R [1..1]</td>
<td></td>
<td>Impressions</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>RE [0..1]</td>
<td></td>
<td>Triage note</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.13.1.1</td>
<td></td>
<td>6.3.1.D2.5.13</td>
</tr>
<tr class="odd">
<td>RE [1..1]</td>
<td></td>
<td>EMS Protocol Section</td>
<td>2.16.840.1.113883.17.3.10.1.7</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="even">
<td><strong>R [1..1]</strong></td>
<td></td>
<td>Paramedicine Note</td>
<td>xxxxxx</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>R [1..1]</td>
<td></td>
<td>EMS Response Section</td>
<td>2.16.840.1.113883.17.3.10.1.3</td>
<td>HL7 EMS Run Report R2</td>
<td>6.3.D2.5.9</td>
</tr>
<tr class="even">
<td>RE [0..1]</td>
<td></td>
<td>EMS Times Section</td>
<td>2.16.840.1.113883.17.3.10.1.10</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
</tbody>
</table>

###### 6.3.1.D2.5.1 Advance Directives Observation Constraints

The Advance Directive Type shall be drawn from the Advance Directive
Type concept domain as defined by local jurisdiction. The &lt;value&gt;
element shall be encoded in the /value concept (e.g., In the US the
value shall be drawn from the AdvanceDirectiveType -
2.16.840.1.113883.17.3.11.63 \[HL7 EMS PCR\] value set.).

###### 6.3.1.D2.5.2 Allergy and Intolerance Concern Constraint

The Drug Allergies allergen SHOULD be drawn from the RxNorm coding
system 2.16.840.1.113883.6.88 unless otherwise specified by local
jurisdiction. The &lt;value&gt; element SHALL be encoded in the
participant/participantRole/playingEntity/code concept.

The Non-Drug Allergies allergen SHALL be drawn from the SNOMED CT coding
system. The &lt;value&gt; element SHALL be encoded in the
participant/participantRole/playingEntity/code concept.

In the case that the existence of the drug or non-drug allergy is known,
but not the substance type, the allergen SHALL be coded using {6497000,
SNOMED CT, Substance Type Unknown}. The &lt;value&gt; element SHALL be
encoded in the participant/participantRole/playingEntity/code concept.

In the case that there are no known drug allergies the allergen SHALL be
coded using {409137002, SNOMED CT, No Known Drug Allergies}. The
&lt;value&gt; element SHALL be encoded in
participant/participantRole/playingEntity/code concept.

###### 6.3.1.D2.5.4 Vital Signs Section – Vital Signs Observation Constraints

The following additional vital sign observation entries SHALL be
supported using the LOINC codes, with the specified data types and unit.
The Coded Vital Signs Section SHALL include one or more Vital Signs
Observation (templateID 1.3.6.1.4.1.19376.1.5.3.1.4.13.2 \[PCC TF-2\]).

| LOINC    | Description                                  | Units    | Type |
|----------|----------------------------------------------|----------|------|
| 8478-0   | MEAN ARTERIAL PRESSURE                       | mm\[Hg\] | PQ   |
| 19889-5  | END TITLE CARBON DIOXIDE (ETCO2)             | %        | PQ   |
| 20563-3  | CARBON MONOXIDE (CO)                         | %        | PQ   |
| 2339-0   | BLOOD GLUCOSE LEVEL                          | mg/dl    | PQ   |
| 9267-6   | GLASGOW COMA SCORE-EYE                       | n/a      | PQ   |
| 9268-4   | GLASGOW MOTOR                                | n/a      | PQ   |
| 9270-0   | GLASGOW COMA SCORE.VERBAL                    | n/a      | PQ   |
| 9269-2   | TOTAL GLASGOW COMA SCORE                     | n/a      | PQ   |
| 9267-6   | GLASCOW QUALIFIER                            | n/a      | PQ   |
| 38208-5  | PAIN SCALE SCORE                             | n/a      | PQ   |
| 80316-3  | PAIN SCALE TYPE                              | n/a      | PQ   |
| 72089-6  | STROKE SCALE SCORE                           | n/a      | PQ   |
| 67521-5  | STROKE SCALE TYPE                            | n/a      | PQ   |
| 48334-7  | APGAR 1 MINUTE                               | n/a      | PQ   |
| 48333-9  | APGAR 5 MINUTE                               | n/a      | PQ   |
| 48332-1  | APGAR 10 MINUTE                              | n/a      | PQ   |
| 80341-1  | RESPIRATORY EFFORT                           | n/a      | PQ   |
| 11454-6  | RESPONSIVENESS ASSESSMENT AT FIRST ENCOUNTER | n/a      | PQ   |

In addition, the following attributes will be supported for the
additional LOINC definitions:

The Method of Measurement SHALL be included in the Vital Signs
Observation for the following vital signs:

-   Systolic Blood Pressure

-   Diastolic Blood Pressure

-   Mean Arterial Pressure

-   Temperature

-   Stroke Score

-   and Heart Rate (if LOINC /value 8886-4 is designated).

The &lt;methodCode&gt;element SHALL be encoded in the /methodCode
concept.

The Stroke Scale Type SHALL be drawn from the StrokeScale concept domain
as defined by local jurisdiction. (e.g., In the US the value set SHALL
be drawn from the StrokeScale (templateID 2.16.840.1.113883.17.3.11.88
\[HL7 EMS PCR\]) value set. The &lt;value&gt; element SHALL be encoded
the in /methodCode concept.

The Glasgow Qualifier SHALL be drawn from the
GlasgowComaScoreSpecialCircumstances (templateID
2.16.840.1.113883.17.3.11.89 \[HL7 EMS PCR\]) value set. The
&lt;value&gt; element SHALL be encoded in the /value concept.

The Stroke Type SHALL be drawn from the Stroke Scale Interpretation
concept domain as defined by local jurisdiction. (e.g., In the US the
value set shall be Stroke (templateID 2.16.840.1.113883.17.3.11.93 \[HL7
EMS PCR\]) Value Set. The &lt;value&gt; element SHALL be encoded the
/methodCode concept.

The Level of Responsiveness SHALL be drawn from the
LevelOfResponsiveness (templateID 2.16.840.1.113883.17.3.11.21 \[HL7 EMS
PCR\]) value set. The &lt;value&gt; element SHALL be encoded the concept
in /value concept.

###### 6.3.1.D2.5.5 Current Medications –Constraints

The following special cases exist for encoding the product medication:

-   In the case that the patient is currently on anticoagulants and no
    medication details are provided for the anticoagulants, the product
    SHALL be coded using {81839001, SNOMED CT, Anticoagulant (product)}.
    The product SHALL be encoded in the Product Entry (templateID
    1.3.6.1.4.1.19376.1.5.3.1.4.7.2\[PCC TF-2\])
    /manufacturedProduct/manufacturedMaterial/code concept.

-   In the case that the patient is currently on medications, but none
    of the medication details exist and the patient is not on
    anticoagulants, the Medications Section (templateIDs
    2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
    TF-2\]) SHALL be coded using {182904002, SNOMED CT, Drug Treatment
    Unknown}. The &lt;code&gt; element SHALL be encoded in the
    substanceAdminstration/act/code concept.

-   In the case that the patient is currently not on medications, the
    Medications Section (template IDs 2.16.840.1.113883.10.20.1.24 and
    1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC TF-2\]) SHALL be coded using
    {182849000, SNOMED CT, No Drug Therapy Prescribed}. The &lt;code&gt;
    element SHALL be encoded in the substanceAdminstration/act/code
    concept.

The routeCode shall be drawn from the Medication Administration Route
concept domain as defined by local jurisdiction. The &lt;routeCode&gt;
element shall be encoded in the substanceAdminstration (templateID
2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\])/routeCode concept. (e.g., In the US the value set SHALL be drawn
from the EMSLevelOfService – MedicationAdminstrationRoute
2.16.840.1.113883.17.3.11.43 \[HL7 \[HL7 EMS PCR\] value set).

The manufacturedMaterial shall be drawn from the Manufactured Material
concept domain as defined by local jurisdiction. The &lt;code&gt;
element shall be encoded in the substanceAdminstration (templateID
2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\])/consumable/manufacturedProduct/manufacturedMaterial concept
(e.g., In the US the value set shall be drawn from the RxNorm
2.16.840.1.113883.6.88 value set).

###### 6.3.1.D2.5.6 Medications Administered –Constraints

In the case that the medication is not administered, this shall be
reflected in the substanceAdministration (templateID
2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\]). The negationInd SHALL be set to "true", and an
entryRelationship SHALL contain exactly one \[1..1\] @typeCode="RSON"
drawn from the MedicationNotGiven Reason (2.16.840.1.113883.17.3.11.92
\[HL7 EMS PCR\]) value est and encoded in the /value concept.

The routeCode shall be drawn from the Medication Administration Route
concept domain as defined by local jurisdiction. The &lt;routeCode&gt;
Element SHALL be encoded in the substanceAdminstration (templateID
2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\])/routeCode concept (e.g., In the US the value set shall be drawn
from the EMSLevelOfService – MedicationAdminstrationRoute
2.16.840.1.113883.17.3.11.43 \[HL7 EMS PCR\] value set).

The manufacturedMaterial shall be drawn from the Medical Clinical Drug
concept domain as defined by the local jurisdiction. The
&lt;manufacturedMaterial&gt; element SHALL be encoded the in the
substanceAdminstration (templateID 2.16.840.1.113883.10.20.1.24 and
1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\])/consumable/manufacturedProduct/manufactureredMaterial concept
(e.g., In the US the value set shall be drawn from the
MedicationClinicalDrug 2.16.840.1.113883.3.88.12.80.17 \[HL7 EMS PCR\]
value set).

The assignedEntity shall be drawn from the Provider Role concept domain
as defined by local jurisdiction. The &lt;ProviderRole&gt; element SHALL
be encoded in the substanceAdminstration (templateID
2.16.840.1.113883.10.20.1.24 and 1.3.6.1.4.1.19376.1.5.3.1.4.7 \[PCC
TF-2\])/performer/assignedEntity/code concept (e.g., In the US the value
set shall be drawn from the ProviderRole 2.16.840.1.113883.17.3.11.46
\[HL7 EMS PCR\] value set.).

If a complication is identified as part of the administration of a
medication, the medication complication SHALL be documented in Allergies
and Other Adverse Reaction Section (templateID
1.3.6.1.4.1.19376.1.5.3.1.3.13 \[PCC TF-2\]).

###### 6.3.1.D2.5.8 Vital Signs - Physical Examination Entries Constraints 

The physical examination assessment findings SHALL be drawn from the HL7
EMS PCR assessment value sets. The following table provides the mappings
between the HL7 EMS PCR and \[PCC TF-2\] assessment concepts. The
assessment &lt;value&gt; element shall be encoded in the /value concept.

Table 6.3.1.D2.5.8-1: Physical Examination Assessment Concepts

| IHE Assessment Concept       | IHE PCC templateID                 | HL7 EMS PCR Assessment Concept | HL7 EMS PCR Value Set        |
|------------------------------|------------------------------------|--------------------------------|------------------------------|
| Integumentary System         | 1.3.6.1.4.1.19376.1.5.3.1.1.9.17   | Skin                           | 2.16.840.1.113883.17.3.11.25 |
| Head Assessment              | 1.3.6.1.4.1.19376.1.5.3.1.1.9.18   | Head                           | 2.16.840.1.113883.17.3.11.26 |
| Neurologic System            | 1.3.6.1.4.1.19376.1.5.3.1.1.9.35   | Neurological                   | 2.16.840.1.113883.17.3.11.40 |
| Ears, Nose, Mouth and Throat | 1.3.6.1.4.1.19376.1.5.3.1.1.9.20   | Face                           | 2.16.840.1.113883.17.3.11.27 |
| Neck                         | 1.3.6.1.4.1.19376.1.5.3.1.1.9.24   | Neck                           | 2.16.840.1.113883.17.3.11.28 |
| Thorax and Lungs             | 1.3.6.1.4.1.19376.1.5.3.1.1.9.26   | Chest And Lung                 | 2.16.840.1.113883.17.3.11.29 |
| Heart                        | 1.3.6.1.4.1.19376.1.5.3.1.1.9.29   | Heart                          | 2.16.840.1.113883.17.3.11.30 |
| Abdomen                      | 1.3.6.1.4.1.19376.1.5.3.1.1.9.31   | Abdomen                        | 2.16.840.1.113883.17.3.11.32 |
| Genitalia                    | 1.3.6.1.4.1.19376.1.5.3.1.1.9.36   | Pelvic And Genitourinary       | 2.16.840.1.113883.17.3.11.33 |
| Musculoskeletal              | 1.3.6.1.4.1.19376.1.5.3.1.1.9.34   | Back and Spine                 | 2.16.840.1.113883.17.3.11.34 |
| Extremities                  | 1.3.6.1.4.1.19376.1.5.3.1.1.16.2.1 | Extremities                    | 2.16.840.1.113883.17.3.11.36 |
| Eye                          | 1.3.6.1.4.1.19376.1.5.3.1.1.1.9.1  | Eye                            | 2.16.840.1.113883.17.3.11.38 |
| Mental Status Entry          | 1.3.6.1.4.1.19376.1.5.3.1.4.25     | Mental                         | 2.16.840.1.113883.17.3.11.84 |

Additionally, the following target site locations SHALL also be drawn
from the HL7 EMS PCR finding location value sets and mapped into the
\[PCCTF-2\] assessment target site. The target site location
&lt;value&gt; element shall be encoded in the /targetSiteCode/code
concept.

Table 6.3.1.D2.5.8-2: Physical Examination Target Site Locations

| IHE Target Site Concept    | IHE PCC templateID                 | HL7 EMS PCR Finding Location Concept | HL7 EMS PCR Value Set        |
|----------------------------|------------------------------------|--------------------------------------|------------------------------|
| Abdomen target site        | 1.3.6.1.4.1.19376.1.5.3.1.1.9.31   | AbdominalFinding Location            | 2.16.840.1.113883.17.3.11.32 |
| Back and Spine target site | 1.3.6.1.4.1.19376.1.5.3.1.1.9.34   | BackSpineFindingLocation             | 2.16.840.1.113883.17.3.11.35 |
| Extremities                | 1.3.6.1.4.1.19376.1.5.3.1.1.16.2.1 | ExtremityFinding Location            | 2.16.840.1.113883.17.3.11.37 |
| Eye target site            | 1.3.6.1.4.1.19376.1.5.3.1.1.9.1    | EyeFindingLocation                   | 2.16.840.1.113883.17.3.11.39 |

###### 6.3.1.D2.5.10 History of Present Illness Constraint

The Content Creator SHALL create a text entry within the History of
Present Illness Section (templateID 1.3.6.1.4.1.19376.1.5.3.1.3.4 \[PCC
TF-2\]) that contain the narrative description of EMS Patient Care
Report Narrative the EMS encounter.

###### 6.3.1.D2.5.11 Problems Constraint 

The EMS Situation Provider’s Primary Impression and Provider’s Secondary
Impression SHALL be documented in the Active Problems Section within the
Active Problems Section (templateID 1.3.6.1.4.1.193796.1.5.3.1.3.1 \[PCC
TF-2\]).

###### 6.3.1.D2.5.12 Allergies and Other Adverse Reaction –Constraints

A complication associated with the EMS administration of a medication
shall be documented as an Allergy and Other Adverse Reaction. The
medication complication SHALL be documented in an Allergy and
Intolerance Concern (templateID 1.3.6.1.4.1.19376.1.5.3.1.4.5.3 \[PCC
TF-2\]). The Allergy and Intolerance Concern SHALL contain exactly one
\[1..1\] code/@code=”67541-3” (Medication complication NEMSIS) and the
&lt;value&gt; element shall be encoded in the /value concept. The value
set SHALL be drawn from the MedicationComplication
(2.16.840.1.113883.17.3.11.45 \[EMS-PCR\]) value set.

###### 6.3.1.D2.5.13 EMS Injury Incident Description Section

The Trauma Center Criteria value shall be drawn from the Trauma Center
Criteria concept domain as defined by local jurisdiction. The
&lt;value&gt; element shall be eEncoded in the concept in the /value
concept (e.g., in the US the value set shall be drawn from the
TraumaCenterCriteria 2.16.840.1.113883.17.3.11.3 \[HL7 EMS PCR\] value
set.).

##### 6.3.1.D2.6 PCS Conformance and Example

CDA Release 2.0 documents that conform to the requirements of this
document content module shall indicate their conformance by the
inclusion of the &lt;templateId&gt; XML elements in the header of the
document.

A CDA Document may conform to more than one template. This content
module inherits from the Medical Summary 1.3.6.1.4.1.19376.1.5.3.1.1.2
and so must conform to the requirements of those templates as well this
document specification, PCS-CR 1.3.6.1.4.1.19376.1.5.3.1.1.29.1 PCS
*templateID*.

Note that this is an example and is meant to be informative and not
normative. This example shows the PCS-CR
1.3.6.1.4.1.19376.1.5.3.1.1.29.1 elements for all of the specified
templates.

### 6.3.2 CDA Header Content Modules

#### 6.3.2.H CDA Header Content Module 

##### 6.3.2.H.1 Ethnicity Vocabulary Constraints

Collection of Ethnicity information may be restricted by some
jurisdictions as constrained by national extension. When used, ethnicity
SHALL use values from the Ethnicity concept domain as specified by
jurisdiction.

##### 6.3.2.H.3 Race Vocabulary Constraint

Collection of Race information may be restricted by some jurisdictions
as constrained by national extension. When used, race SHALL use values
from the Race concept domain as specified by jurisdiction.

##### 6.3.2.H.7 documentationOf Vocabulary Constraint

The serviceEvent may be restricted by jurisdictions as constrained by
national extension. The documentationOf/serviceEvent/code SHALL use
values from the ServiceType concept domain as specified by jurisdiction.

The serviceEvent performer may be restricted by jurisdictions as
constrained by national extension. The
documentationOf/serviceEvent/performer/functionCode/code SHALL use
values from the ProviderResponseRole concept domain as specified by
jurisdiction.

The serviceEvent performer assignedEntity may be restricted by
jurisdictions as constrained by national extension. The
documentationOf/serviceEvent/performer/assignedEntity/code SHALL use
values from the CrewRoleLevel concept domain as specified by
jurisdiction.

### 6.3.3 CDA Section Content Modules

##### 6.3.3.4.30 Coded Detailed Physical Examination Section 1.3.6.1.4.1.19376.1.5.3.1.1.9.15.1

<table>
<tbody>
<tr class="odd">
<td>Template ID</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.15.1</td>
<td></td>
</tr>
<tr class="even">
<td>Parent Template</td>
<td>Detailed Physical Examination (1.3.6.1.4.1.19376.1.5.3.1.1.9.15)</td>
<td></td>
</tr>
<tr class="odd">
<td>General Description</td>
<td>The Coded Detailed Physical Examination section shall contain a narrative description of the patient’s physical findings. It shall include subsections, if known, for the exams that are performed.</td>
<td></td>
</tr>
<tr class="even">
<td>LOINC Code</td>
<td>Opt</td>
<td>Description</td>
</tr>
<tr class="odd">
<td>29545-1</td>
<td>R</td>
<td>PHYSICAL EXAMINATION</td>
</tr>
<tr class="even">
<td>Subsections</td>
<td>Opt</td>
<td>Description</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2</td>
<td>R2</td>
<td><p>Coded Vital Signs</p>
<p>Vital signs may be a subsection of the physical examination or they may</p>
<p>stand alone.</p></td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.16</td>
<td>R2</td>
<td>General Appearance</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.48</td>
<td>R2</td>
<td>Visible Implanted Medical Devices</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.17</td>
<td>R2</td>
<td>Integumentary System</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.18</td>
<td>R2</td>
<td>Head</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.19</td>
<td>R2</td>
<td>Eyes</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.20</td>
<td>R2</td>
<td>Ears, Nose, Mouth and Throat</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.21</td>
<td>R2</td>
<td>Ears</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.22</td>
<td>R2</td>
<td>Nose</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.23</td>
<td>R2</td>
<td>Mouth, Throat, and Teeth</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.24</td>
<td>R2</td>
<td>Neck</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.25</td>
<td>R2</td>
<td>Endocrine System</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.26</td>
<td>R2</td>
<td>M Thorax and Lungs</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.27</td>
<td>R2</td>
<td>Chest Wall</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.28</td>
<td>R2</td>
<td>Breasts</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.29</td>
<td>R2</td>
<td>Heart</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.30</td>
<td>R2</td>
<td>Respiratory System</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.31</td>
<td>R2</td>
<td>Abdomen</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.32</td>
<td>R2</td>
<td>Lymphatic System</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.33</td>
<td>R2</td>
<td>Vessels</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.34</td>
<td>R2</td>
<td>Musculoskeletal System</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.35</td>
<td>R2</td>
<td>Neurologic System</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.36</td>
<td>R2</td>
<td>Genitalia</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.37</td>
<td>R2</td>
<td>Rectum</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.16.2.1</td>
<td>R2</td>
<td>Extremities</td>
</tr>
<tr class="even">
<td>1.3.6.1.4.1.19376.1.5.3.1.1.21.2.10</td>
<td>R2</td>
<td>Pelvis</td>
</tr>
<tr class="odd">
<td>1.3.6.1.4.1.19376.1.5.3.1.3.38</td>
<td><strong><u>R2</u></strong></td>
<td><strong><u>Mental Status Organizer</u></strong></td>
</tr>
</tbody>
</table>

Add to Section 6.3.3.10 Section Content Modules

##### 6.3.3.10.S1 Mental Status Organizer- Section Content Module 

Table 6.3.3.10.S1-1: Mental Status Organizer Section

<table>
<tbody>
<tr class="odd">
<td>Template Name</td>
<td>Mental Status Organizer Section</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Template ID</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.3.38</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Parent Template</td>
<td>None</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>General Description</td>
<td><p>The Mental Status Organizer template may be used to group related Mental Status Observations (e.g., results of mental tests) and associated Assessment Scale Observations into subcategories and/or groupings by time. Subcategories can be things such as Mood and Affect, Behavior, Thought Process, Perception, Cognition, etc.</p>
<p>NOTE: This is modelled to be consistent with HL7 C-CDA R2, for consistency, but re-defining for international use.</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Section Code</td>
<td>75275-8, LOINC, “Cognitive Function”</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Author</td>
<td>May vary</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Informant</td>
<td>May vary</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Subject</td>
<td>current recordTarget</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Opt and Card</td>
<td>Condition</td>
<td>Data Element or Section Name</td>
<td>Template ID</td>
<td>Specification Document</td>
<td><p>Vocabulary</p>
<p>Constraint</p></td>
</tr>
<tr class="even">
<td>Entries</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>R [1..*]</td>
<td></td>
<td>Mental Status Observation entry</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.4.25</td>
<td>6.3.4.E1</td>
<td></td>
</tr>
</tbody>
</table>

&lt;component&gt;

&lt;section&gt;

&lt;templateId root=’ 1.3.6.1.4.1.19376.1.5.3.1.3.38’/&gt;

&lt;id root=' ' extension=' '/&gt;

&lt;code code=’ 75275-8’ displayName=’Cognitive Function’

codeSystem='2.16.840.1.113883.6.1' codeSystemName='LOINC'/&gt;

&lt;text&gt;

Text as described above

&lt;/text&gt;

&lt;/section&gt;

&lt;/component&gt;

Figure 6.3.3.10.S1-1: Specification for Mental Status Organizer Section

##### 6.3.3.10.S2 Review of Systems - EMS - Section Content Module 

Table 6.3.3.10.S2-1: Review of Systems - EMS Section

<table>
<tbody>
<tr class="odd">
<td>Template Name</td>
<td>Review of Systems - EMS</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Template ID</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.3.39</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Parent Template</td>
<td>Review of Systems (1.3.6.1.4.1.19376.1.5.3.1.3.18)</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>General Description</td>
<td>The EMS review of systems section shall contain only required and optional subsections dealing with the responses the patient gave to a set of routine questions on body systems in general and specific risks not covered in general review of systems.</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Section Code</td>
<td>10187-3, LOINC, “Review of Systems”</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Author</td>
<td>May vary</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Informant</td>
<td>May vary</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Subject</td>
<td>current recordTarget</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Opt and Card</td>
<td>Condition</td>
<td>Data Element or Section Name</td>
<td>Template ID</td>
<td>Specification Document</td>
<td><p>Vocabulary</p>
<p>Constraint</p></td>
</tr>
<tr class="even">
<td>Subsections</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>R2 [0..1]</td>
<td></td>
<td>Pregnancy Status Review</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.9.47</td>
<td>PCC TF-3:6.3.3.2.34</td>
<td>6.3.3.10.S.1</td>
</tr>
<tr class="even">
<td>Entries</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>R2 [0..1]</td>
<td></td>
<td>Last Oral Intake</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.4.26</td>
<td>6.3.4.E2</td>
<td></td>
</tr>
<tr class="even">
<td>R2 [0..1]</td>
<td></td>
<td>Last Known Well</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.4.27</td>
<td>6.3.4.E3</td>
<td></td>
</tr>
</tbody>
</table>

&lt;component&gt;

&lt;section&gt;

&lt;templateId root='1.3.6.1.4.1.19376.1.5.3.1.3.18'/&gt;

&lt;templateId root=’1.3.6.1.4.1.19376.1.5.3.1.3.39’/&gt;

&lt;id root=' ' extension=' '/&gt;

&lt;code code='10187-3' displayName='REVIEW OF SYSTEMS'

codeSystem='2.16.840.1.113883.6.1' codeSystemName='LOINC'/&gt;

&lt;text&gt;

Text as described above

&lt;/text&gt;

&lt;component&gt;

&lt;section&gt;

&lt;templateId root='1.3.6.1.4.1.19376.1.5.3.1.1.9.47'/&gt;

&lt;!-- Required if known Pregnancy Status Review Section content --&gt;

&lt;/section&gt;

&lt;/component&gt;

&lt;entry&gt;

:

&lt;!-- Required if known Last Oral Intake Entry element --&gt;

&lt;templateId root=’TBD’/&gt;

:

&lt;/entry&gt;

&lt;entry&gt;

:

&lt;!-- Required if known Last Known Well Entry element --&gt;

&lt;templateId root=’TBD’/&gt;

:

&lt;/entry&gt;

&lt;/section&gt;

&lt;/component&gt;

Figure 6.3.3.10.S2-1: Specification for Review of Systems - EMS Section

###### 6.3.3.10.S2.1 Pregnancy Status Vocabulary Constraint

The value for Pregnancy Status/ code SHALL be drawn from the Pregnancy
value set 2.16.840.1.113883.17.3.11.42 \[HL7 EMS PCR\] unless further
extended by national extension.

##### 6.3.3.10.S3 EMS Procedures and Interventions Section Content Module 

Table 6.3.3.10.S3-1: EMS Procedures and Interventions Section

<table>
<tbody>
<tr class="odd">
<td>Template Name</td>
<td>EMS Procedures and Interventions Section</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Template ID</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.13.2.14</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Parent Template</td>
<td>Procedures and Interventions Section (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.11)</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>General Description</td>
<td>The EMS Procedures and Interventions Section shall contain coded procedures performed during Pre-hospital paramedical care including information related to the success, unsuccessful attempts, and patient response as documented by the paramedicine care provider.</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Section Code</td>
<td>29554-3, LOINC, “Procedure”</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Author</td>
<td>May vary</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Informant</td>
<td>May vary</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Subject</td>
<td>current recordTarget</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Opt and Card</td>
<td>Condition</td>
<td>Data Element or Section Name</td>
<td>Template ID</td>
<td>Specification Document</td>
<td><p>Vocabulary</p>
<p>Constraint</p></td>
</tr>
<tr class="even">
<td>Entries</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>R [1..1]</td>
<td></td>
<td>Procedure</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.4.19</td>
<td>PCC TF-2: 6.3.4.33</td>
<td></td>
</tr>
<tr class="even">
<td>R2 [0..1]</td>
<td></td>
<td>Abandoned Procedure Reason Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.130</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="odd">
<td>R2 [0..1]</td>
<td></td>
<td>Procedure Prior Indicator</td>
<td>2.16.840.1.1133883.17.3.10.1.131</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="even">
<td>R2 [0..1]</td>
<td></td>
<td>Procedure Number Of Attempts Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.132</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="odd">
<td>R2 [0..1]</td>
<td></td>
<td>Procedure Successful Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.133</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="even">
<td>R2 [0..1]</td>
<td></td>
<td>Procedure Complications Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.179</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="odd">
<td>R2 [0..1]</td>
<td></td>
<td>Procedure Patient Response Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.135</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="even">
<td>R2 [0..1]</td>
<td></td>
<td>Airway Confirmation Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.175</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
</tbody>
</table>

###### 6.3.3.10.S3.1 &lt;effectiveTime&gt;&lt;low value=''/&gt;&lt;high value=''/&gt;&lt;/effectiveTime&gt; 

This element should be present, and records the time at which the
procedure occurred (in EVN mood), the desired time of the procedure in
INT mood. If an abandoned time is recorded, the time it is abandoned is
reflected in effectiveTime(high).

###### 6.3.3.10.S3.2 &lt;approachSiteCode code='' displayName='' codeSystem='' codeSystemName=''/&gt; 

This element may be present to indicate the procedure approach. Required
conditionally if procedure code is intravenous catheterization, using
valueSet IVSite - 2.16.840.1.113883.17.3.11.56 unless otherwise
constrained by jurisdiction.

###### 6.3.3.10.S3.3 &lt;performer&gt; 

For procedures in EVN mood, at least one performer should be present
that identifies the provider of the service given. More than one
performer may be present. The &lt;time&gt; element should be used to
indicate the duration of the participation of the performer when it is
substantially different from that of the effectiveTime of the procedure.

Such performers **SHALL** contain exactly one \[1..1\]
**assignedEntity**

1.  This assignedEntity **SHALL** contain exactly one \[1..1\] **id**
    indicating the performer’s jurisdiction license number as defined by
    the jurisdiction

2.  This assignedEntity **SHALL** contain exactly one \[1..1\] **code**
    which **SHALL** use values from the Provider Role concept domain as
    specified by jurisdiction.

###### 6.3.3.10.S3.4 @negationInd 

Required to document a procedure not performed, with required
entryRelationship typeCode=RSON

###### 6.3.3.10.S3.5 &lt;entryRelationship typeCode='RSON'&gt; 

A &lt;procedure&gt; act may indicate one or more reasons for the
procedure. These reasons identify the concern that was the reason for
the procedure via an Internal Reference (see PCC TF-2: 6.3.4.10 Internal
References) to the concern. The extension and root of each observation
present must match the identifier of a concern entry contained elsewhere
within the CDA document. For procedures not performed, this is used to
document the “reason not performed”, documenting the reason using
valueSet Reason Procedure not Performed Superset -
2.16.840.1.113883.17.3.11.100 unless otherwise specified by
jurisdiction.

&lt;component&gt;

&lt;section&gt;

&lt;templateId root='1.3.6.1.4.1.19376.1.5.3.1.1.13.2.11’/&gt;

&lt;templateId root='1.3.6.1.4.1.19376.1.5.3.1.1.13.2.14’/&gt;

&lt;id root=' ' extension=' '/&gt;

&lt;code code='29554-3' displayName='Procedure'

codeSystem='2.16.840.1.113883.6.1' codeSystemName='LOINC'/&gt;

&lt;text&gt;

Text as described above

&lt;/text&gt;

&lt;entry&gt;

:

&lt;!-- Required Procedure Entry element --&gt;

&lt;templateId root=’1.3.6.1.4.1.19376.1.5.3.1.4.19’/&gt;

:

&lt;/entry&gt;

&lt;entry&gt;

:

&lt;!-- Required if known Abandoned Procedure Reason Observation Entry
element --&gt;

&lt;templateId root=’2.16.840.1.1133883.17.3.10.1.130’/&gt;

:

&lt;/entry&gt;

&lt;entry&gt;

:

&lt;!-- Required if known Procedure Prior Indicator Entry element --&gt;

&lt;templateId root=’2.16.840.1.1133883.17.3.10.1.131’/&gt;

:

&lt;/entry&gt;

&lt;entry&gt;

:

&lt;!-- Required if known Procedure Number Of Attempts Observation Entry
element --&gt;

&lt;templateId root=’2.16.840.1.1133883.17.3.10.1.132’/&gt;

:

&lt;/entry&gt;

&lt;entry&gt;

:

&lt;!-- Required if known Procedure Successful Observation Entry element
--&gt;

&lt;templateId root=’2.16.840.1.1133883.17.3.10.1.133’/&gt;

:

&lt;/entry&gt;

&lt;entry&gt;

:

&lt;!-- Required if known Procedure Complications Observation Entry
element --&gt;

&lt;templateId root=’2.16.840.1.1133883.17.3.10.1.179’/&gt;

:

&lt;/entry&gt;

&lt;entry&gt;

:

&lt;!-- Required if known Procedure Patient Response Observation Entry
element --&gt;

&lt;templateId root=’2.16.840.1.1133883.17.3.10.1.135’/&gt;

:

&lt;/entry&gt;

&lt;entry&gt;

:

&lt;!-- Required if known Airway Confirmation Observation Entry element
--&gt;

&lt;templateId root=’2.16.840.1.1133883.17.3.10.1.175’/&gt;

:

&lt;/entry&gt;

&lt;/section&gt;

&lt;/component&gt;

Figure 6.3.3.10.S3.5-1: EMS Procedures and Interventions Section

##### 6.3.3.10.S4 EMS Injury Incident Description Clinical Section Content Module 

Table 6.3.3.10.S4-1: EMS Injury Incident Description Clinical Section

|                     |                                                                                                                                                             |                                   |                                 |                        |               |
|---------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|---------------------------------|------------------------|---------------|
| Template Name       | EMS Injury Incident Description Clinical Section                                                                                                            |                                   |                                 |                        |               |
| Template ID         | 1.3.6.1.4.1.19376.1.5.3.1.3.40                                                                                                                              |                                   |                                 |                        |               |
| Parent Template     | EMS Injury Incident Description Section (2.16.840.1.113883.17.3.10.1.17 HL7 EMS Run Report R2)                                                              |                                   |                                 |                        |               |
| General Description | The EMS Injury Incident Description Clinical Section shall contain injury information where the Pre-hospital paramedical care was in response to an injury. |                                   |                                 |                        |               |
| Section Code        | 67800-3, LOINC, “EMS injury incident description Narrative”                                                                                                 |                                   |                                 |                        |               |
| Author              | May vary                                                                                                                                                    |                                   |                                 |                        |               |
| Informant           | May vary                                                                                                                                                    |                                   |                                 |                        |               |
| Subject             | current recordTarget                                                                                                                                        |                                   |                                 |                        |               |
| Opt and Card        | Condition                                                                                                                                                   | Data Element or Section Name      | Template ID                     | Specification Document | Constraint    |
| Entries             |                                                                                                                                                             |                                   |                                 |                        |               |
| R \[1..1\]          |                                                                                                                                                             | Injury Cause Category             | 2.16.840.1.1133883.17.3.10.1.50 | HL7 EMS Run Report R2  |               |
| RE \[0..1\]         |                                                                                                                                                             | Injury Mechanism                  | 2.16.840.1.1133883.17.3.10.1.51 | HL7 EMS Run Report R2  |               |
| R \[1..1\]          |                                                                                                                                                             | Trauma Center Criteria            | 2.16.840.1.1133883.17.3.10.1.52 | HL7 EMS Run Report R2  | 6.3.3.10.S4.1 |
| R \[1..1\]          |                                                                                                                                                             | Injury Risk Factor                | 2.16.840.1.1133883.17.3.10.1.53 | HL7 EMS Run Report R2  |               |
| O \[0..1\]          |                                                                                                                                                             | Vehicle Impact Area               | 2.16.840.1.1133883.17.3.10.1.54 | HL7 EMS Run Report R2  | 6.3.3.10.S4.2 |
| O \[0..1\]          |                                                                                                                                                             | Patient Location In Vehicle       | 2.16.840.1.1133883.17.3.10.1.55 | HL7 EMS Run Report R2  | 6.3.3.10.S4.3 |
| O \[0..1\]          |                                                                                                                                                             | Vehicle Occupant Safety Equipment | 2.16.840.1.1133883.17.3.10.1.56 | HL7 EMS Run Report R2  |               |
| O \[0..1\]          |                                                                                                                                                             | Airbag Deployment Status          | 2.16.840.1.1133883.17.3.10.1.57 | HL7 EMS Run Report R2  |               |
| O \[0..1\]          |                                                                                                                                                             | Height Of Fall                    | 2.16.840.1.1133883.17.3.10.1.58 | HL7 EMS Run Report R2  |               |
| O \[0..1\]          |                                                                                                                                                             | Disaster Type                     | 2.16.840.1.1133883.17.3.10.1.59 | HL7 EMS Run Report R2  |               |

###### 6.3.3.10.S4.1 Trauma Center Criteria 

This entry is required by the parent section, but SHALL be NULL as this
information is not relevant to clinical care.

###### 6.3.3.10.S4.2 Vehicle Impact Area

This entry is optional in the parent section, but SHALL be omitted or
NULL as this information is not relevant to clinical care.

###### 6.3.3.10.S4.3 Patient Location In Vehicle

This entry is optional in the parent section, but SHALL be omitted or
NULL as this information is not relevant to clinical care.

##### 6.3.3.10.S5 EMS Procedures and Interventions Clinical Section Content Module 

Table 6.3.3.10.S5-1: EMS Procedures and Interventions Clinical Section

<table>
<tbody>
<tr class="odd">
<td>Template Name</td>
<td>EMS Procedures and Interventions Clinical Section</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Template ID</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.1.13.2.14</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Parent Template</td>
<td><p>Procedures and Interventions Section (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.11)</p>
<p>EMS Procedures and Interventions Section (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.14)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>General Description</td>
<td>The EMS Procedures and Interventions Clinical Section shall contain coded procedures performed during Pre-hospital paramedical care including information related to the success, unsuccessful attempts, and patient response as documented by the paramedicine care provider. This section is limited to the information needed for continued clinical care at the receiving facility.</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Section Code</td>
<td>29554-3, LOINC, “Procedure”</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Author</td>
<td>May vary</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Informant</td>
<td>May vary</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Subject</td>
<td>current recordTarget</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Opt and Card</td>
<td>Condition</td>
<td>Data Element or Section Name</td>
<td>Template ID</td>
<td>Specification Document</td>
<td>Constraint</td>
</tr>
<tr class="even">
<td>Entries</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>R [1..1]</td>
<td></td>
<td>Procedure</td>
<td>1.3.6.1.4.1.19376.1.5.3.1.4.19</td>
<td>PCC TF-2: 6.3.4.33</td>
<td></td>
</tr>
<tr class="even">
<td>R2 [0..1]</td>
<td></td>
<td>Abandoned Procedure Reason Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.130</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="odd">
<td>R2 [0..1]</td>
<td></td>
<td>Procedure Prior Indicator</td>
<td>2.16.840.1.1133883.17.3.10.1.131</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="even">
<td>R2 [0..1]</td>
<td></td>
<td>Procedure Number Of Attempts Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.132</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="odd">
<td>O [0..1]</td>
<td></td>
<td>Procedure Successful Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.133</td>
<td>HL7 EMS Run Report R2</td>
<td>6.3.3.10.S5.1</td>
</tr>
<tr class="even">
<td>R2 [0..1]</td>
<td></td>
<td>Procedure Complications Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.179</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="odd">
<td>O [0..1]</td>
<td></td>
<td>Procedure Patient Response Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.135</td>
<td>HL7 EMS Run Report R2</td>
<td>6.3.3.10.S5.2</td>
</tr>
<tr class="even">
<td>R2 [0..1]</td>
<td></td>
<td>Airway Confirmation Observation</td>
<td>2.16.840.1.1133883.17.3.10.1.175</td>
<td>HL7 EMS Run Report R2</td>
<td>6.3.3.10.S5.3</td>
</tr>
</tbody>
</table>

###### 6.3.3.10.S5.1 Procedure Successful Observation

This entry is R2 in the parent section, but SHALL be omitted or NULL as
this information is not relevant to clinical care.

###### 6.3.3.10.S5.2 Procedure Patient Response Observation

This entry is Optional in the parent section, but SHALL be omitted or
NULL as this information is not relevant to clinical care.

###### 6.3.3.10.S5.3 Procedure Patient Response Observation

This entry is R2 in the parent section, but SHALL be omitted or NULL as
this information is not relevant to clinical care.

##### 6.3.3.10.S6 EMS Scene Clinical Section Content Module 

Table 6.3.3.10.S6-1: EMS Scene Clinical Section

|                     |                                                                                                                                                     |                              |                                 |                        |               |
|---------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------|---------------------------------|------------------------|---------------|
| Template Name       | EMS Scene Clinical Section                                                                                                                          |                              |                                 |                        |               |
| Template ID         | 1.3.6.1.4.1.19376.1.5.3.1.3.41                                                                                                                      |                              |                                 |                        |               |
| Parent Template     | EMS Scene Section 2.16.840.1.113883.17.3.10.1.8 (HL7 EMS Run Report R2)                                                                             |                              |                                 |                        |               |
| General Description | The EMS Scene Clinical Section shall contain information about the environment in which the patient is found for the Pre-hospital paramedical care. |                              |                                 |                        |               |
| Section Code        | 67665-0, LOINC, “ EMS scene Narrative”                                                                                                              |                              |                                 |                        |               |
| Author              | May vary                                                                                                                                            |                              |                                 |                        |               |
| Informant           | May vary                                                                                                                                            |                              |                                 |                        |               |
| Subject             | current recordTarget                                                                                                                                |                              |                                 |                        |               |
| Opt and Card        | Condition                                                                                                                                           | Data Element or Section Name | Template ID                     | Specification Document | Constraint    |
| Entries             |                                                                                                                                                     |                              |                                 |                        |               |
| R \[1..1\]          |                                                                                                                                                     | First Unit Indicator         | 2.16.840.1.1133883.17.3.10.1.84 | HL7 EMS Run Report R2  | 6.3.3.10.S6.1 |
| R \[1..1\]          |                                                                                                                                                     | Scene Patient Count          | 2.16.840.1.1133883.17.3.10.1.86 | HL7 EMS Run Report R2  | 6.3.3.10.S6.2 |
| R \[1..1\]          |                                                                                                                                                     | Mass Casualty Indicator      | 2.16.840.1.1133883.17.3.10.1.87 | HL7 EMS Run Report R2  |               |
| R \[1..1\]          |                                                                                                                                                     | Location Type Observation    | 2.16.840.1.1133883.17.3.10.1.88 | HL7 EMS Run Report R2  |               |

###### 6.3.3.10.S6.1 First Unit Indicator

This entry is R in the parent section, but SHALL be omitted or NULL as
this information is not relevant to clinical care.

###### 6.3.3.10.S2.2 Procedure Patient Response Observation

This entry is R in the parent section, but SHALL be omitted or NULL as
this information is not relevant to clinical care.

##### 6.3.3.10.S7 EMS Situation Clinical Section Content Module 

Table 6.3.3.10.S7-1: EMS Situation Clinical Section

|                     |                                                                                                                                              |                                |                                 |                        |               |
|---------------------|----------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|---------------------------------|------------------------|---------------|
| Template Name       | EMS Situation Clinical Section                                                                                                               |                                |                                 |                        |               |
| Template ID         | 1.3.6.1.4.1.19376.1.5.3.1.3.42                                                                                                               |                                |                                 |                        |               |
| Parent Template     | EMS Situation Section 2.16.840.1.113883.17.3.10.1.9 (HL7 EMS Run Report R2)                                                                  |                                |                                 |                        |               |
| General Description | The EMS Situation Clinical Section shall contain information about patient symptoms and complaints during the Pre-hospital paramedical care. |                                |                                 |                        |               |
| Section Code        | 67666-8, LOINC, "EMS situation Narrative”                                                                                                    |                                |                                 |                        |               |
| Author              | May vary                                                                                                                                     |                                |                                 |                        |               |
| Informant           | May vary                                                                                                                                     |                                |                                 |                        |               |
| Subject             | current recordTarget                                                                                                                         |                                |                                 |                        |               |
| Opt and Card        | Condition                                                                                                                                    | Data Element or Section Name   | Template ID                     | Specification Document | Constraint    |
| Entries             |                                                                                                                                              |                                |                                 |                        |               |
| R \[1..1\]          |                                                                                                                                              | Complaint                      | 2.16.840.1.1133883.17.3.10.1.63 | HL7 EMS Run Report R2  |               |
| R \[1..1\]          |                                                                                                                                              | Possible Injury                | 2.16.840.1.1133883.17.3.10.1.64 | HL7 EMS Run Report R2  |               |
| R \[1..1\]          |                                                                                                                                              | Provider Primary Impression    | 2.16.840.1.1133883.17.3.10.1.65 | HL7 EMS Run Report R2  |               |
| R \[1..1\]          |                                                                                                                                              | Primary Symptom                | 2.16.840.1.1133883.17.3.10.1.66 | HL7 EMS Run Report R2  |               |
| R \[1..1\]          |                                                                                                                                              | Other Symptoms                 | 2.16.840.1.1133883.17.3.10.1.67 | HL7 EMS Run Report R2  |               |
| R \[1..1\]          |                                                                                                                                              | Provider Secondary Impressions | 2.16.840.1.1133883.17.3.10.1.68 | HL7 EMS Run Report R2  |               |
| R \[1..1\]          |                                                                                                                                              | Initial Patient Acuity         | 2.16.840.1.1133883.17.3.10.1.69 | HL7 EMS Run Report R2  | 6.3.3.10.S7.1 |

###### 6.3.3.10.S7.1 Initial Patient Acuity

This entry is R in the parent section, but SHALL be omitted or NULL as
this information is not relevant to clinical care.

### 6.3.4 CDA Entry Content Modules

Add to Section 6.3.4.E Entry Content Modules

#### 6.3.4.E1 Mental Status Entry Content Module 

Table 6.3.4.E1-1: Mental Status Entry

|                     |                                                                 |                    |                                                |                        |                              |
|---------------------|-----------------------------------------------------------------|--------------------|------------------------------------------------|------------------------|------------------------------|
| Template Name       | Mental Status Entry                                             |                    |                                                |                        |                              |
| Template ID         | 1.3.6.1.4.1.19376.1.5.3.1.4.25                                  |                    |                                                |                        |                              |
| Parent Template     | NA                                                              |                    |                                                |                        |                              |
| General Description | Qualitative assessment of condition of patient’s mental status. |                    |                                                |                        |                              |
| Class/Mood          | Code                                                            | Data Type          | Value                                          |                        |                              |
| OBS/EVN             | 75275-8, LOINC, Cognitive Function                              | CD                 | SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) |                        |                              |
| Opt and Card        | entryRelationship                                               | Description        | Template ID                                    | Specification Document | Vocabulary Constraint        |
| R \[1..1\]          |                                                                 | Simple Observation | 1.3.6.1.4.1.19376.1.5.3.1.4.13                 |                        | Concept Domain Mental Status |

#### 6.3.4.E2 Last Oral Intake Entry Content Module 

Table 6.3.4.E2-1: Last Oral Intake Entry

|                     |                                                           |                    |                                |                        |                       |
|---------------------|-----------------------------------------------------------|--------------------|--------------------------------|------------------------|-----------------------|
| Template Name       | Last Oral Intake Entry                                    |                    |                                |                        |                       |
| Template ID         | 1.3.6.1.4.1.19376.1.5.3.1.4.26                            |                    |                                |                        |                       |
| Parent Template     | 1.3.6.1.4.1.19376.1.5.3.1.4.13                            |                    |                                |                        |                       |
| General Description | Time of patient’s last oral intake                        |                    |                                |                        |                       |
| Class/Mood          | Code                                                      | Data Type          | Value                          |                        |                       |
| OBS/EVN             | 67517-3, LOINC, Last oral intake \[Date and time\] NEMSIS | TS                 | NA                             |                        |                       |
| Opt and Card        | entryRelationship                                         | Description        | Template ID                    | Specification Document | Vocabulary Constraint |
| R \[1..1\]          |                                                           | Simple Observation | 1.3.6.1.4.1.19376.1.5.3.1.4.13 |                        | NA                    |

#### 6.3.4.E3 Last Known Well Entry Content Module 

Table 6.3.4.E3-1: Last Known Well Entry

|                     |                                                                                                                                                                                 |           |       |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------|-------|
| Template Name       | Last Known Well Entry                                                                                                                                                           |           |       |
| Template ID         | 1.3.6.1.4.1.19376.1.5.3.1.4.27                                                                                                                                                  |           |       |
| Parent Template     | 1.3.6.1.4.1.19376.1.5.3.1.4.13                                                                                                                                                  |           |       |
| General Description | The time prior to hospital arrival at which the patient was last known to be without the signs and symptoms of the current condition or at his or her baseline state of health. |           |       |
| Class/Mood          | Code                                                                                                                                                                            | Data Type | Value |
| OBS/EVN             | 1.3.6.1.4.1.19376.1.5.3.1.4.27, LOINC, Time last known well \[Date and time\]                                                                                                   | TS        | NA    |

<span id="_Toc335730763" class="anchor"></span>

6.5 PCC Value Sets and Concept Domains
--------------------------------------

### 6.5.X Paramedicine Care Summary Concept Domains 

The Concept Domains below are used in the Paramedicine Care Summary.

| Paramedicine Care Summary        |
|----------------------------------|
| Ethnicity                        |
| Marital Status                   |
| Race                             |
| Religious Affiliation            |
| Language Communication           |
| Data Enterer                     |
| Confidentiality code             |
| Destination                      |
| Service Type                     |
| advanced directives              |
| Allergen                         |
| EMS Level of Service             |
| Medications Administration route |
| UnitLevelOfCare                  |
| UnitResponseRole                 |
| Manufactured Material            |
| Destination type                 |
| ProviderResponseRole             |
| CrewRoleLevel                    |
| ProviderRole                     |

6.6 HL7 FHIR Content Module
---------------------------

### 6.6.X Transport Content

#### 6.6.X.1 Referenced Standards

|                                                                                                                                       |                                                                                                                                                                 |
|---------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Title                                                                                                                                 | URL                                                                                                                                                             |
| HL7 Version 3 Domain Analysis Model: Emergency Medical Services, Release 1                                                            | &lt;[http://www.hl7.org/implement/standards/product\_brief.cfm?product\_id=39&gt;](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=39%3e)   |
| HL7 Version 3 Domain Information Model; Emergency Medical Services, Release 1                                                         | &lt;[http://www.hl7.org/implement/standards/product\_brief.cfm?product\_id=302&gt;](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=302%3e) |
| HL7 Version 3 Implementation Guide for CDA Release 2 - Level 3: Emergency Medical Services; Patient Care Report, Release 2 - US Realm | &lt;[http://www.hl7.org/implement/standards/product\_brief.cfm?product\_id=438&gt;](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=438%3e) |
| HL7 Version 3 Domain Analysis Model: Trauma Registry Data Submission,                                                                 | <http://www.hl7.org/implement/standards/product_brief.cfm?product_id=363>                                                                                       |
| HL7 CDA® R2 Implementation Guide: Trauma Registry Data Submission, Release 1 - US Realm                                               | <http://www.hl7.org/implement/standards/product_brief.cfm?product_id=355>                                                                                       |
| HL7 Version 2.7.1 Implementation Guide: Message Transformations with OASIS Tracking of Emergency Patients (TEP), Release 1            | <http://www.hl7.org/implement/standards/product_brief.cfm?product_id=439>                                                                                       |
| National Trauma Data Standard Data Dictionary                                                                                         | <https://www.facs.org/~/media/files/quality%20programs/trauma/ntdb/ntds/data%20dictionaries/ntds%20data%20dictionary%202018.ashx>                               |
| HL7 FHIR standard STU3                                                                                                                | <http://hl7.org/fhir/STU3/index.html>                                                                                                                           |

##### 6.6.X.2.1 FHIR Resource Bundle Content 

The first column of this table refers to the options that these
structure definitions apply to, e.g., complete report (CR), Clinical
Subset (CS), Quality (Q), Trauma (T).

Table 6.6.X.2.1-1: FHIR Resource Bundle Structure Definitions

|              |                           |             |             |                                                                                                                                                                 |
|--------------|---------------------------|-------------|-------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Found In     | FHIR Resource location    | Optionality | Cardinality | Structured Definition                                                                                                                                           |
| CR, CS, Q, T | Composition               | R           | 1..1        | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Composition](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Composition%20)                           |
| CR, Q        | Patient                   | R           | 1..1        | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Patinet](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Patinet%20)                                   |
| T, CS        | Patient                   | RE          | 0..1        | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS-CS.Patinet](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS-CS.Patinet%20)                             |
| CR, CS, Q, T | Condition                 | RE          | 0..\*       | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Condition](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Condition%20)                               |
| CR, CS, Q, T | Procedure                 | RE          | 0..\*       | <http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Procedure>                                                                                                 |
| CR, CS, Q, T | Medication Administration | RE          | 0..\*       | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.MedicationAdministration](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.MedicationAdministration%20) |
| CR, CS, Q,   | Medication Statement      | RE          | 0..\*       | <http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.MedicationStatement>                                                                                       |
| CR, CS, Q, T | Observation               | R           | 1..\*       | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Observation](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Observation%20)                           |
| CR, Q        | Encounter                 | R           | 1..\*       | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Encounter](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Encounter%20)                               |
| CS, T        | Encounter                 | RE          | 0..\*       | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS-CS.Encounter](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS-CS.Encounter%20)                         |
| CR, Q        | Location                  | R           | 1..1        | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Location](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Location%20)                                 |
| CS, T        | Location                  | RE          | 0..1        | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS-CS.Location](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS-CS.Location%20)                           |
| CR, CS,      | Related Person            | RE          | 0..\*       | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.RelatedPerson](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.RelatedPerson%20)                       |
| CR, CS, Q, T | Allergy Intolerance       | RE          | 0..\*       | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.AllergyIntolerance](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.AllergyIntolerance%20)             |
| CR, CS, Q, T | Adverse Event             | RE          | 0..1        | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.AdverseEvent](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.AdverseEvent%20)                         |
| CR, CS, Q, T | Clinical Impression       | R           | 1..\*       | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.ClinicalImpression](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.ClinicalImpression%20)             |
| CR, CS, Q, T | Device                    | RE          | 0..1\*      | [http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Device](http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.Device%20)                                     |
| CR, CS, Q, T | Document Reference        | RE          | 0.1         | <http://ihe.net/fhir/StructureDefinition/IHE.PCC.PCS.DocumentReference>                                                                                         |

##### 6.6.X.2.2 FHIR Resource Data Specifications

The following table shows the mapping of the FHIR Resources supporting
the content for EMS Data Elements/Attributes. The Content Creator SHALL
support the Resources identified by this table. Content Consumer SHALL
receive paramedicine content from the specified resource for each
attribute.

Table 6.6.X.2.2-1: FHIR Resource Data Specification Data Elements

<table>
<tbody>
<tr class="odd">
<td>Data Element</td>
<td>Cardinality</td>
<td>FHIR Resource location</td>
<td>Constraint</td>
</tr>
<tr class="even">
<td>Last name</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.identifier</td>
<td></td>
</tr>
<tr class="odd">
<td>First name</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.name</td>
<td></td>
</tr>
<tr class="even">
<td>middle initial</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.name</td>
<td></td>
</tr>
<tr class="odd">
<td>home address</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.name</td>
<td></td>
</tr>
<tr class="even">
<td>home city</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.address</td>
<td></td>
</tr>
<tr class="odd">
<td>home country</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.address</td>
<td></td>
</tr>
<tr class="even">
<td>home state</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.address</td>
<td></td>
</tr>
<tr class="odd">
<td>home zip code</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.address</td>
<td></td>
</tr>
<tr class="even">
<td>country of residence</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.address</td>
<td></td>
</tr>
<tr class="odd">
<td>home census tract</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.address</td>
<td></td>
</tr>
<tr class="even">
<td>social security number</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.identifier</td>
<td></td>
</tr>
<tr class="odd">
<td>gender</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.gender</td>
<td></td>
</tr>
<tr class="even">
<td>race</td>
<td>O [0..1]</td>
<td>Patient.extension(us-core-race)</td>
<td>When used in the Unites States this element is required if known</td>
</tr>
<tr class="odd">
<td>Age</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.birthDate</td>
<td></td>
</tr>
<tr class="even">
<td>Age Units</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.birthDate</td>
<td></td>
</tr>
<tr class="odd">
<td>Date of Birth</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.birthDate</td>
<td></td>
</tr>
<tr class="even">
<td>Patient's Phone Number</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.telecom</td>
<td></td>
</tr>
<tr class="odd">
<td>Patient's email</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.telecom</td>
<td></td>
</tr>
<tr class="even">
<td>State Issuing Driver's License</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.identifier</td>
<td></td>
</tr>
<tr class="odd">
<td>Driver's License Number</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.identifier</td>
<td></td>
</tr>
<tr class="even">
<td>Alternate Home Residence</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.</td>
<td></td>
</tr>
<tr class="odd">
<td>Primary Method of Payment</td>
<td>RE [0..1]</td>
<td>Coverage.type</td>
<td></td>
</tr>
<tr class="even">
<td>Document type: Certificate of medical necessity (CMN)</td>
<td>RE [0..1]</td>
<td>Servicerequest.reasonRefrence: DocumentReference</td>
<td>Where code is LOINC = 52016-3 Ambulance transport, Physician certification for transport Information set)</td>
</tr>
<tr class="odd">
<td>Physician Certification Statement Signed</td>
<td>RE [0..1]</td>
<td>Servicerequest.reasonRefrence: DocumentReference.content.attachment</td>
<td>Where code is LOINC = 52017-1 Ambulance transport, Physician certification for transport statement (narrative)Ambulance transport</td>
</tr>
<tr class="even">
<td>Date Physician Certification Statement Signed</td>
<td>RE [0..1]</td>
<td>Servicerequest.reasonRefrence: DocumentReference.context.period</td>
<td></td>
</tr>
<tr class="odd">
<td>Reason for Physician Certification Statement</td>
<td>RE [0..*]</td>
<td>Servicerequest.reasonCode</td>
<td></td>
</tr>
<tr class="even">
<td>Healthcare Provider Type Signing Physician Certification Statement</td>
<td>RE [0..1]</td>
<td>Servicerequest.reasonRefrence: DocumentReference.context.related: PractitionerRole.code</td>
<td></td>
</tr>
<tr class="odd">
<td>Last Name of Individual Signing Physician Certification Statement</td>
<td>RE [0..1]</td>
<td>Servicerequest.reasonRefrence: DocumentReference.context.related: Practitioner.name</td>
<td></td>
</tr>
<tr class="even">
<td>First Name of Individual Signing Physician Certification Statement</td>
<td>RE [0..1]</td>
<td>Servicerequest.reasonRefrence: DocumentReference.context.related: Practitioner.name</td>
<td></td>
</tr>
<tr class="odd">
<td>Insurance Company ID</td>
<td>RE [0..1]</td>
<td>Coverage.payor:Organization.idetifier</td>
<td></td>
</tr>
<tr class="even">
<td>Insurance Company Name</td>
<td>RE [0..1]</td>
<td>Coverage.payor:Organization.name</td>
<td></td>
</tr>
<tr class="odd">
<td>Insurance Company Billing Priority</td>
<td>RE [0..1]</td>
<td>Coverage.type</td>
<td></td>
</tr>
<tr class="even">
<td>Insurance Company Address</td>
<td>RE [0..1]</td>
<td>Coverage.payor:Organization.address</td>
<td></td>
</tr>
<tr class="odd">
<td>Insurance Company City</td>
<td>RE [0..1]</td>
<td>Coverage.payor:Organization.address</td>
<td></td>
</tr>
<tr class="even">
<td>Insurance Company State</td>
<td>RE [0..1]</td>
<td>Coverage.payor:Organization.address</td>
<td></td>
</tr>
<tr class="odd">
<td>Insurance Company Zipcode</td>
<td>RE [0..1]</td>
<td>Coverage.payor:Organization.address</td>
<td></td>
</tr>
<tr class="even">
<td>Insurance Company Country</td>
<td>RE [0..1]</td>
<td>Coverage.payor:Organization.address</td>
<td></td>
</tr>
<tr class="odd">
<td>Insurance Group ID</td>
<td>RE [0..1]</td>
<td>Coverage.class.value</td>
<td></td>
</tr>
<tr class="even">
<td>Insurance Policy ID Number</td>
<td>RE [0..1]</td>
<td>Coverage.class.value</td>
<td></td>
</tr>
<tr class="odd">
<td>Last Name of the Insured</td>
<td>RE [0..1]</td>
<td><p>Coverage.policyHolder:Patient.name</p>
<p>Coverage.policyHolder:RelatedPerson.name</p></td>
<td>When policyholder name is not the same as the patient then SHALL use the Related person name resource</td>
</tr>
<tr class="even">
<td>First Name of the Insured</td>
<td>RE [0..1]</td>
<td><p>Coverage.policyHolder:Patient.name</p>
<p>Coverage.policyHolder:RelatedPerson.name</p></td>
<td>When policyholder name is not the same as the patient then SHALL use the Related person name resource</td>
</tr>
<tr class="odd">
<td>Middle initial/name of the Insured</td>
<td>RE [0..1]</td>
<td><p>Coverage.policyHolder:Patient.name</p>
<p>Coverage.policyHolder:RelatedPerson.name</p></td>
<td>When policyholder name is not the same as the patient then SHALL use the Related person name resource</td>
</tr>
<tr class="even">
<td>Relationship to the Insured</td>
<td>RE [0..1]</td>
<td>Coverage.relationship</td>
<td></td>
</tr>
<tr class="odd">
<td>Insurance Group Name</td>
<td>RE [0..1]</td>
<td>Coverage.class.name</td>
<td></td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian Last Name</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.contact.name</td>
<td></td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian First Name</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.contact.name</td>
<td></td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian Middle Initial/Name</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.contact.name</td>
<td></td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian Street Address</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.contact.address</td>
<td></td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian City</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.contact.address</td>
<td></td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian State</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.contact.address</td>
<td></td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian Zip Code</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.contact.address</td>
<td></td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian Country</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.contact.address</td>
<td></td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian Phone Number</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.contact.telecom</td>
<td></td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian Relationship</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.contact.relationship</td>
<td></td>
</tr>
<tr class="even">
<td>Patient's Employer</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.contact.name</td>
<td></td>
</tr>
<tr class="odd">
<td>Patient's Employer's Address</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.contact.address</td>
<td></td>
</tr>
<tr class="even">
<td>Patient's Employer's City</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.contact.address</td>
<td></td>
</tr>
<tr class="odd">
<td>Patient's Employer's State</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.contact.address</td>
<td></td>
</tr>
<tr class="even">
<td>Patient's Employer's Zip Code</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.contact.address</td>
<td></td>
</tr>
<tr class="odd">
<td>Patient's Employer's Country</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.contact.address</td>
<td></td>
</tr>
<tr class="even">
<td>Patient's Employer's Primary Phone Number</td>
<td>O [0..1]</td>
<td>Patient:PatientUvIps.contact.telecom</td>
<td></td>
</tr>
<tr class="odd">
<td>Last Name of Patient's Practitioner</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.generalPractitioner.name</td>
<td></td>
</tr>
<tr class="even">
<td>First Name of Patient's Practitioner</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.generalPractitioner.name</td>
<td></td>
</tr>
<tr class="odd">
<td>Middle Initial/Name of Patient's Practitioner</td>
<td>RE [0..1]</td>
<td>Patient:PatientUvIps.generalPractitioner.name</td>
<td></td>
</tr>
<tr class="even">
<td>Advanced Directives</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionAdvanceDirectives</td>
<td></td>
</tr>
<tr class="odd">
<td>Medication Allergies</td>
<td>RE [0..*]</td>
<td>Composition.section:sectionAllergies.entry:allergyOrIntolerance</td>
<td></td>
</tr>
<tr class="even">
<td>Environmental/Food Allergies</td>
<td>RE [0..*]</td>
<td>Composition.section:sectionAllergies.entry:allergyOrIntolerance</td>
<td></td>
</tr>
<tr class="odd">
<td>Medical/Surgical History</td>
<td>RE [0..*]</td>
<td><p>"Composition.section:sectionPastIllnessHx.entry:pastProblem</p>
<p>Composition.section:sectionProceduresHx.entry:procedure"</p></td>
<td></td>
</tr>
<tr class="even">
<td>The Patient's Type of Immunization</td>
<td>O [0..1]</td>
<td>Composition.section:sectionImmunizations.entry:immunization.vaccineCode</td>
<td></td>
</tr>
<tr class="odd">
<td>Immunization Year</td>
<td>O [0..1]</td>
<td>Composition.section:sectionImmunizations.entry:immunization.occurrenceDateTime</td>
<td></td>
</tr>
<tr class="even">
<td>Current Medications</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionMedications.entry:medicationStatement</td>
<td></td>
</tr>
<tr class="odd">
<td>Current Medication Dose</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionMedications.entry:medicationStatement.dosage.doseAndRate.dose[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Current Medication Dosage Unit</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionMedications.entry:medicationStatement.dosage.doseAndRate.dose[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Current Medication Administration Route</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionMedications.entry:medicationStatement.dosage.route</td>
<td></td>
</tr>
<tr class="even">
<td>Current Medication Frequency</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionMedications.entry:medicationStatement.dosage.timing</td>
<td></td>
</tr>
<tr class="odd">
<td>Presence of Emergency Information Form</td>
<td>O [0..1]</td>
<td>Encounter Observation.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Alcohol/Drug Use Indicators</td>
<td>O [0..1]</td>
<td>Encounter Observation.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Last Oral Intake</td>
<td>O [0..1]</td>
<td>Encounter Observation.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Pregnancy</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionPregnancyHx.entry:pregnancyStatus</td>
<td></td>
</tr>
<tr class="odd">
<td>Date/Time Vital Signs Taken</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.effective[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Cardiac Rhythm / Electrocardiography (ECG)</td>
<td>RE [0..1]</td>
<td>"Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>ECG Type</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]"</td>
<td></td>
</tr>
<tr class="even">
<td>Method of ECG Interpretation</td>
<td>RE [0..1]</td>
<td>N/A</td>
<td></td>
</tr>
<tr class="odd">
<td>SBP (Systolic Blood Pressure)</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code</td>
<td></td>
</tr>
<tr class="even">
<td>DBP (Diastolic Blood Pressure)</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Method of Blood Pressure Measurement</td>
<td>RE [0..1]</td>
<td>N/A</td>
<td></td>
</tr>
<tr class="even">
<td>Mean Arterial Pressure</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code</td>
<td></td>
</tr>
<tr class="odd">
<td>Heart Rate</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Method of Heart Rate Measurement</td>
<td>RE [0..1]</td>
<td>N/A</td>
<td></td>
</tr>
<tr class="odd">
<td>Pulse Oximetry</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code</td>
<td></td>
</tr>
<tr class="even">
<td>Pulse Rhythm</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Respiratory Rate</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Respiratory Effort</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code</td>
<td></td>
</tr>
<tr class="odd">
<td>End Title Carbon Dioxide (ETCO2)</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Carbon Monoxide (CO)</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Blood Glucose Level</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code</td>
<td></td>
</tr>
<tr class="even">
<td>Glasgow Coma Score-Eye</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Glasgow Coma Score-Verbal</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Glasgow Coma Score-Motor</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Glasgow Coma Score-Qualifier</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Total Glasgow Coma Score</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Temperature</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Temperature Method</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Level of Responsiveness (AVPU)</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Pain Scale Score</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Pain Scale Type</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Stroke Scale Score</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Stroke Scale Type</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Reperfusion Checklist</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>APGAR</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Revised Trauma Score</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Date/Time of Laboratory or Imaging Result</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionResults.entry:Observation.effective[x]<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.effective[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Study/Result Prior to this Unit's EMS Care</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionResults.entry:Observation.effective[x]<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.effective[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Laboratory Result Type</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionResults.entry:results-observation.category<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.code</td>
<td></td>
</tr>
<tr class="even">
<td>Laboratory Result</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionResults.text<br />
Composition.section:sectionResults.entry:Observation.text<br />
Composition.section:sectionResults.entry:results-observation.value[x]<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Imaging Study Type</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionResults.entry:results-observation.category<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.code</td>
<td></td>
</tr>
<tr class="even">
<td>Imaging Study Results</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionResults.text<br />
Composition.section:sectionResults.entry:Observation.text<br />
Composition.section:sectionResults.entry:results-observation.value[x]<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Imaging Study File or Waveform Graphic Type</td>
<td>RE [0..1]</td>
<td>N/A</td>
<td></td>
</tr>
<tr class="even">
<td>Imaging Study File or Waveform Graphic</td>
<td>RE [0..1]</td>
<td>N/A</td>
<td></td>
</tr>
<tr class="odd">
<td>Estimated Body Weight in Kilograms</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Length Based Tape Measure</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Date/Time of Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Skin Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Head Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Face Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Neck Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Chest/Lungs Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Heart Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Abdominal Assessment Finding Location</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Abdominal Assessment Finding Location</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Abdomen Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Pelvis/Genitourinary Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Back and Spine Assessment Finding Location</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Back and Spine Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Extremity Assessment Finding Location</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Extremities Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Eye Assessment Finding Location</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Eye Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Mental Status Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Neurological Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Lung Assessment Finding Location</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Lung Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Chest Assessment Finding Location</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="odd">
<td>Chest Assessment</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td></td>
</tr>
<tr class="even">
<td>Stroke/CVA Symptoms Resolved</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>Where condition is stroke/CVA symptoms where clinicalStatus is resolved</td>
</tr>
<tr class="odd">
<td>Date/Time Procedure Performed</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionProceduresHx.entry:procedure.performedDateTime</td>
<td></td>
</tr>
<tr class="even">
<td>Procedure Performed Prior to this Unit's EMS Care</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionProceduresHx.entry:procedure.performedDateTime</td>
<td></td>
</tr>
<tr class="odd">
<td>Procedure</td>
<td>RE [0..1]</td>
<td>Composition.section:sectionProceduresHx.entry:procedure</td>
<td></td>
</tr>
<tr class="even">
<td>Destination/Transferred To, Name</td>
<td>R [1..1]</td>
<td>ServiceRequest.locationReference: Location.name</td>
<td></td>
</tr>
<tr class="odd">
<td>Destination Street Address</td>
<td>R [1..1]</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td>Patient destination street address</td>
</tr>
<tr class="even">
<td>Destination City</td>
<td>R [1..1]</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td></td>
</tr>
<tr class="odd">
<td>Destination State</td>
<td>R [1..1]</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td></td>
</tr>
<tr class="even">
<td>Destination County</td>
<td>RE [0..1]</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td></td>
</tr>
<tr class="odd">
<td>Destination ZIP Code</td>
<td>RE [0..1]</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td></td>
</tr>
<tr class="even">
<td>Destination Country</td>
<td>RE [0..1]</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td></td>
</tr>
</tbody>
</table>

<span id="_Toc61339070" class="anchor"></span>

#### 6.6.X.4 Clinical Subset Data Import Option

The Content Consumer supporting the Clinical Subset Data Import Option
SHALL require receiving system to import the discrete data elements
identified in the following table.

Table 6.6.X.4-1: Clinical Subset Data Import Option FHIR and CDA Mapping

<table>
<tbody>
<tr class="odd">
<td>Paramedicine Data Element</td>
<td>FHIR Resource location</td>
<td>CDA Location</td>
</tr>
<tr class="even">
<td>Patient Care Report Number</td>
<td>Resource.Composition</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Complaint Reported by Dispatch</td>
<td>Encounter.reason</td>
<td>Reason for Referral</td>
</tr>
<tr class="even">
<td>PSAP Call Date/Time</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Time Section</td>
</tr>
<tr class="odd">
<td>Unit Arrived on Scene Date/Time</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Time Section</td>
</tr>
<tr class="even">
<td>Arrived at Patient Date/Time</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Time Section</td>
</tr>
<tr class="odd">
<td>Arrival at Destination Landing Area Date/Time</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Time Section</td>
</tr>
<tr class="even">
<td>Patient Arrived at Destination Date/Time</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Time Section</td>
</tr>
<tr class="odd">
<td>EMS Patient ID</td>
<td>Encounter.subject (Patient.identifier)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Last name</td>
<td>Encounter.subject (Patient.name)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>First name</td>
<td>Encounter.subject (Patient.name)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>middle initial</td>
<td>Encounter.subject (Patient.name)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>home address</td>
<td>Encounter.subject (Patient.address)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>home city</td>
<td>Encounter.subject (Patient.address)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>home country</td>
<td>Encounter.subject (Patient.address)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>home state</td>
<td>Encounter.subject (Patient.address)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>home postal code</td>
<td>Encounter.subject (Patient.address)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>gender</td>
<td>Encounter.subject (Patient.gender)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Race</td>
<td>Encounter.subject (Patient.race (US extension))</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Age</td>
<td>Encounter.subject (Patient.identifier)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Age Units</td>
<td>Encounter.subject (Patient.identifier)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Date of Birth</td>
<td>Encounter.subject (Patient.birthDate)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Patient's Phone Number</td>
<td>Encounter.subject (Patient.telecom)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian Last Name</td>
<td>Encounter.subject (RelatedPerson.name)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian First Name</td>
<td>Encounter.subject (RelatedPerson.name)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian Middle Initial/Name</td>
<td>Encounter.subject (RelatedPerson.name)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian Street Address</td>
<td>Encounter.subject (RelatedPerson.address)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian City</td>
<td>Encounter.subject (RelatedPerson.address)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian State</td>
<td>Encounter.subject (RelatedPerson.address)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian postal code</td>
<td>Encounter.subject (RelatedPerson.address)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian Country</td>
<td>Encounter.subject (RelatedPerson.address)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian Phone Number</td>
<td>Encounter.subject (RelatedPerson.telecom)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian Relationship</td>
<td>Encounter.subject (RelatedPerson.relationship)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Mass Casualty Incident</td>
<td><p>Encounter.encounter- massCasualty</p>
<p>**IHE extension**</p></td>
<td>EMS Scene Section</td>
</tr>
<tr class="odd">
<td>Triage Classification for MCI Patient</td>
<td><p>Encounter.priority</p>
<p>Encounter.priority.code</p></td>
<td>EMS Scene Section</td>
</tr>
<tr class="even">
<td>Incident Location Type</td>
<td><p>Encounter.encounter-incidentLocationType</p>
<p>**IHE extension**</p></td>
<td>EMS Scene Section</td>
</tr>
<tr class="odd">
<td>Incident Facility Code</td>
<td><p>Encounter.encounter-incidentFacilityCode</p>
<p>**IHE extension**</p></td>
<td>EMS Scene Section</td>
</tr>
<tr class="even">
<td>Date/Time of Symptom Onset</td>
<td>Encounter.diagnosis.condition(condition. onsetDateTime)</td>
<td>EMS Situation Section</td>
</tr>
<tr class="odd">
<td>Possible Injury</td>
<td>Encounter.diagnosis.condition(condition.code)</td>
<td>EMS Situation Section</td>
</tr>
<tr class="even">
<td>Complaint Type</td>
<td>Encounter.diagnosis.condition(Condition.category)</td>
<td>EMS Situation Section</td>
</tr>
<tr class="odd">
<td>Complaint</td>
<td>Encounter.diagnosis.condition(Condition.note)</td>
<td>EMS Situation Section</td>
</tr>
<tr class="even">
<td>Duration of Complaint</td>
<td>Encounter.diagnosis.condition(Condition.abatemetDateTime)</td>
<td>EMS Situation Section</td>
</tr>
<tr class="odd">
<td>Chief complaint Anatomic Location</td>
<td>Encounter.diagnosis.condition(Condition.bodySite)</td>
<td>EMS Situation Section</td>
</tr>
<tr class="even">
<td>Chief Complain organ system</td>
<td>Encounter.diagnosis.condition(Condition.bodySite)</td>
<td>EMS Situation Section</td>
</tr>
<tr class="odd">
<td>Primary Symptom</td>
<td>Encounter.diagnosis.condition(Condition.evidence.code)</td>
<td>EMS Situation Section / Reason for Referral</td>
</tr>
<tr class="even">
<td>Other Associated symptoms</td>
<td>Encounter.diagnosis.condition(Condition.evidence.code)</td>
<td>EMS Situation Section / Reason for Referral</td>
</tr>
<tr class="odd">
<td>Provider's Primary Impressions</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Situation Section / Reason for Referral</td>
</tr>
<tr class="even">
<td>Provider’s Secondary Impressions</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Situation Section / Reason for Referral</td>
</tr>
<tr class="odd">
<td>Initial Patient Acuity</td>
<td>EncounterObservation.interpretation</td>
<td>EMS Situation Section</td>
</tr>
<tr class="even">
<td>Work-related Illness/Injury</td>
<td>EncounterObservation.note</td>
<td>EMS Situation Section</td>
</tr>
<tr class="odd">
<td>Patient's Occupational Industry</td>
<td>N/A</td>
<td>EMS Situation Section</td>
</tr>
<tr class="even">
<td>Patient's Occupation</td>
<td>N/A</td>
<td>EMS Situation Section</td>
</tr>
<tr class="odd">
<td>Patient Activity</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Situation Section</td>
</tr>
<tr class="even">
<td>Date/Time Last Known Well</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Situation Section /Review of Systems-EMS Section</td>
</tr>
<tr class="odd">
<td>Cause of Injury</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Injury Incident Description Section</td>
</tr>
<tr class="even">
<td>Mechanism of Injury</td>
<td>No mapping available</td>
<td>EMS Injury Incident Description Section</td>
</tr>
<tr class="odd">
<td>Location of Patient in Vehicle</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Injury Incident Description Section</td>
</tr>
<tr class="even">
<td>Use of Occupant Safety Equipment</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Injury Incident Description Section</td>
</tr>
<tr class="odd">
<td>Height of Fall (feet)</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Injury Incident Description Section</td>
</tr>
<tr class="even">
<td>Cardiac Arrest</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Cardiac Arrest Etiology</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Resuscitation Attempted By EMS</td>
<td>EncounterProcedure.code</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Arrest Witnessed By</td>
<td><p>Encounter.encounter – witness (Person)</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>CPR Care Provided Prior to EMS Arrival</td>
<td><p>Encounter.encounter – priorCprProvided</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Who Provided CPR Prior to EMS Arrival</td>
<td><p>Encounter.encounter – priorCprProvidedRole</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>AED Use Prior to EMS Arrival</td>
<td><p>Encounter.encounter – priorAedProvided</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Who Used AED Prior to EMS Arrival</td>
<td><p>Encounter.encounter – priorAedProvidedRole</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Type of CPR Provided</td>
<td><p>Encounter.encounter – CprProvidedType</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>First Monitored Arrest Rhythm of the Patient</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Any Return of Spontaneous Circulation</td>
<td>EncounterProcedure.outcome</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Date/Time of Cardiac Arrest</td>
<td>EncounterObservation.effective[x]</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Date/Time Resuscitation Discontinued</td>
<td>EncounterProcedure.performedPeriod.end</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Reason CPR/Resuscitation Discontinued</td>
<td><p>EncounterProcedure -resuscitationDiscontinuedReason</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Cardiac Rhythm on Arrival at Destination</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>End of EMS Cardiac Arrest Event</td>
<td><p>EncounterProcedure –</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Date/Time of Initial CPR</td>
<td>EncounterProcedure.performedPeriod.start</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Barriers to Pt care</td>
<td>EncounterObservation.value[x]</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Advanced Directives</td>
<td>DocumentReference</td>
<td>EMS Advance Directives Section</td>
</tr>
<tr class="odd">
<td>Medication Allergies</td>
<td>AllergyIntolerance.substance</td>
<td>Allergy and Intolerances Concern Entry</td>
</tr>
<tr class="even">
<td>Environmental/Food Allergies</td>
<td>AllergyIntolerance.substance</td>
<td>Allergy and Intolerances Concern Entry</td>
</tr>
<tr class="odd">
<td>Medical/Surgical History</td>
<td>Encounter.diagnosis.condition(ClinicalImpression.finding)</td>
<td>EMS Past Medical History Section</td>
</tr>
<tr class="even">
<td>Medical/Surgical History</td>
<td>Encounter.diagnosis.condition(ClinicalImpression.date)</td>
<td>EMS Past Medical History Section</td>
</tr>
<tr class="odd">
<td>Medical/Surgical History</td>
<td>Encounter.diagnosis.condition(Condition.code)</td>
<td>EMS Past Medical History Section</td>
</tr>
<tr class="even">
<td>Medical/Surgical History</td>
<td>Encounter.diagnosis.condition(Condition.onset[x])</td>
<td>EMS Past Medical History Section</td>
</tr>
<tr class="odd">
<td>Medical/Surgical History</td>
<td>Encounter.diagnosis.condition(Procedure.performed[x])</td>
<td>EMS Past Medical History Section</td>
</tr>
<tr class="even">
<td>Medical/Surgical History</td>
<td>Encounter.diagnosis.condition(Procedure.code)</td>
<td>EMS Past Medical History Section</td>
</tr>
<tr class="odd">
<td>Current Medications</td>
<td>MedicationStatement.medication[x]</td>
<td>Medication Section</td>
</tr>
<tr class="even">
<td>Current Medication Dose</td>
<td>MedicationStatement.dosage</td>
<td>Medication Section</td>
</tr>
<tr class="odd">
<td>Current Medication Dosage Unit</td>
<td>MedicationStatement.dosage</td>
<td>Medication Section</td>
</tr>
<tr class="even">
<td>Current Medication Administration Route</td>
<td>MedicationStatement.dosage.route</td>
<td>Medication Section</td>
</tr>
<tr class="odd">
<td>Alcohol/Drug Use Indicators</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Social History Section</td>
</tr>
<tr class="even">
<td>Pregnancy</td>
<td>Encounter.diagnosis.condition(Condition.code)</td>
<td>Review of Systems - EMS Section</td>
</tr>
<tr class="odd">
<td>Last Oral Intake</td>
<td>EncounterObservation.value[x]</td>
<td>Review of Systems-EMS Section</td>
</tr>
<tr class="even">
<td>Date/Time Vital Signs Taken</td>
<td>EncounterObservation.issued</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Vitals Obtained Prior to this Unit's EMS Care</td>
<td>EncounterObservation.value[x]</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Cardiac Rhythm / Electrocardiography (ECG)</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>ECG Type</td>
<td>EncounterObservatio.type</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Method of ECG Interpretation</td>
<td>EncounterObservation.method</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>SBP (Systolic Blood Pressure)</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>DBP (Diastolic Blood Pressure)</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Method of Blood Pressure Measurement</td>
<td>EncounterObservation.method</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Mean Arterial Pressure</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Heart Rate</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Method of Heart Rate Measurement</td>
<td>EncounterObservation.method</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Pulse Oximetry</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Pulse Rhythm</td>
<td>EncounterObservation.value[x]</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Respiratory Rate</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Respiratory Effort</td>
<td>EncounterObservation.value[x]</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>End Title Carbon Dioxide (ETCO2)</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Carbon Monoxide (CO)</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Blood Glucose Level</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Glasgow Coma Score-Eye</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Glasgow Coma Score-Verbal</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Glasgow Coma Score-Motor</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Glasgow Coma Score-Qualifier</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Total Glasgow Coma Score</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Temperature</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Temperature Method</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Level of Responsiveness (AVPU)</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Pain Scale Score</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Pain Scale Type</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Stroke Scale Score</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Stroke Scale Type</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Reperfusion Checklist</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>APGAR</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Revised Trauma Score</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Estimated Body Weight in Kilograms</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Length Based Tape Measure</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Date/Time of Assessment</td>
<td>EncounterObservation.issued</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="even">
<td>Skin Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="odd">
<td>Head Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="even">
<td>Face Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="odd">
<td>Neck Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="even">
<td>Chest/Lungs Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="odd">
<td>Heart Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="even">
<td>Abdominal Assessment Finding Location</td>
<td>EncounterObservation.bodySite</td>
<td>Coded Detail Physical Assessment Section</td>
</tr>
<tr class="odd">
<td>Abdominal Assessment Finding Location</td>
<td>EncounterObservation.bodySite</td>
<td>Coded Detail Physical Assessment Section</td>
</tr>
<tr class="even">
<td>Abdomen Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Assessment Section</td>
</tr>
<tr class="odd">
<td>Pelvis/Genitourinary Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="even">
<td>Back and Spine Assessment Finding Location</td>
<td>EncounterObservation.bodySite</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="odd">
<td>Back and Spine Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="even">
<td>Extremity Assessment Finding Location</td>
<td>EncounterObservation.bodySite</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="odd">
<td>Extremities Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="even">
<td>Eye Assessment Finding Location</td>
<td>EncounterObservation.bodySite</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="odd">
<td>Eye Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="even">
<td>Mental Status Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="odd">
<td>Neurological Assessment</td>
<td>EncounterObservation.interpretation</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="even">
<td>Stroke/CVA Symptoms Resolved</td>
<td>Encounter.diagnosis.condition(Condition.clinicalStatus)</td>
<td>Coded Detail Physical Examination Section</td>
</tr>
<tr class="odd">
<td>Date/Time Medication Administered</td>
<td><p>EncounterMedicationAdministration.effective[x]</p>
<p>EncounterMedicationAdministration.effective.date/time</p></td>
<td>Medications Administered Section</td>
</tr>
<tr class="even">
<td>Medication Administered Prior to this Unit's EMS Care</td>
<td><p>EncounterMedicationAdministration.effective[x]</p>
<p>EncounterMedicationAdministration.effective.date/time</p></td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Medication Given</td>
<td>EncounterMedicationAdministration.resource</td>
<td>Medications Administered Section</td>
</tr>
<tr class="even">
<td>Medication Administered Route</td>
<td>EncounterMedicationAdministration.dosage.route</td>
<td>Medications Administered Section</td>
</tr>
<tr class="odd">
<td>Medication Dosage</td>
<td>EncounterMedicationAdministration.dosage</td>
<td>Medications Administered Section</td>
</tr>
<tr class="even">
<td>Medication Dosage Units</td>
<td>EncounterMedicationAdministration.dosage.dose</td>
<td>Medications Administered Section</td>
</tr>
<tr class="odd">
<td>Response to Medication</td>
<td>EncounterMedicationAdministration.note</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Medication Complication</td>
<td><p>EncounterAdverseEvent.reaction</p>
<p>EncounterAdverseEvent.Description</p></td>
<td>Allergy and Intolerances Concern Entry</td>
</tr>
<tr class="odd">
<td>Date/Time Procedure Performed</td>
<td>EncounterProcedure.performed[x].performed.dateTime</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="even">
<td>Procedure Performed Prior to this Unit's EMS Care</td>
<td>EncounterProcedure.performed[x].performed.dateTime</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="odd">
<td>Procedure</td>
<td>EncounterProcedure.code</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="even">
<td>Number of Procedure Attempts</td>
<td>EncounterProcedure.partOf.observation.value[x]</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="odd">
<td>Procedure Successful</td>
<td>EncounterProcedure Procedure.outcome</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="even">
<td>Procedure Complication</td>
<td>EncounterProcedure Procedure.status</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="odd">
<td>Response to Procedure</td>
<td>EncounterProcedure Procedure.outcome</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="even">
<td>Vascular Access Location</td>
<td>EncounterProcedure Procedure.bodySite</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="odd">
<td>Indications for Invasive Airway</td>
<td><p>EncounterProcedure Procedure.ReasonReference</p>
<p>EncounterProcedure Procedure.ReasonCode</p></td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="even">
<td>Date/Time Airway Device Placement Confirmation</td>
<td>EncounterProcedure Procedure.performedDateTime</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="odd">
<td>Airway Device Being Confirmed</td>
<td><p>EncounterProcedure Procedure.outcome</p>
<p>Procedure.code</p></td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="even">
<td>Crew Member ID</td>
<td>EncounterProcedure Procedure.performer</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="odd">
<td>Airway Complications Encountered</td>
<td>EncounterProcedure Procedure.status</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="even">
<td>Suspected Reasons for Failed Airway Management</td>
<td>EncounterProcedure Procedure.outcome</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="odd">
<td>Date/Time Decision to Manage the Patient with an Invasive Airway</td>
<td>EncounterProcedure Procedure.outcome.note</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="even">
<td>Date/Time Invasive Airway Placement Attempts Abandoned</td>
<td>EncounterProcedure Procedure.outcome</td>
<td>EMS Procedures Performed Section</td>
</tr>
<tr class="odd">
<td>Date/Time of Event (per Medical Device)</td>
<td>EncounterDevice.TimeDate</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Medical Device Event Type</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Medical Device Waveform Graphic Type</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Medical Device Waveform Graphic</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Medical Device Mode (Manual, AED, Pacing, CO2, O2, etc.)</td>
<td><p>Encounter.device – MedicalDeviceMode</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Medical Device ECG Lead</td>
<td>EncounterDevice.type</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Medical Device ECG Interpretation</td>
<td>EncounterObservation.Interpretation</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Type of Shock</td>
<td><p>EncounterProcedure –</p>
<p>DeviceShockType</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Shock or Pacing Energy</td>
<td><p>EncounterProcedure –</p>
<p>DeviceShockPacingEnergy</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Total Number of Shocks Delivered</td>
<td><p>EncounterProcedure –</p>
<p>DeviceNumberOfShocksDelivered</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Pacing Rate</td>
<td><p>EncounterProcedure –</p>
<p>DeviceRate</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
</tbody>
</table>

<span id="_Toc61339071" class="anchor"></span>

#### 6.6.X.5 Quality Data Import Option

The Content Consumer supporting the Quality Data Import Option SHALL
require receiving system to import the discrete data elements identified
in the following table.

Table 6.6.X.5-1: Quality Data Import Option FHIR and CDA Mapping

<table>
<thead>
<tr class="header">
<th>Paramedicine Data Element</th>
<th>FHIR Resource Location</th>
<th>CDA Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Patient Care Report Number type</td>
<td>Resource.composition.type</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Patient Care Report Number</td>
<td>Resource.composition.type</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>EMS Organization Identifier</td>
<td>Organization.Identifier</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Type of service requested</td>
<td>Encounter.type</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Level of care for this unit</td>
<td>HealthService.characteristic</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Additional Response Mode Descriptors</td>
<td><p>Encounter.encounter- responseModeDescriptor</p>
<p>**IHE extension**</p></td>
<td>EMS Response Section</td>
</tr>
<tr class="odd">
<td>Date/Time Procedure Performed</td>
<td>EncounterProcedure.performed[x].performed.dateTime</td>
<td>EMS Procedures and Interventions Section</td>
</tr>
<tr class="even">
<td>Procedure</td>
<td>EncounterProcedure.code</td>
<td>EMS Procedures and Interventions Section</td>
</tr>
<tr class="odd">
<td>PSAP Call Date/Time</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Response Section</td>
</tr>
<tr class="even">
<td>Unit Arrived on Scene Date/Time</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Response Section</td>
</tr>
<tr class="odd">
<td><p>Patient Contact</p>
<p>Date/time</p></td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Response Section</td>
</tr>
<tr class="even">
<td>Complaint</td>
<td>Encounter.diagnosis.condition(Condition.note)</td>
<td>EMS Situation Section</td>
</tr>
<tr class="odd">
<td>Primary Symptom</td>
<td>Encounter.diagnosis.condition(Condition.evidence.code)</td>
<td>EMS Situation Section / Reason for Referral</td>
</tr>
<tr class="even">
<td>Other Associated symptoms</td>
<td>Encounter.diagnosis.condition(Condition.evidence.code)</td>
<td>EMS Situation Section / Reason for Referral</td>
</tr>
<tr class="odd">
<td>Provider's Primary Impressions</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Situation Section / Reason for Referral</td>
</tr>
<tr class="even">
<td>Provider's Secondary Impressions</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Situation Section / Reason for Referral</td>
</tr>
<tr class="odd">
<td>Date/Time Last Known Well</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Situation Section /Review of Systems-EMS Section</td>
</tr>
<tr class="even">
<td>Destination/Transferred To, Name</td>
<td><p>Encounter.encounter- destinationName</p>
<p>**IHE extension**</p></td>
<td>EMS Situation</td>
</tr>
<tr class="odd">
<td>Destination/Transferred To, Code</td>
<td><p>Encounter.encounter- destinationIdentifier</p>
<p>**IHE extension**</p></td>
<td>EMS Situation</td>
</tr>
<tr class="even">
<td>Incident/Patient Disposition</td>
<td><p>Encounter.encounter- treatment</p>
<p>**IHE extension**</p></td>
<td>EMS Disposition Section</td>
</tr>
<tr class="odd">
<td>Type of Destination</td>
<td><p>Encounter.encounter- destinationType</p>
<p>**IHE extension**</p></td>
<td>EMS Disposition Section</td>
</tr>
<tr class="even">
<td>Hospital Capability Per EMS</td>
<td>HealthService.characteristic</td>
<td>EMS Disposition Section</td>
</tr>
<tr class="odd">
<td>Destination Team Pre-Arrival Alert or Activation</td>
<td><p>Encounter.encounter- Pre-arrivalAlertActivated</p>
<p>**IHE extension**</p></td>
<td>EMS Disposition Section</td>
</tr>
<tr class="even">
<td>Resuscitation Attempted By EMS</td>
<td>EncounterProcedure.code</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Arrest Witnessed By</td>
<td><p>Encounter.encounter – witness (Person)</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>CPR Care Provided Prior to EMS Arrival</td>
<td><p>Encounter.encounter – priorCprProvided</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Who Provided CPR Prior to EMS Arrival</td>
<td><p>Encounter.encounter – priorCprProvidedRole</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>AED Use Prior to EMS Arrival</td>
<td><p>Encounter.encounter – priorAedProvided</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Who Used AED Prior to EMS Arrival</td>
<td><p>Encounter.encounter – priorAedProvidedRole</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Type of CPR Provided</td>
<td><p>Encounter.encounter – priorCprProvidedType</p>
<p>**IHE Extension**</p></td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Any Return of Spontaneous Circulation</td>
<td>EncounterProcedure.outcome</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="even">
<td>Date/Time of Initial CPR</td>
<td>EncounterProcedure.performedPeriod.start</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Advanced Directives</td>
<td>DocumentReference</td>
<td>EMS Advance Directives Section</td>
</tr>
<tr class="even">
<td>SBP (Systolic Blood Pressure)</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>DBP (Diastolic Blood Pressure)</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Heart Rate</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Pulse Oximetry</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Respiratory Rate</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Blood Glucose Level</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Cardiac Rhythm / Electrocardiography (ECG)</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Cardiac Arrest Event Section</td>
</tr>
<tr class="odd">
<td>Stroke Scale Score</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Pain Scale Score</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Medication Given</td>
<td>EncounterMedicationAdministration.resource</td>
<td>Medications Administered Section</td>
</tr>
<tr class="even">
<td>Age</td>
<td>Encounter.subject (Patient.identifier)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Age Units</td>
<td>Encounter.subject (Patient.identifier)</td>
<td>Header</td>
</tr>
<tr class="even">
<td>Date of Birth</td>
<td>Encounter.subject (Patient.birthDate)</td>
<td>Header</td>
</tr>
<tr class="odd">
<td>Cause of Injury</td>
<td>Encounter.Observation.value</td>
<td>EMS Injury Incident Description Section</td>
</tr>
<tr class="even">
<td>Mass Casualty</td>
<td><p>Encounter.encounter- massCasualty</p>
<p>**IHE extension**</p></td>
<td>EMS Scene Section</td>
</tr>
<tr class="odd">
<td>Mechanism of Injury</td>
<td>No Mapping Available</td>
<td>EMS Injury Incident Description Section</td>
</tr>
</tbody>
</table>

#### 6.6.X.6 Trauma Data Import Option

The Content Consumer supporting the Trauma Data Import Option SHALL
support discrete import of the data elements identified in the following
table.

Table 6.6.X.6-1: Trauma Data Import Option FHIR and CDA Mapping

<table>
<thead>
<tr class="header">
<th>Paramedicine Data Element</th>
<th>FHIR Resource Location</th>
<th>CDA Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>EMS Dispatch Date</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Response Section</td>
</tr>
<tr class="even">
<td>Ems Dispatch Time</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Response Section</td>
</tr>
<tr class="odd">
<td>Ems Unit Arrival Date At Scene Or Transferring Facility</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Response Section</td>
</tr>
<tr class="even">
<td>Ems Unit Arrival Time At Scene Or Transferring Facility</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Response Section</td>
</tr>
<tr class="odd">
<td>Ems Unit Departure Date From Scene Or Transferring Facility</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Response Section</td>
</tr>
<tr class="even">
<td>Ems Unit Departure Time From Scene Or Transferring Facility</td>
<td><p>Encounter.statusHistory.code</p>
<p>Encounter.statusHistory.period.start</p>
<p>Encounter.statusHistory – Type</p>
<p>**IHE Extension*</p></td>
<td>EMS Response Section</td>
</tr>
<tr class="odd">
<td>Transport Mode</td>
<td><p>Encounter.encounter- transportMode</p>
<p>**IHE extension**</p></td>
<td>EMS Disposition Section</td>
</tr>
<tr class="even">
<td>Other Transport Mode</td>
<td><p>Encounter.encounter- transportMode</p>
<p>**IHE extension**</p></td>
<td>EMS Disposition Section</td>
</tr>
<tr class="odd">
<td>Initial Field Systolic Blood Pressure</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Initial Field Pulse Rate</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Initial Field Respiratory Rate</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Initial Field Oxygen Saturation</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Initial Field Gcs – Eye</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Initial Field Gcs – Verbal</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Initial Field Gcs – Motor</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="even">
<td>Initial Field Gcs – Total</td>
<td>EncounterObservation.value[x]</td>
<td>Coded Vital Signs Section</td>
</tr>
<tr class="odd">
<td>Inter-Facility Transfer</td>
<td><p>Encounter.encounter- transportMode</p>
<p>**IHE extension**</p></td>
<td>EMS Disposition Section</td>
</tr>
<tr class="even">
<td>Trauma Center Criteria</td>
<td>EncounterObservation.value[x]</td>
<td>EMS Injury Incident Description Section</td>
</tr>
<tr class="odd">
<td>Vehicular, Pedestrian, Other Risk Injury</td>
<td>No Mapping Available</td>
<td>EMS Injury Incident Description Section</td>
</tr>
</tbody>
</table>

<span id="_Toc61339073" class="anchor"></span>Volume 3 Appendices

Appendix A
==========

A.1 Data Elements Table
-----------------------

The list of data elements are informed by <https://nemsis.org/>.

<table>
<tbody>
<tr class="odd">
<td>NEMSIS Data Element</td>
<td>NEMSIS v3.5.0</td>
<td>FHIR Resource location</td>
<td>CDA Location</td>
</tr>
<tr class="even">
<td>Last name</td>
<td>ePatient.02</td>
<td>Patient:PatientUvIps.identifier</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/name</td>
</tr>
<tr class="odd">
<td>First name</td>
<td>ePatient.03</td>
<td>Patient:PatientUvIps.name</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/name</td>
</tr>
<tr class="even">
<td>middle initial</td>
<td>ePatient.04</td>
<td>Patient:PatientUvIps.name</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/name</td>
</tr>
<tr class="odd">
<td>home address</td>
<td>ePatient.05</td>
<td>Patient:PatientUvIps.name</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/addr</td>
</tr>
<tr class="even">
<td>home city</td>
<td>ePatient.06</td>
<td>Patient:PatientUvIps.address</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/addr</td>
</tr>
<tr class="odd">
<td>home country</td>
<td>ePatient.07</td>
<td>Patient:PatientUvIps.address</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/addr</td>
</tr>
<tr class="even">
<td>home state</td>
<td>ePatient.08</td>
<td>Patient:PatientUvIps.address</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/addr</td>
</tr>
<tr class="odd">
<td>home zip code</td>
<td>ePatient.09</td>
<td>Patient:PatientUvIps.address</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/addr</td>
</tr>
<tr class="even">
<td>country of residence</td>
<td>ePatient.10</td>
<td>Patient:PatientUvIps.address</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/addr</td>
</tr>
<tr class="odd">
<td>home census tract</td>
<td>ePatient.11</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>social security number</td>
<td>ePatient.12</td>
<td>Patient:PatientUvIps.identifier</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/id</td>
</tr>
<tr class="odd">
<td>gender</td>
<td>ePatient.13</td>
<td>Patient:PatientUvIps.gender</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/administrativeGenderCode</td>
</tr>
<tr class="even">
<td>race</td>
<td>ePatient.14</td>
<td>Patient.extension(us-core-race)</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Age</td>
<td>ePatient.15</td>
<td>Patient:PatientUvIps.birthDate</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/birthTime</td>
</tr>
<tr class="even">
<td>Age Units</td>
<td>ePatient.16</td>
<td>Patient:PatientUvIps.birthDate</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/birthTime</td>
</tr>
<tr class="odd">
<td>Date of Birth</td>
<td>ePatient.17</td>
<td>Patient:PatientUvIps.birthDate</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/patient/birthTime</td>
</tr>
<tr class="even">
<td>Patient's Phone Number</td>
<td>ePatient.18</td>
<td>Patient:PatientUvIps.telecom</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/telecom</td>
</tr>
<tr class="odd">
<td>Patient's email</td>
<td>ePatient.19</td>
<td>Patient:PatientUvIps.telecom</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/telecom</td>
</tr>
<tr class="even">
<td>State Issuing Driver's License</td>
<td>ePatient.20</td>
<td>Patient:PatientUvIps.identifier</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/id</td>
</tr>
<tr class="odd">
<td>Driver's License Number</td>
<td>ePatient.21</td>
<td>Patient:PatientUvIps.identifier</td>
<td>/ClinicalDocument/[IPS CDA recordTarget]/patientRole/id</td>
</tr>
<tr class="even">
<td>Alternate Home Residence</td>
<td>ePatient.22</td>
<td>Patient:PatientUvIps.address</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Primary Method of Payment</td>
<td>ePayment.01</td>
<td>Coverage.type</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Certificate of medical necessity (CMN)</td>
<td>ePayment.02</td>
<td>Servicerequest.reasonRefrence: DocumentReference</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Physician Certification Statement Signed</td>
<td>eOther.15</td>
<td>Servicerequest.reasonRefrence: DocumentReference.content.attachment</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Date Physician Certification Statement Signed</td>
<td>ePayment.03</td>
<td>Servicerequest.reasonRefrence: DocumentReference.context.period</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Reason for Physician Certification Statement</td>
<td>ePayment.04</td>
<td>Servicerequest.reasonCode</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Healthcare Provider Type Signing Physician Certification Statement</td>
<td>ePayment.05</td>
<td>Servicerequest.reasonRefrence: DocumentReference.context.related: PractitionerRole.code</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Last Name of Individual Signing Physician Certification Statement</td>
<td>ePayment.06</td>
<td>Servicerequest.reasonRefrence: DocumentReference.context.related: Practitioner.name</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>First Name of Individual Signing Physician Certification Statement</td>
<td>ePayment.07</td>
<td>Servicerequest.reasonRefrence: DocumentReference.context.related: Practitioner.name</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Insurance Company ID</td>
<td>ePayment.09</td>
<td>Coverage.payor:Organization.idetifier</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Insurance Company Name</td>
<td>ePayment.10</td>
<td>Coverage.payor:Organization.name</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Insurance Company Billing Priority</td>
<td>ePayment.11</td>
<td>Coverage.type</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Insurance Company Address</td>
<td>ePayment.12</td>
<td>Coverage.payor:Organization.address</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Insurance Company City</td>
<td>ePayment.13</td>
<td>Coverage.payor:Organization.address</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Insurance Company State</td>
<td>ePayment.14</td>
<td>Coverage.payor:Organization.address</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Insurance Company Zipcode</td>
<td>ePayment.15</td>
<td>Coverage.payor:Organization.address</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Insurance Company Country</td>
<td>ePayment.16</td>
<td>Coverage.payor:Organization.address</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Insurance Group ID</td>
<td>ePayment.17</td>
<td>Coverage.class.value</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Insurance Policy ID Number</td>
<td>ePayment.18</td>
<td>Coverage.class.value</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Last Name of the Insured</td>
<td>ePayment.19</td>
<td><p>Coverage.policyHolder:Patient.name</p>
<p>Coverage.policyHolder:RelatedPerson.name</p></td>
<td>N/A</td>
</tr>
<tr class="even">
<td>First Name of the Insured</td>
<td>ePayment.20</td>
<td><p>Coverage.policyHolder:Patient.name</p>
<p>Coverage.policyHolder:RelatedPerson.name</p></td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Middle initial/name of the Insured</td>
<td>ePayment.21</td>
<td><p>Coverage.policyHolder:Patient.name</p>
<p>Coverage.policyHolder:RelatedPerson.name</p></td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Relationship to the Insured</td>
<td>ePayment.22</td>
<td>Coverage.relationship</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Insurance Group Name</td>
<td>ePayment.58</td>
<td>Coverage.class.name</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Date of Birth of the Insured</td>
<td>ePayment.59</td>
<td>Coverage.benificiary:patient.birthdate</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian Last Name</td>
<td>ePayment.23</td>
<td>Patient:PatientUvIps.contact.name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/guardianPerson/name</td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian First Name</td>
<td>ePayment.24</td>
<td>Patient:PatientUvIps.contact.name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/guardianPerson/name</td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian Middle Initial/Name</td>
<td>ePayment.25</td>
<td>Patient:PatientUvIps.contact.name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/guardianPerson/name</td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian Street Address</td>
<td>ePayment.26</td>
<td>Patient:PatientUvIps.contact.address</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/addr</td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian City</td>
<td>ePayment.27</td>
<td>Patient:PatientUvIps.contact.address</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/addr</td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian State</td>
<td>ePayment.28</td>
<td>Patient:PatientUvIps.contact.address</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/addr</td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian Zip Code</td>
<td>ePayment.29</td>
<td>Patient:PatientUvIps.contact.address</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/addr</td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian Country</td>
<td>ePayment.30</td>
<td>Patient:PatientUvIps.contact.address</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/addr</td>
</tr>
<tr class="odd">
<td>Closest Relative/Guardian Phone Number</td>
<td>ePayment.31</td>
<td>Patient:PatientUvIps.contact.telecom</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/telecom<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian/telecom</td>
</tr>
<tr class="even">
<td>Closest Relative/Guardian Relationship</td>
<td>ePayment.32</td>
<td>Patient:PatientUvIps.contact.relationship</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/code<br />
/ClinicalDocument/[IPS CDA recordTarget]/patientRole/guardian</td>
</tr>
<tr class="odd">
<td>Patient's Employer</td>
<td>ePayment.33</td>
<td>Patient:PatientUvIps.contact.name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name</td>
</tr>
<tr class="even">
<td>Patient's Employer's Address</td>
<td>ePayment.34</td>
<td>Patient:PatientUvIps.contact.address</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr</td>
</tr>
<tr class="odd">
<td>Patient's Employer's City</td>
<td>ePayment.35</td>
<td>Patient:PatientUvIps.contact.address</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr</td>
</tr>
<tr class="even">
<td>Patient's Employer's State</td>
<td>ePayment.36</td>
<td>Patient:PatientUvIps.contact.address</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr</td>
</tr>
<tr class="odd">
<td>Patient's Employer's Zip Code</td>
<td>ePayment.37</td>
<td>Patient:PatientUvIps.contact.address</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr</td>
</tr>
<tr class="even">
<td>Patient's Employer's Country</td>
<td>ePayment.38</td>
<td>Patient:PatientUvIps.contact.address</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/addr</td>
</tr>
<tr class="odd">
<td>Patient's Employer's Primary Phone Number</td>
<td>ePayment.39</td>
<td>Patient:PatientUvIps.contact.telecom</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/telecom</td>
</tr>
<tr class="even">
<td>Last Name of Patient's Practitioner</td>
<td>eHistory.02</td>
<td>Patient:PatientUvIps.generalPractitioner.name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name</td>
</tr>
<tr class="odd">
<td>First Name of Patient's Practitioner</td>
<td>eHistory.03</td>
<td>Patient:PatientUvIps.generalPractitioner.name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name</td>
</tr>
<tr class="even">
<td>Middle Initial/Name of Patient's Practitioner</td>
<td>eHistory.04</td>
<td>Patient:PatientUvIps.generalPractitioner.name</td>
<td>/ClinicalDocument/[IPS Patient Contacts]/associatedEntity/associatedPerson/name</td>
</tr>
<tr class="odd">
<td>Advanced Directives</td>
<td>eHistory.05</td>
<td>Composition.section:sectionAdvanceDirectives</td>
<td>/ClinicalDocument/[IPS Advance Directives Section]</td>
</tr>
<tr class="even">
<td>Medication Allergies</td>
<td>eHistory.06</td>
<td>Composition.section:sectionAllergies.entry:allergyOrIntolerance</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance</td>
</tr>
<tr class="odd">
<td>Environmental/Food Allergies</td>
<td>eHistory.07</td>
<td>Composition.section:sectionAllergies.entry:allergyOrIntolerance</td>
<td>/ClinicalDocument/[IPS Allergies and Intolerances Section]/entry/[IPS Allergy and Intolerance Concern]/entryRelationship/[IPS Allergy or Intolerance</td>
</tr>
<tr class="even">
<td>Medical/Surgical History</td>
<td>eHistory.08</td>
<td><p>"Composition.section:sectionPastIllnessHx.entry:pastProblem</p>
<p>Composition.section:sectionProceduresHx.entry:procedure"</p></td>
<td>/ClinicalDocument/[IPS History of Past Illness Section]/entry/[IPS Problem Concern Entry]<br />
/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/code</td>
</tr>
<tr class="odd">
<td>The Patient's Type of Immunization</td>
<td>eHistory.10</td>
<td>Composition.section:sectionImmunizations.entry:immunization.vaccineCode</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/consumable/[IPS Immunization Medication Information]/manufacturedProduct/manufacturedMaterial/code</td>
</tr>
<tr class="even">
<td>Immunization Year</td>
<td>eHistory.11</td>
<td>Composition.section:sectionImmunizations.entry:immunization.occurrenceDateTime</td>
<td>/ClinicalDocument/[IPS Immunizations Section]/entry/[IPS Immunization]/effectiveTime</td>
</tr>
<tr class="odd">
<td>Current Medications</td>
<td>eHistory.12</td>
<td>Composition.section:sectionMedications.entry:medicationStatement</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]</td>
</tr>
<tr class="even">
<td>Current Medication Dose</td>
<td>eHistory.13</td>
<td>Composition.section:sectionMedications.entry:medicationStatement.dosage.doseAndRate.dose[x]</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[IPS Subordinate SubstanceAdministration]/doseQuantity</td>
</tr>
<tr class="odd">
<td>Current Medication Dosage Unit</td>
<td>eHistory.14</td>
<td>Composition.section:sectionMedications.entry:medicationStatement.dosage.doseAndRate.dose[x]</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[IPS Subordinate SubstanceAdministration]/doseQuantity</td>
</tr>
<tr class="even">
<td>Current Medication Administration Route</td>
<td>eHistory.15</td>
<td>Composition.section:sectionMedications.entry:medicationStatement.dosage.route</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/routeCode</td>
</tr>
<tr class="odd">
<td>Current Medication Frequency</td>
<td>eHistory.20</td>
<td>Composition.section:sectionMedications.entry:medicationStatement.dosage.timing</td>
<td>/ClinicalDocument/[IPS Medication Summary Section]/entry/[IPS Medication Statement]/entryRelationship/[IPS Subordinate SubstanceAdministration]/effectiveTime</td>
</tr>
<tr class="even">
<td>Presence of Emergency Information Form</td>
<td>eHistory.16</td>
<td>Encounter Observation.value[x]</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Alcohol/Drug Use Indicators</td>
<td>eHistory.17</td>
<td>Encounter Observation.value[x]</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Last Oral Intake</td>
<td>eHistory.19</td>
<td>Encounter Observation.value[x]</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Pregnancy</td>
<td>eHistory.18</td>
<td>Composition.section:sectionPregnancyHx.entry:pregnancyStatus</td>
<td>/ClinicalDocument/[IPS History of Pregnancy Section]/entry/[IPS Pregnancy Status Observation]</td>
</tr>
<tr class="even">
<td>Date/Time Vital Signs Taken</td>
<td>eVitals.01</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.effective[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/effectiveTime</td>
</tr>
<tr class="odd">
<td>Cardiac Rhythm / Electrocardiography (ECG)</td>
<td>eVitals.03</td>
<td>"Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>ECG Type</td>
<td>eVitals.04</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]"</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Method of ECG Interpretation</td>
<td>eVitals.05</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>SBP (Systolic Blood Pressure)</td>
<td>eVitals.06</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>DBP (Diastolic Blood Pressure)</td>
<td>eVitals.07</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Method of Blood Pressure Measurement</td>
<td>eVitals.08</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Mean Arterial Pressure</td>
<td>eVitals.09</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Heart Rate</td>
<td>eVitals.10</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Method of Heart Rate Measurement</td>
<td>eVitals.11</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Pulse Oximetry</td>
<td>eVitals.12</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Pulse Rhythm</td>
<td>eVitals.13</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Respiratory Rate</td>
<td>eVitals.14</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Respiratory Effort</td>
<td>eVitals.15</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>End Title Carbon Dioxide (ETCO2)</td>
<td>eVitals.16</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Carbon Monoxide (CO)</td>
<td>eVitals.17</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Blood Glucose Level</td>
<td>eVitals.18</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Glasgow Coma Score-Eye</td>
<td>eVitals.19</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Glasgow Coma Score-Verbal</td>
<td>eVitals.20</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Glasgow Coma Score-Motor</td>
<td>eVitals.21</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Glasgow Coma Score-Qualifier</td>
<td>eVitals.22</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Total Glasgow Coma Score</td>
<td>eVitals.23</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Temperature</td>
<td>eVitals.24</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Temperature Method</td>
<td>eVitals.25</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Level of Responsiveness (AVPU)</td>
<td>eVitals.26</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Pain Scale Score</td>
<td>eVitals.27</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Pain Scale Type</td>
<td>eVitals.28</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Stroke Scale Score</td>
<td>eVitals.29</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Stroke Scale Type</td>
<td>eVitals.30</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Reperfusion Checklist</td>
<td>eVitals.31</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>APGAR</td>
<td>eVitals.32</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Revised Trauma Score</td>
<td>eVitals.33</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Date/Time of Laboratory or Imaging Result</td>
<td>eLabs.01</td>
<td>Composition.section:sectionResults.entry:Observation.effective[x]<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.effective[x]</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/effectiveTime<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/effectiveTime</td>
</tr>
<tr class="odd">
<td>Study/Result Prior to this Unit's EMS Care</td>
<td>eLabs.02</td>
<td>Composition.section:sectionResults.entry:Observation.effective[x]<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.effective[x]</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/effectiveTime<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/effectiveTime</td>
</tr>
<tr class="even">
<td>Laboratory Result Type</td>
<td>eLabs.03</td>
<td>Composition.section:sectionResults.entry:results-observation.category<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.code</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/code<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/code</td>
</tr>
<tr class="odd">
<td>Laboratory Result</td>
<td>eLabs.04</td>
<td>Composition.section:sectionResults.text<br />
Composition.section:sectionResults.entry:Observation.text<br />
Composition.section:sectionResults.entry:results-observation.value[x]<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.value[x]</td>
<td>/ClinicalDocument/[IPS Results Section]/text<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/value</td>
</tr>
<tr class="even">
<td>Imaging Study Type</td>
<td>eLabs.05</td>
<td>Composition.section:sectionResults.entry:results-observation.category<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.code</td>
<td>/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/code<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/code</td>
</tr>
<tr class="odd">
<td>Imaging Study Results</td>
<td>eLabs.06</td>
<td>Composition.section:sectionResults.text<br />
Composition.section:sectionResults.entry:Observation.text<br />
Composition.section:sectionResults.entry:results-observation.value[x]<br />
Composition.section:sectionResults.entry:results-diagnosticReport.result:observation-results.value[x]</td>
<td>/ClinicalDocument/[IPS Results Section]/text<br />
/ClinicalDocument/[IPS Results Section]/entry/[IPS Result Organizer]/component/observation/value</td>
</tr>
<tr class="even">
<td>Imaging Study File or Waveform Graphic Type</td>
<td>eLabs.07</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Imaging Study File or Waveform Graphic</td>
<td>eLabs.08</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Estimated Body Weight in Kilograms</td>
<td>eExam.01</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Length Based Tape Measure</td>
<td>eExam.02</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Date/Time of Assessment</td>
<td>eExam.03</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Skin Assessment</td>
<td>eExam.04</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Head Assessment</td>
<td>eExam.05</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Face Assessment</td>
<td>eExam.06</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Neck Assessment</td>
<td>eExam.07</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Heart Assessment</td>
<td>eExam.09</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Abdominal Assessment Finding Location</td>
<td>eExam.10</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Abdomen Assessment</td>
<td>eExam.11</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Pelvis/Genitourinary Assessment</td>
<td>eExam.12</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Back and Spine Assessment Finding Location</td>
<td>eExam.13</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Back and Spine Assessment</td>
<td>eExam.14</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Extremity Assessment Finding Location</td>
<td>eExam.15</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Extremities Assessment</td>
<td>eExam.16</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Eye Assessment Finding Location</td>
<td>eExam.17</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Eye Assessment</td>
<td>eExam.18</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Mental Status Assessment</td>
<td>eExam.19</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Neurological Assessment</td>
<td>eExam.20</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Lung Assessment Finding Location</td>
<td>eExam.22</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Lung Assessment</td>
<td>eExam.23</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Chest Assessment Finding Location</td>
<td>eExam.24</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Chest Assessment</td>
<td>eExam.25</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="odd">
<td>Stroke/CVA Symptoms Resolved</td>
<td>eExam.21</td>
<td>Composition.section:sectionVitalSigns.entry:vitalSign.code<br />
Composition.section:sectionVitalSigns.entry:vitalSign.value[x]<br />
Composition.section:sectionVitalSigns.entry:vitalSign.component.value[x]</td>
<td>/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/code<br />
/ClinicalDocument/[IPS Vital Signs Section]/entry/[IPS Vital Signs Organizer]/component/[IPS Vital Signs Observation]/value</td>
</tr>
<tr class="even">
<td>Date/Time Procedure Performed</td>
<td>eProcedures.01</td>
<td>Composition.section:sectionProceduresHx.entry:procedure.performedDateTime</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/effectiveTime</td>
</tr>
<tr class="odd">
<td>Procedure Performed Prior to this Unit's EMS Care</td>
<td>eProcedures.02</td>
<td>Composition.section:sectionProceduresHx.entry:procedure.performedDateTime</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]/effectiveTime</td>
</tr>
<tr class="even">
<td>Procedure</td>
<td>eProcedures.03</td>
<td>Composition.section:sectionProceduresHx.entry:procedure</td>
<td>/ClinicalDocument/[IPS History of Procedures Section]/entry/[IPS Procedure Entry]</td>
</tr>
<tr class="odd">
<td>Destination/Transferred To, Name</td>
<td>eDisposition.01</td>
<td>ServiceRequest.locationReference: Location.name</td>
<td>/ClinicalDocument/[CDA documentationof]</td>
</tr>
<tr class="even">
<td>Destination Street Address</td>
<td>eDisposition.03</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td>/ClinicalDocument/[CDA documentationof]</td>
</tr>
<tr class="odd">
<td>Destination City</td>
<td>eDisposition.04</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td>/ClinicalDocument/[CDA documentationof]</td>
</tr>
<tr class="even">
<td>Destination State</td>
<td>eDisposition.05</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td>/ClinicalDocument/[CDA documentationof]</td>
</tr>
<tr class="odd">
<td>Destination County</td>
<td>eDisposition.06</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td>/ClinicalDocument/[CDA documentationof]</td>
</tr>
<tr class="even">
<td>Destination ZIP Code</td>
<td>eDisposition.07</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td>/ClinicalDocument/[CDA documentationof]</td>
</tr>
<tr class="odd">
<td>Destination Country</td>
<td>eDisposition.08</td>
<td>ServiceRequest.locationReference: Location.address</td>
<td>/ClinicalDocument/[CDA documentationof]</td>
</tr>
</tbody>
</table>

<span id="_Toc61339076" class="anchor"></span>Volume 4 – National
Extensions

Add appropriate Country section

4 National Extensions
=====================

4.I National Extensions for IHE USA
-----------------------------------

### 4.I.1 Comment Submission

This national extension document was authored under the sponsorship and
supervision of the IHE Patient Care Coordination Technical Committee who
welcome comments on this document and the IHE USA initiative. Comments
should be directed to: <http://www.ihe.net/PCC_Public_Comments>.

### 4.I.2 Paramedicine Care Summary PCS

#### 4.I.2.1 PCS US Volume 3 Constraints 

##### 4.I.2.1.1 PCS US Volume 3 Attribute Constraints

The following attribute cardinalities constraints apply in the US.

Table 4.I.2.1.1-1: US Attribute Cardinality Constraints

|                       |              |
|-----------------------|--------------|
| Attribute             | Cardinality  |
| Race                  | RE \[0..\*\] |
| Ethnicity             | RE \[0..1\]  |
| Religious Affiliation | RE \[0..\*\] |

##### 4.I.2.1.2 PCS US Volume 3 Section Constraints

The following additional cardinality constraints apply to the
Paramedicine Care document specification and entries in Table
6.3.1.D.5-1 Paramedicine Care Summary (PCS) Document Content Module
Specification

Table 4.I.2.1.2-1: PCS US Section Constraints

<table>
<tbody>
<tr class="odd">
<td>Cardinality</td>
<td>Section Element</td>
<td>Value Set OID</td>
<td>Specification Document</td>
<td>Vocabulary Constraint</td>
</tr>
<tr class="even">
<td><p>R</p>
<p>[1..1]</p></td>
<td>EMS Protocol Section</td>
<td>2.16.840.1.113883.17.3.10.1.7</td>
<td>HL7 EMS Run Report R2</td>
<td></td>
</tr>
<tr class="odd">
<td><p>RE</p>
<p>[0..1]</p></td>
<td>EMS Billing Section</td>
<td>2.16.840.1.113883.17.3.10.1.5</td>
<td>HL7 EMS Run Report R2</td>
<td>6.3.D.5.3</td>
</tr>
</tbody>
</table>

#### 4.I.2.2 PCS Value Set Binding for US Realm Concept Domains 

This section defines the actual value sets and code systems for any
coded concepts that were described by concept domains in the main
profile and binds the value set to the coded concepts.

Table 4.I.2.2-1: PCS Value Set Binding for US Realm Concept Domains

|                                  |                                                    |                               |
|----------------------------------|----------------------------------------------------|-------------------------------|
| UV Concept Domain                | US Realm Vocabulary Binding or Single Code Binding | Value Set OID                 |
| Ethnicity                        | Ethnicity Group                                    | 2.16.840.1.114222.4.11.837    |
| Marital Status                   | HL7 Marital Status                                 | 2.16.840.1.113883.1.11.12212  |
| Race                             | RaceCategory                                       | 2.16.840.1.114222.4.11.836    |
| sDTCRaceCode                     | Race                                               | 2.16.840.1.113883.1.11.14914  |
| Religious Affiliation            | HL7 Religious Affiliation                          | 2.16.840.1.113883.1.11.19185  |
| Language Communication           | Language                                           | 2.16.840.1.113883.1.11.11526  |
| Data Enterer                     | Assigned entity                                    | 2.16.840.1.113883.4.6         |
| Confidentiality code             | HL7 BasicConfidentialityKind                       | 2.16.840.1.113883.1.11.16926  |
| Provider role                    | ProviderRole                                       | 2.16.840.1.113883.17.3.11.46  |
| Destination                      | associatedEntity                                   | 2.16.840.1.113883.11.20.9.33  |
| DestinationType                  | DestinationType                                    | 2.16.840.1.113883.17.3.11.69  |
| Service Type                     | Service Type                                       | 2.16.840.1.113883.17.3.11.79  |
| advanced directives              | AdvanceDirectiveType                               | 2.16.840.1.113883.17.3.11.63  |
| Allergen                         | RxNorm                                             | 2.16.840.1.113883.6.88        |
| UnitLevelOfCare                  | UnitLevelOfCare                                    | 2.16.840.1.113883.17.3.11.105 |
| Medications Administration route | FDA Route of Administration                        | 2.16.840.1.113883.17.3.11.43  |
| Manufactured Material            | RxNorm                                             | 2.16.840.1.113883.6.88        |
| ProviderResponseRole             | ProviderResponseRole                               | 2.16.840.1.113883.17.3.11.80  |
| CrewRoleLevel                    | CrewRoleLevel                                      | 2.16.840.1.113883.17.3.11.81  |
| UnitResponseRole                 | UnitResponseRole                                   | 2.16.840.1.113883.17.3.11.82  |
| StrokeScale                      | StrokeScale                                        | 2.16.840.1.113883.17.3.11.88  |
| Trauma Center Criteria           | TraumaCenterCriteria                               | 2.16.840.1.113883.17.3.11.3   |
| EMS Level Of Service             | EMSLevelOfService                                  | 2.16.840.1.113883.17.3.11.70  |

<span id="_Toc61339085" class="anchor"></span>Volume 4 Appendices

N/A
