### Issues

#### Open Issues

1.  What are the implications to this profile of the current
    developments in HL7 related to supporting Document and/or Note
    sourcing, retrieval, creation, and consumption? There are ongoing
    conversations in the Patient Care Workgroup around coming up with a
    proposal for managing documents and notes within FHIR. Some
    viewpoints are focused on simply locating clinical documents and/or
    notes (i.e., metadata) whereas as other viewpoints desire to explore
    what content might actually be included in the documents and notes.

2.  See HL7 patient care work group discussion:
    > [*http://wiki.hl7.org/index.php?title=ClinicalNote\_FHIR\_Resource\_Proposal*](http://wiki.hl7.org/index.php?title=ClinicalNote_FHIR_Resource_Proposal)
    > See Monday Q2 HL7 WGM discussion related to this topic:
    > [*http://wiki.hl7.org/index.php?title=January\_2018\_WGM\_New\_Orleans;\_Jan\_27\_to\_Feb\_8*](http://wiki.hl7.org/index.php?title=January_2018_WGM_New_Orleans;_Jan_27_to_Feb_8)


3.  There are a number of issues relating to the FHIR mapping and
    resources needed to support this profile:

4.  Investigate the FHIR process for defining the resources required to
    > fulfill NEMSIS.

5.  The injury information may need to be more extensive modeling in
    > FHIR.

6.  There is no value set in FHIR relating to the level of care of
    > ambulance units.

7.  Extensions in FHIR need to me made to help include some of the
    > needed attributes.

8.  IHE has filed a ticket against the FHIR specification \#16237 to
    > allow for EMS events to be recorded in a status history without
    > the use of the extension

9.  IHE has filed a ticket against the FHIR specification \#16238 to
    > allow for there to be an outcome element for the end of the
    > encounter.

10.  Document reference for Advanced Directives in the FHIR mapping table
    > can support the use case as it exists today. Currently there are
    > ongoing efforts within HL7 to make available the clauses of an
    > advanced directives available in coded form.

11.  Should there be a section which explicitly describes the differences
    in EMS PCR concepts as opposed to the IHE Medical Summary Sections.
    For example, the Advanced Directives Section in the Medical Summary
    allows for the inclusion of the Advanced Directive documentation (or
    links to the documentation). The EMS PCR provides coding as to the
    type of Advanced Directives which the EMS knows exists. OR do we
    just create a new Section in 6.3.1.D.5x and discuss the content.

12.  The EMS Situation Chief Complaint is used to populate the Reason for
    > Referral as well as the Primary Symptoms, Other Associated
    > Symptoms, and Provider’s Primary and Secondary Impressions.

13.  The EMS Situation

14.  The EMS Medical Allergies and Environment/Food Allergies are used to
    > populate the standard Allergies and Adverse Reactions Section.

15.  The EMS Current Medications is used to populate the standard
    > Medications Section.

16.  The EMS Vital Signs are used to populate the standard Vital Signs
    > Section. Note: This includes Body Weight which is documented in
    > the EMS Physical Assessment Section.

17.  The EMS Physical Assessment us used to populate the standard
    > Physical Examination Section.

18.  The EMS Medications Administered is used to populate the standard
    > Medications Administered and Allergies and Adverse Reactions
    > Sections.

19.  The Pregnancy Status, Last Oral Intake and Last Known Well data
    > elements have been populated to a new Review of Systems – EMS
    > Section.

20.  In consideration of reusable vital sign concepts:

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


21.  The following vital signs are not included in the specification:

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

22.  The following HL7 EMS Patient Care Report value sets are referenced,
    but no Value Sets have been defined. This information is needed so
    that the specification can be complete and decisions can be made on
    whether the value set needs to be internationalized.

<!-- -->

1.  MedicationClinical Drug (2.16.840.1.113883.3.88.12.80.17)

2.  Medication omission reason (2.16.840.1.113883.17.3.5.42)

<!-- -->

23.  The following attributes are not modeled in this specification
    because this use case focuses on communicating relevant information
    from EMS into the hospital:

<!-- -->

1.  Medication Response Observation

2.  Medication Prior Administration Observation

3.  Patient age (can be computed from birthdate)

4.  Barrier to care

<!-- -->

24.  In order to use the standard Medications Section from the Medical
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

25.  In order to use the standard Medications Administered Section from
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

26.  A new Review of Systems – EMS section has been created which
    includes information related to Pregnancy Status, Last Oral Intake,
    and Time Last Known Well.

27.  Public Comment input is requested to review the EMS Cardiac Arrest
    Event Section to ensure there aren’t any US Specific concepts.

28.  Public Comment input is requested to review the transformation of
    the EMS Patient Care Report information for use in the Reason for
    Referral Section.

29.  Public Comment input is requested to review whether the EMS
    Situation Section should be moved forward since most of the
    information is transformed to other Sections within the EMS Patient
    Care Medical Summary.

30.  Should there be a special section to “vital signs obtained prior to
    EMS” that should be specially tagged?

31.  Review the FHIR mapping for the Medications sections. There seem to
    have a combination of complex and simple uses for the FHIR
    structuring and we are unsure is it is appropriate to be mixing the
    two.

32.  Review the FHIR mapping for the “protocol age category”.

33.  A complete example of the Paramedicine Care Summary (PCS) Document
    Content Module should be made to be available on the IHE ftp server
    at: <ftp://ftp.ihe.net/TF_Implementation_Material/PCC/PCS/>.

34.  The LOINC code more specific to the CDA documents will be requested.

10. The following data elements do not currently have FHIR resources
    that they can be mapped to. When they are created they will be added
    to the 6.6.X.3.2 FHIR Resource Data Specifications table.

1.  	eSoftware Creator

2.  	eSoftware Name

3.  	eSoftware Version

4.  	Standby Purpose

5.  	Primary Role of the Unit

6.  	Type of dispatch delay

7.  	Type of response delay

8.  	Type of scene delay

9.  	Type of transport delay

10. 	Type of turn-around delay

11. 	EMS vehicle (unit) number

12. 	EMS unit call sign

13. 	Vehicle Dispatch GPS Location

14. 	EMD Performed

15. 	EMD Card Number

16. 	Dispatch Center Name or ID

17. 	Unit Dispatched CAD Record ID

18. 	Response Urgency

19. 	First EMS Unit on Scene

20. 	Date/Time Initial Responder Arrived on Scene

21. 	Numbers of Patients on Scene

22. 	Scene GPS Location

23. 	Incident Facility or Location Name

24. 	Incident Street Address

25. 	Incident Apartment, Suite, or Room

26. 	Time Units of Duration of Complaint

27. 	Patient's Occupational Industry

28. 	Patient's Occupation

29. 	Presence of Emergency Information Form

30. 	Destination GPS Location

31. 	Type of Destination

32. 	Hospital In-Patient Destination

33. 	Date/Time of Destination Prearrival Alert or Activation

#### Closed Issues

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