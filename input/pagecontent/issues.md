### Issues

#### Open Issues

mPSCOpenIssue_001: What are the implications to this profile of the current
    developments in HL7 related to supporting Document and/or Note
    sourcing, retrieval, creation, and consumption? There are ongoing
    conversations in the Patient Care Workgroup around coming up with a
    proposal for managing documents and notes within FHIR. Some
    viewpoints are focused on simply locating clinical documents and/or
    notes (i.e., metadata) whereas as other viewpoints desire to explore
    what content might actually be included in the documents and notes.

mPSCOpenIssue_002: See HL7 patient care work group discussion: [*http://wiki.hl7.org/index.php?title=ClinicalNote\_FHIR\_Resource\_Proposal*](http://wiki.hl7.org/index.php?title=ClinicalNote_FHIR_Resource_Proposal)
    See Monday Q2 HL7 WGM discussion related to this topic: [*http://wiki.hl7.org/index.php?title=January\_2018\_WGM\_New\_Orleans;\_Jan\_27\_to\_Feb\_8*](http://wiki.hl7.org/index.php?title=January_2018_WGM_New_Orleans;_Jan_27_to_Feb_8)


mPSCOpenIssue_003: There are a number of issues relating to the FHIR mapping and resources needed to support this profile:

 - Investigate the FHIR process for defining the resources required to fulfill NEMSIS.

 - The injury information may need to have more extensive modeling in FHIR.

 - There is no value set in FHIR relating to the level of care of ambulance units.

 - Extensions in FHIR need to me made to help include some of the needed attributes.

 - IHE has filed a ticket against the FHIR specification \#16237 to allow for EMS events to be recorded in a status history without the use of the extension

 - IHE has filed a ticket against the FHIR specification \#16238 to allow for there to be an outcome element for the end of the encounter.

 - Document reference for Advanced Directives in the FHIR mapping table can support the use case as it exists today. Currently there are ongoing efforts within HL7 to make available the clauses of an advanced directives available in coded form.

mPSCOpenIssue_003: Should there be a section which explicitly describes the differences
    in EMS PCR concepts as opposed to the IHE Medical Summary Sections.
    For example, the Advanced Directives Section in the Medical Summary
    allows for the inclusion of the Advanced Directive documentation (or
    links to the documentation). The EMS PCR provides coding as to the
    type of Advanced Directives which the EMS knows exists. OR do we
    just create a new Section in 6.3.1.D.5x and discuss the content.

mPSCOpenIssue_012: The EMS Situation Chief Complaint is used to populate the Reason for
    > Referral as well as the Primary Symptoms, Other Associated
    > Symptoms, and Provider’s Primary and Secondary Impressions.

mPSCOpenIssue_013: The EMS Situation

mPSCOpenIssue_014: The EMS Medical Allergies and Environment/Food Allergies are used to
    > populate the standard Allergies and Adverse Reactions Section.

mPSCOpenIssue_015: The EMS Current Medications is used to populate the standard Medications Section.

mPSCOpenIssue_016: The EMS Vital Signs are used to populate the standard Vital Signs
    > Section. Note: This includes Body Weight which is documented in
    > the EMS Physical Assessment Section.

mPSCOpenIssue_017: The EMS Physical Assessment us used to populate the standard
    > Physical Examination Section.

mPSCOpenIssue_018: The EMS Medications Administered is used to populate the standard
    > Medications Administered and Allergies and Adverse Reactions
    > Sections.

mPSCOpenIssue_019: The Pregnancy Status, Last Oral Intake and Last Known Well data
    > elements have been populated to a new Review of Systems – EMS
    > Section.

mPSCOpenIssue_020: In consideration of reusable vital sign concepts:
	- 8884-9 Heart rate rhythm is used for the vital signs instead of 67519-9 Cardiac rhythm NEMSIS
	- 72089-6 Total score \[NIH Stroke Scale\] is used for the vital signs instead of 67520-7 Stroke scale overall interpretation NEMSIS
	- 11454-6 Responsiveness assessment at First encounter is used for the vital signs instead of 67775-7 Level of responsiveness NEMSIS
	- 2710-2 Oxygen Saturation is used for the vital signs instead of 2708-6 Oxygen saturation in Arterial blood
	- Also included in vital sign metrics is 80341-1 Respiratory effort, which is not in the EMS Run Report, but is part of the data dictionary for this specification
	- The EMS VITAL SIGNS created a new Vital Signs Organizer to contain all of the additional Vital Signs collected. This has been modelled using the IHE PCC Vital Signs adding the additional vital sign observations

mPSCOpenIssue_021: The following vital signs are not included in the specification:
	- Reperfusion check list - This is a checklist and does not appear to be a vital sign. If it is required, it needs to be modelled and additional information needs to be (what are the outputs that need to be captured).
	- The Respiratory Effort is not currently included in the EMS Patient Care Report. Are there any constraints that should be placed on the Respiratory Effort vocabulary?
	- Pulse Rhythm is not currently included in the EMS Patient Care Report. No definition exists in either the IHE or HL7 CDA specifications.

mPSCOpenIssue_022: The following HL7 EMS Patient Care Report value sets are referenced, but no Value Sets have been defined. This information is needed so that the specification can be complete and decisions can be made on whether the value set needs to be internationalized.
	- MedicationClinical Drug (2.16.840.1.113883.3.88.12.80.17)
	- Medication omission reason (2.16.840.1.113883.17.3.5.42)

mPSCOpenIssue_023: The following attributes are not modeled in this specification because this use case focuses on communicating relevant information from EMS into the hospital:
	- Medication Response Observation
	- Medication Prior Administration Observation
	- Patient age (can be computed from birthdate)
	- Barrier to care

mPSCOpenIssue_024: In order to use the standard Medications Section from the Medical Summary, a number of the EMS Current Medication concepts were transformed. Public Comment is requesting that these transformations be verified.,
	- we have the ability to document Drug Treatment Unknown and No Drug Therapy Prescribed
	- There are currently no codes to indicate the Patient is on Anticoagulants (without specifying the substance).
	- What should the SNOMED CT parent be to specify allergen (This should be an existing international value set). Recommendation is to use the HL7 Allergen Type mapped to SNOMED CT.

mPSCOpenIssue_025: In order to use the standard Medications Administered Section from the Medical Summary, a number of the EMS Medications Administered concepts were transformed (and other were not). Public Comment is requesting that these transformations be reviewed.
	- Reason for not Administering the Medication was moved forward.
	- Medication Complications were moved to the standard Allergies and Adverse Reactions Section.
	- Medication Response Observation was not moved forward.
	- Medications Prior to Administration was not moved forward.

mPSCOpenIssue_026: A new Review of Systems – EMS section has been created which
    includes information related to Pregnancy Status, Last Oral Intake,
    and Time Last Known Well.

mPSCOpenIssue_027: Public Comment input is requested to review the EMS Cardiac Arrest
    Event Section to ensure there aren’t any US Specific concepts.

mPSCOpenIssue_028: Public Comment input is requested to review the transformation of
    the EMS Patient Care Report information for use in the Reason for
    Referral Section.

mPSCOpenIssue_029: Public Comment input is requested to review whether the EMS
    Situation Section should be moved forward since most of the
    information is transformed to other Sections within the EMS Patient
    Care Medical Summary.

mPSCOpenIssue_030: Should there be a special section to “vital signs obtained prior to EMS” that should be specially tagged?

mPSCOpenIssue_031: Review the FHIR mapping for the Medications sections. There seem to
    have a combination of complex and simple uses for the FHIR
    structuring and we are unsure is it is appropriate to be mixing the
    two.

mPSCOpenIssue_032: Review the FHIR mapping for the “protocol age category”.

mPSCOpenIssue_033: A complete example of the mobile Paramedicine Summary of Care (mPSC) Document
    Content Module should be made to be available on the IHE ftp server
    at: <ftp://ftp.ihe.net/TF_Implementation_Material/PCC/mPSC/>.

mPSCOpenIssue_034: The LOINC code more specific to the CDA documents will be requested.

mPSCOpenIssue_035: The following data elements do not currently have FHIR resources that they can be mapped to. When they are created they will be added to the 6.6.X.3.2 FHIR Resource Data Specifications table.
	- eSoftware Creator
	- eSoftware Name
	- eSoftware Version
	- Standby Purpose
	- Primary Role of the Unit
	- Type of dispatch delay
	- Type of response delay
	- Type of scene delay
	- Type of transport delay
	- Type of turn-around delay
	- EMS vehicle (unit) number
	- EMS unit call sign
	- Vehicle Dispatch GPS Location
	- EMD Performed
	- EMD Card Number
	- Dispatch Center Name or ID
	- Unit Dispatched CAD Record ID
	- Response Urgency
	- First EMS Unit on Scene
	- Date/Time Initial Responder Arrived on Scene
	- Numbers of Patients on Scene
	- Scene GPS Location
	- Incident Facility or Location Name
	- Incident Street Address
	- Incident Apartment, Suite, or Room
	- Time Units of Duration of Complaint
	- Patient's Occupational Industry
	- Patient's Occupation
	- Presence of Emergency Information Form
	- Destination GPS Location
	- Type of Destination
	- Hospital In-Patient Destination
	- Date/Time of Destination Prearrival Alert or Activation

mPSCOpenIssue_036: Seeking input - WE have modeled the Pain Severity score and the Pain Scale type as two separate observations. WIth investigetion we fould a LOINC Pain assesment panel: 38212-7. This panel includes a number of obsevations around apin assmeent including the codes we used for the observations. There is an additional approach that can be take in FHIR where we could deffine the Pain Scale type as a method with the reported pain score. We are looking to find the best way to model this concept. 
mPSCOpenIssue_037: LOINC 67521-5 Stroke scale type has a USA centric Normative Answer set bound to it. Either that needs to be edited in LOINC to decontrain the set or a new loinc code for this observation needs to be requested from LOINC 
mPSCOpenIssue_038: APGAR score modeling. seeking insite on how to model the Apgar score pannels
mPSCOpenIssue_039: Service request FHIR resource category element may need to have a deffined extensable value set of values in SNOMED to advise the types of service actegories that Paramedicine organizations may regulary provide 
mPSCOpenIssue_040: code element in the service request resource may need a deffined, extensible, value set 
mPSCOpenIssue_041: Inviting comment on service request quantity element from international point of view 

mPSCOpenIssue_042: the http://terminology.hl7.org/CodeSystem/data-absent-reason value set was extended to include more elements that are used in NEMSIS. SNOMED does not have all the atributes to have a 1-to-1 coorelation with NEMSIS codes. The follow codes are mapped to slightly different codes:
	- Instead of using a "not reported" attribute, the SNOMED-CT 410534003 "Not indicated" code will be used instead.
	- Instead of using a "Exam Finding Not Present" attribute, the SNOMED-CT 373572006 "Clinical finding absent" code will be used instead.  
	- NEMSIS 8801009 Medication Already Taken cannot have a SNOMED-CT code due to post coordination. the SNOMED-CT 246488008 "Drug used" atribute used instead 
	- Instead of using a "...." attribute, the SNOMED-CT .... "...." code will be used instead.  
mPSCOpenIssue_043: The Revised Trauma Score is a physiologic scoring system based on the initial vital signs of a patient.[1] A lower score indicates a higher severity of injury. This is a calculated score deffined in https://en.wikipedia.org/wiki/Revised_Trauma_Score . Both NEMSIS and NICTIZ have this concept deffined in their standards, however this score is calculated using the already profiled and documented vitals. As long as those vitals are sent in a message the score can be calculated by the reciving system. This data element will not be deffined in this profile at this time.
#### Closed Issues

1.  (2/12/2018) Committee decided to use both CDA and FHIR. This is the
    same approach used in RIPT. CDA is more prevalent in "production"
    settings and is expected to remain so for the expected future and
    thus needs to be included. FHIR will help to "future-proof" by
    providing an implementation path for vendors that are newer to the
    market and not willing to invest in a full CDA supported
    infrastructure.

2.  The mPSC Profile leverages Sections/Entries from the HL7 EMS Patient
    Care Report which have US Realm Constraints, and used, were they
    exists, sections and entries that represent the information from the
    IHE CDA content modules so that discrete import and interpretation
    are able to be more readily used by EMRs that already support IHE
    Medical Summary.

3.  The mPSC Profile adds to the IHE Medical Summary constraints those
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
    record via the mobile Paramedicine Summary of Care-Complete Report; however,
    the data in the mobile Paramedicine Summary of Care – Clinical subset should
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