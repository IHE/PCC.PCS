Profile:   IHE_PCS_USA_EMS_Vitals_Panel
Parent: Observation
Id:             IHE.PCC.PCS.USA.EMS.Vitals.Panel
Title: "PCS USA Vital Sign Panel"
Description:      "TBD."

* must have vital-signs category
//* must have $loinc#55284-4 code AND $loinc#8716-3
* must have effectiveDateTime
* must not have a value[x]
//* must have 28 components
* must have Obtained Prior to this Unit's EMS Care component
* must have Cardiac Rhythm component
* must have Systolic Blood Pressure component
* should have Diastolic Blood Pressure component	
* must have systolic and diastolic component values in mm[Hg]
* may have a Mean-Arterial-Pressure component
* may have a heart-rate component
* must have a Pulse Oximetry component
* may have a Pulse Rhythm component
* must have a Respiratory Rate component
* may have a Respiratory Effort component
* must have a End Tidal Carbon Dioxide (ETCO2) component
* should have a Carbon Monoxide (CO) component
* must have a Blood Glucose Level component
* must have a Glasgow Coma Score-Eye component
* must have a Glasgow Coma Score-Verbal component
* must have a Glasgow Coma Score-Motor component
* must have a Glasgow Coma Score-Qualifier component
* should have a Total Glasgow Coma Score component
* should have a Temperature component
* must have a Level of Responsiveness (AVPU) component
* must have a Pain Scale Score component
* should have a  Pain Scale Type component
* must have a Stroke Scale Score component
* must have a Stroke Scale Type component
* must have a Reperfusion Checklist component
* May have a APGAR component
* May have a Revised Trauma Score component

* must have status at final
* must point at the patient
* may have a note (comment)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "EMS vitals Panel"
* component contains
	obtained-prior-to-EMS-Care 1..1 MS and 
	cardiac-rhythm 1..1 MS and
	blood-pressure 1..1 MS and 
	heart-rate 1..1 MS and 
	pulse-oximetry 1..1 MS and 
	pulse-rhythm 0..1 and 
	respiratory-rate 1..1 MS and
	respiratory-effort 0..1 and
	end-tidal-carbon-dioxide-ETCO2 1..1 MS and
	carbon-monoxide-CO 0..1 MS and 
	blood-glucose-level 1..1 MS and 
	glasgow-coma-scale 1..1 MS and 
	temperature 0..1 MS and 
	level-of-responsiveness 1..1 MS and 
	pain-score 1..1 MS and 
	stroke-scale-score 1..1 MS and 
	reperfusion-checklist 1..1 MS and 
	APGAR 0..1 and
	revised-trauma-score 0..1
	
* component[obtained-prior-to-EMS-Care].code = $loinc#67518-1
* component[obtained-prior-to-EMS-Care].value[x] only valueCodeableConcept from http://terminology.hl7.org/ValueSet/v2-0136 
* component[obtained-prior-to-EMS-Care].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[cardiac-rhythm].code = $loinc#67519-9 
* component[cardiac-rhythm].value[x] only valueCodeableConcept from http://loinc.org#LL1795-5
// ECG Type todo 
* component[cardiac-rhythm].method from http://loinc.org#LL2123-9
* component[cardiac-rhythm].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[blood-pressure].code = $loinc#85354-9
* component[blood-pressure] ^slicing.discriminator.type = #pattern
* component[blood-pressure] ^slicing.discriminator.path = "code"
* component[blood-pressure] ^slicing.rules = #closed
* component[blood-pressure] ^slicing.description = "blood pressure values"
* component[blood-pressure] contains 
	systolicBP 1..1 MS and
	diastolicBP 0..1 MS and 
	mean-arterial-pressure 0..1
* component[blood-pressure].[systolicBP].code = $loinc#8480-6
* component[blood-pressure].[systolicBP].value[x] only Quantity
* component[blood-pressure].[systolicBP].valueQuantity = $UCUM#mm[Hg] // "mmHg"
* component[blood-pressure].[diastolicBP].code = $loinc#8462-4
* component[blood-pressure].[diastolicBP].value[x] only Quantity
* component[blood-pressure].[systolicBP].valueQuantity = $UCUM#mm[Hg] // "mmHg"
* component[blood-pressure].[mean-arterial-pressure].code = $loinc#8478-0 
* component[blood-pressure].[mean-arterial-pressure].value[x] only Quantity

* component[heart-rate].code = $loinc#8867-4
* component[heart-rate].value[x] only Quantity
* component[heart-rate].valueQuantity = $UCUM#/min "beats/minute"
* component[heart-rate].dataAbsentReason from PCS_Data_Absent_Reasons_VS
* component[heart-rate].method from https://loinc.org/LL3626-0

* component[pulse-oximetry].code = $loinc#2708-6
* component[pulse-oximetry].value[x] only Quantity
* component[pulse-oximetry].valueQuantity = $UCUM#%
* component[pulse-oximetry].dataAbsentReason from PCS_Data_Absent_Reasons_VS

//* component[pulse-rhythm].code = $loinc#2708-6
//* component[pulse-rhythm].value[x] only Quantity
//* component[pulse-rhythm].valueQuantity = $UCUM#%
//* component[pulse-rhythm].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[respiratory-rate].code = $loinc#9279-1
* component[respiratory-rate].value[x] only Quantity
* component[respiratory-rate].valueQuantity = $UCUM#{breaths}/min;{counts/min}
* component[respiratory-rate].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[respiratory-effort].code = $loinc#80341-1
* component[respiratory-effort].value[x] only valueCodeableConcept from https://loinc.org/LL3854-8
* component[respiratory-effort].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[end-tidal-carbon-dioxide-ETCO2].code = $loinc#19889-5
* component[end-tidal-carbon-dioxide-ETCO2].value[x] only Quantity
* component[end-tidal-carbon-dioxide-ETCO2].valueQuantity = $UCUM#%
* component[end-tidal-carbon-dioxide-ETCO2].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[carbon-monoxide-CO].code = $loinc#19911-7
* component[carbon-monoxide-CO].value[x] only Quantity
* component[carbon-monoxide-CO].valueQuantity = $UCUM#cm3/min/mm[Hg]
* component[carbon-monoxide-CO].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[blood-glucose-level].code = $loinc#2339-0
* component[blood-glucose-level].value[x] only Quantity
* component[blood-glucose-level].valueQuantity = $UCUM#mg/dL
* component[blood-glucose-level].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[glasgow-coma-scale].code = $loinc#35088-4
* component[glasgow-coma-scale] ^slicing.discriminator.type = #pattern
* component[glasgow-coma-scale] ^slicing.discriminator.path = "code"
* component[glasgow-coma-scale] ^slicing.rules = #closed
* component[glasgow-coma-scale] ^slicing.description = "glasgow coma scale components"
* component[glasgow-coma-scale] contains
	GlasgowComaScoreEye 1..1 MS and 
	GlasgowComaScoreVerbal 1..1 MS and
	GlasgowComaScoreMotor 1..1 MS and
	GlasgowComaScoreQualifier 1..1 MS and
	TotalGlasgowComaScore 0..1 MS 
* component[glasgow-coma-scale].[GlasgowComaScoreEye].code = $loinc#9267-6	
* component[glasgow-coma-scale].[GlasgowComaScoreEye].value[x] only valueCodeableConcept from https://loinc.org/LL355-9
* component[glasgow-coma-scale].[GlasgowComaScoreEye].dataAbsentReason from PCS_Data_Absent_Reasons_VS
* component[glasgow-coma-scale].[GlasgowComaScoreVerbal].code = $loinc#9270-0	
* component[glasgow-coma-scale].[GlasgowComaScoreVerbal].value[x] only valueCodeableConcept from  https://loinc.org/LL356-7	
* component[glasgow-coma-scale].[GlasgowComaScoreVerbal].dataAbsentReason from PCS_Data_Absent_Reasons_VS
* component[glasgow-coma-scale].[GlasgowComaScoreMotor].code = $loinc#9268-4
* component[glasgow-coma-scale].[GlasgowComaScoreMotor].value[x] only valueCodeableConcept from  https://loinc.org/LL357-5	
* component[glasgow-coma-scale].[GlasgowComaScoreMotor].dataAbsentReason from PCS_Data_Absent_Reasons_VS	
* component[glasgow-coma-scale].[GlasgowComaScoreQualifier].code = $loinc#55285-1	
* component[glasgow-coma-scale].[GlasgowComaScoreQualifier].value[x] only valueCodeableConcept from  https://loinc.org/LL1852-4
* component[glasgow-coma-scale].[GlasgowComaScoreQualifier].dataAbsentReason from PCS_Data_Absent_Reasons_VS
* component[glasgow-coma-scale].[TotalGlasgowComaScore].code = $loinc#9269-2
* component[glasgow-coma-scale].[TotalGlasgowComaScore].value[x] only Quantity
* component[glasgow-coma-scale].[TotalGlasgowComaScore].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[temperature].code = $loinc#8310-5
* component[temperature].value[x] only Quantity
* component[temperature].valueQuantity = $UCUM#Cel
//* component[temperature].method from.... 
* component[temperature].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[level-of-responsiveness].code = $loinc#67775-7
* component[level-of-responsiveness].value[x] only valueCodeableConcept from https://loinc.org/LL1845-8
* component[level-of-responsiveness].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[pain-score].code = $loinc#56840-2
* component[pain-score].value[x] only Quantity
//* component[pain-score].method from.... Pain Scale Type
* component[pain-score].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[stroke-scale-score].code = $loinc#67520-7
* component[stroke-scale-score].value[x] only Quantity
* component[stroke-scale-score].method from https://loinc.org/LL1847-4
* component[stroke-scale-score].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[reperfusion-checklist].code = $loinc#67523-1 
* component[reperfusion-checklist].value[x] only valueCodeableConcept from LL1848-2
* component[reperfusion-checklist].dataAbsentReason from PCS_Data_Absent_Reasons_VS

//* component[APGAR].code = $loinc#67523-1 
//* component[APGAR].value[x] only valueCodeableConcept from LL1848-2
//* component[APGAR].dataAbsentReason from PCS_Data_Absent_Reasons_VS

* component[revised-trauma-score].code = $loinc#67520-7
* component[revised-trauma-score].value[x] only Quantity
* component[revised-trauma-score].method from https://loinc.org/LL1847-4
* component[revised-trauma-score].dataAbsentReason from PCS_Data_Absent_Reasons_VS
	
* once created will or might have an id, versionId, lastUpdated, text, and identifier
"
* ^version = "0.1.0"
* ^date = "2020-11-23"
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
// This shows how to slice to force two values
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #closed
* code.coding 2..2
* code.coding contains loincCode1 1..1 and loincCode2 1..1
* code.coding[loincCode1] = $loinc#55284-4
* code.coding[loincCode2] = $loinc#8716-3
* effectiveDateTime 1..1
* value[x] 0..0
* component 2..4
// This shows slicing on code within component
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "blood pressure values"
* component contains 
	diastolicBP 1..1 and 
	systolicBP 1..1 and 
	heartRate 0..1 and 
	bodyContextSitting 0..1 and 
	bodyContextStanding 0..1 and 
	bodyContextSupine 0..1 and 
	bodyContextResting 0..1
* component[systolicBP].code = $loinc#8480-6 // Systolic blood pressure
* component[systolicBP].value[x] only Quantity
* component[systolicBP].valueQuantity = $UCUM#mm[Hg] // "mmHg"
* component[diastolicBP].code = $loinc#8462-4 // Diastolic blood pressure
* component[diastolicBP].value[x] only Quantity
* component[diastolicBP].valueQuantity = $UCUM#mm[Hg] // "mmHg"
* component[heartRate].code = $loinc#8867-4 // heart rate
* component[heartRate].value[x] only Quantity
* component[heartRate].valueQuantity = $UCUM#/min "beats/minute"
// This is odd, but showing it for sushi learning - TODO should leverage the valueset below
* component[bodyContextSitting].code = $loinc#69000-8
* component[bodyContextSitting].value[x] only string
* component[bodyContextSitting].valueString = "Sitting"
* component[bodyContextStanding].code = $loinc#69001-6
* component[bodyContextStanding].value[x] only string
* component[bodyContextStanding].valueString = "Standing"
* component[bodyContextSupine].code = $loinc#68999-2
* component[bodyContextSupine].value[x] only string
* component[bodyContextSupine].valueString = "Supine"
* component[bodyContextResting].code = $loinc#40443-4
* component[bodyContextResting].value[x] only string
* component[bodyContextResting].valueString = "Resting"
* status = #final
* subject 1..1
* subject only Reference(Patient)
* note 0..1
// things that are not declared in the mapping table but likely are populated because they are normal REST processing
//* id 0..1
//* meta.versionId 0..1
//* meta.lastUpdated 0..1
//* meta.profile 0..1
//* meta.source 0..0
//* meta.security 0..0
//* identifier 0..*
//* text 0..0
// this is making everything else in observation forbidden. If they show up, apps should not misbehave. IHE FooBar compliant apps shall not populate these in a Create or Update.
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* basedOn 0..0
* partOf 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* performer 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0

// This is showing how to build a valueSet. This will be a standalone valueset, but is built here because this is where it is first used
ValueSet: IheFooBarBloodPressurePositions
Id: ihe-foobar-blood-pressure-positions
Title: "The methods of measurement for blood pressure"
Description: "These are the loinc body positions that IHE FooBar supports on blood pressure."
* $loinc#69000-8 "Heart rate - sitting"
* $loinc#69001-6 "Heart rate - standing"
* $loinc#68999-2 "Heart rate - supine"
* $loinc#40443-4 "Heart rate - resting"
