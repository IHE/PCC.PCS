Instance: IHE.mPSC.Content-Creator
InstanceOf: CapabilityStatement
Title: "mPSC Content Creator"
Usage: #definition
* url = "http://ihe.net/fhir/CapabilityStatement/capabilitystatement-IHE.mPSC.Content-Creator"
* name = "IHE_mPSC_Content_Creator"
* title = "mPSC Content Creator"
* status = #active
* experimental = false
* date = "2024-07-17"
* publisher = "Integrating the Healthcare Enterprise (IHE)"
* description = "The mPCS [Content Creator](ActorsAndTransactions.html#content-creator)"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* document[+].mode = #producer 
* document[=].profile = Canonical(IHE_PCC_mPSC_Composition_ClinicalSubset)
* document[=].documentation = "The composition of the FHIR elements that are used to build the FHIR Document for the Paramedicine Care Summary Clinical Subset"
* document[+].mode = #producer 
* document[=].profile = Canonical(IHE_PCC_mPSC_Composition_Complete_Report)
* document[=].documentation = "TODO"

Instance: IHE.mPSC.Content-Consumer
InstanceOf: CapabilityStatement
Title: "mPSC Content Consumer"
Usage: #definition
* url = "http://ihe.net/fhir/CapabilityStatement/capabilitystatement-IHE.mPSC.Content-Consumer"
* name = "IHE_mPSC_Content_Consumer"
* title = "mPSC Content Consumer"
* status = #active
* experimental = false
* date = "2024-07-17"
* publisher = "Integrating the Healthcare Enterprise (IHE)"
* description = "The mPCS [Content Creator](ActorsAndTransactions.html#content-consumer)"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* document[+].mode = #consumer 
* document[=].profile = Canonical(IHE_PCC_mPSC_Composition_ClinicalSubset)
* document[=].documentation = "The composition of the FHIR elements that are used to build the FHIR Document for the Paramedicine Care Summary Clinical Subset"
* document[+].mode = #consumer
* document[=].profile = Canonical(IHE_PCC_mPSC_Composition_Complete_Report)
* document[=].documentation = "TODO"
