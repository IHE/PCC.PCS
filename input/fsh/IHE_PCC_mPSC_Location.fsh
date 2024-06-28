Profile:        IHE_PCC_mPSC_Location
Parent:         Location
Id:             IHE.PCC.mPSC.Location
Title:          "IHE PCC mPSC Location"
Description:    "Location Resource conformant to the data needs of the Paramedicine Summary of Care document"

* identifier 1..* MS 

* name 0..1 MS

* description MS 

* type 1..* MS 

* address 1..1 MS 

* physicalType 0..1 MS 

* position MS 

* extension contains Characteristic named characteristic 0..* MS 

Extension: Characteristic
Id: Characteristic
Title: "Paramedicine Location Characteristic"
Description: "Additional Collection of characteristics (attributes) used to further inform a location"
* ^context[+].type = #element
* ^context[=].expression = "location"
* value[x] only CodeableConcept