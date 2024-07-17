Profile:        IHE_PCC_mPSC_VitalSigns
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             IHE.PCC.mPSC.VitalSigns
Title:          "IHE PCS Profile ParamedicinceVitalSigns Observation Base"
Description:    "IHE PCS ParamedicinceVitalSigns Observation deffines the minimum requirements for all the vital signs observations supported in this IG."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code from IHE_PCC_mPSC_VitalSigns_VS (preferred)
* method MS 
* device MS 
* dataAbsentReason MS 
* interpretation MS 
* bodySite MS 
* value[x] MS
* valueQuantity.system = $ucum