Profile:   IHE_PCC_ParamedicineSummary_Composition_Complete_Report 
Parent: IHE_PCC_ParamedicineSummary_Composition_ClinicalSubset
Id:             IHE.PCC.ParamedicineSummary.Composition.Complete.Report 
Title: "Paramedicince Summary Composition Clinical Subset"
Description:      """
TODO 
"""

* section contains
    sectionEMSTimes 1..1 MS and 
    sectionEmergencyNotificationSection 1..1 MS and 
    sectionTransport 1..1 MS and 
    secrtionAttatchments 0..1 and 
    sectionConsent 0..1 and 
    sectionPatientPosition 1..1 MS and 
    sectionConsultingExternalProfessional 0..1 MS and
    sectionReferralSource 0..1 
    sectionEMSBilling 0..1 and 
    sectionProtocols 0..1 
// FHIR Narratives?


* section[sectionEMSTimes] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionEMSTimes] ^extension.valueString = "Section"
* section[sectionEMSTimes] ^short = "Chief Complaint Section"
* section[sectionEMSTimes] ^definition = "This contains a narrative description of the patient's chief complaint."
* section[sectionEMSTimes].code = $loinc#10154-3
* section[sectionEMSTimes].emptyReason MS 
* section[sectionEMSTimes].text MS 
* section[sectionEMSTimes].entry only Reference(Condition or DocumentReference or Observation)

* section[sectionEmergencyNotificationSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionEmergencyNotificationSection] ^extension.valueString = "Section"
* section[sectionEmergencyNotificationSection] ^short = "Chief Complaint Section"
* section[sectionEmergencyNotificationSection] ^definition = "This contains a narrative description of the patient's chief complaint."
* section[sectionEmergencyNotificationSection].code = $loinc#10154-3
* section[sectionEmergencyNotificationSection].emptyReason MS 
* section[sectionEmergencyNotificationSection].text MS 
* section[sectionEmergencyNotificationSection].entry only Reference(Condition or DocumentReference or Observation)


* section[secrtionAttatchments] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[secrtionAttatchments] ^extension.valueString = "Section"
* section[secrtionAttatchments] ^short = "Chief Complaint Section"
* section[secrtionAttatchments] ^definition = "This contains a narrative description of the patient's chief complaint."
* section[secrtionAttatchments].code = $loinc#10154-3
* section[secrtionAttatchments].emptyReason MS 
* section[secrtionAttatchments].text MS 
* section[secrtionAttatchments].entry only Reference(Condition or DocumentReference or Observation)


* section[sectionConsent] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionConsent] ^extension.valueString = "Section"
* section[sectionConsent] ^short = "Chief Complaint Section"
* section[sectionConsent] ^definition = "This contains a narrative description of the patient's chief complaint."
* section[sectionConsent].code = $loinc#10154-3
* section[sectionConsent].emptyReason MS 
* section[sectionConsent].text MS 
* section[sectionConsent].entry only Reference(Condition or DocumentReference or Observation)


* section[sectionPatientPosition] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPatientPosition] ^extension.valueString = "Section"
* section[sectionPatientPosition] ^short = "Chief Complaint Section"
* section[sectionPatientPosition] ^definition = "This contains a narrative description of the patient's chief complaint."
* section[sectionPatientPosition].code = $loinc#10154-3
* section[sectionPatientPosition].emptyReason MS 
* section[sectionPatientPosition].text MS 
* section[sectionPatientPosition].entry only Reference(Condition or DocumentReference or Observation)

* section[sectionConsultingExternalProfessional] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionConsultingExternalProfessional] ^extension.valueString = "Section"
* section[sectionConsultingExternalProfessional] ^short = "Consulting External Professional Section"
* section[sectionConsultingExternalProfessional] ^definition = "TBD"
* section[sectionConsultingExternalProfessional].code = $sct#223475005
* section[sectionConsultingExternalProfessional].emptyReason MS 
* section[sectionConsultingExternalProfessional].text MS 
//* section[sectionConsultingExternalProfessional].entry only Reference(Condition or DocumentReference or Observation)

* section[sectionReferralSource] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionReferralSource] ^extension.valueString = "Section"
* section[sectionReferralSource] ^short = "Referral Source Section"
* section[sectionReferralSource] ^definition = "The Referral Source section shall contain a narrative description of the referral source of the patient. Patients who are not referred by a particular agency or health care provider should be designated as 'self referred'."
* section[sectionReferralSource].code = $loinc#11293-8
* section[sectionReferralSource].emptyReason MS 
* section[sectionReferralSource].text MS 
* section[sectionReferralSource].entry only Reference(Organization or Practitioner or DocumentReference or Observation)


* section[sectionEMSBilling] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionEMSBilling] ^extension.valueString = "Section"
* section[sectionEMSBilling] ^short = "EMS Billing Section"
* section[sectionEMSBilling] ^definition = "TBD"
* section[sectionEMSBilling].code = $loinc#67659-3
* section[sectionEMSBilling].emptyReason MS 
* section[sectionEMSBilling].text MS 
* section[sectionEMSBilling].entry only Reference(Coverage or DocumentReference or Observation)


* section[sectionProtocols] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProtocols] ^extension.valueString = "Section"
* section[sectionProtocols] ^short = "Protocols Section"
* section[sectionProtocols] ^definition = "Protocols"
* section[sectionProtocols].code = $loinc#67663-5
* section[sectionProtocols].emptyReason MS 
* section[sectionProtocols].text MS 
* section[sectionProtocols].entry only Reference(DocumentReference or Observation)
// todo entries 

