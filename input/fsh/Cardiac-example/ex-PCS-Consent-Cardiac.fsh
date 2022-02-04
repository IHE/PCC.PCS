Instance: Inline-Instance-for-AdvanceDirectives
InstanceOf: Consent
Usage: #inline
* id = "d4fb1852-6f33-4117-8fb6-8539f5cd0a18"
* sourceReference = Reference(QuestionnaireResponse/6a9d2c3b-4249-4548-a926-87e86b49a7fc)
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#adr
* category = http://terminology.hl7.org/CodeSystem/consentcategorycodes#acd

Instance: Inline-Instance-for-AdvanceDirectives-QuestionnaireResponse
InstanceOf: QuestionnaireResponse
Usage: #inline
* id = "6a9d2c3b-4249-4548-a926-87e86b49a7fc"
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* author = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* source = Reference(RelatedPerson/c70c8063-85b0-4346-8fc7-1ca1966ca4ed)
* item.linkId = "TODO: JFM No idea what a link Id is"
* item.text = "The presence of a valid DNR form, living will, or document directing end of life or healthcare treatment decisions"
* item.answer.valueCoding = $NEMSIS#3105011
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* status = #completed