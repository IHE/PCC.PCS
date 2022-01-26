Instance: Inline-Instance-for-Location-EMSVehical
InstanceOf: Location
Usage: #inline
* id = 6ff401d4-4191-11ec-81d3-0242ac130003
* status = #active
* mode = http://hl7.org/fhir/ValueSet/location-mode#instance

* identifier.value = "058-263"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
//NEMSIS eResponse.13 - EMS Vehicle (Unit) Number
//NEMSIS dVehicle.01 - Unit/Vehicle Number
* identifier.value = "123456"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SR
//NEMSIS dVehicle.02 - Vehicle Identification Number --VIN standard ISO-3779 and ISO-3780.
* identifier.value = "350-20211007M200394"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
//NEMSIS eResponse.04 - EMS Response Number

* name = "Yuma 1090"
//NEMSIS eResponse.14 - EMS Unit Call Sign
//NEMSIS dVehicle.03 - EMS Unit Call Sign

* type = http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType#AMB
//NEMSIS dVehicle.04 - Vehicle Type
* type = http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType#NPI
//NEMSIS eResponse.07 - Unit Transport and Equipment Capability

Instance: Inline-Instance-for-Location-Scene-Cardiac
InstanceOf: Location
Usage: #inline
* id = "73c870bc-418a-11ec-81d3-0242ac130003"
* name = "Saint Francis of Assisi Catholic Church"
//NEMSIS eScene.13 - Incident Facility or Location Name
* type = $loinc#Y92.22 "Religious institution as the place of occurrence of the external cause"
//NEMSIS eScene.09 - Incident Location Type
// NOte: ICD-10 [2.16.840.1.113883.6.3] refernce]
* address.line[+] = "1815 S 8th Ave"
* address.line[=] = "Room 114"
//NEMSIS eScene.15 - Incident Street Address
* address.city = "City of Yuma"
//NEMSIS eScene.17 - Incident City
* address.district = "Yuma County"
//NEMSIS eScene.21 - Incident County
* address.state = "Arizona"
//NEMSIS eScene.18 - Incident State
* address.postalCode = "85364"
//NEMSIS eScene.19 - Incident ZIP Code
* address.country = "US"
//NEMSIS eScene.22 - Incident Country
* mode = http://hl7.org/fhir/location-mode#kind
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#ER
* position.longitude = "-114.628"
* position.latitude = "32.694"
//NEMSIS eScene.11 - Scene GPS Location

Instance: Inline-Instance-for-Location-Destination-Cardiac
InstanceOf: Location
Usage: #inline
* id = e2bb641e-418c-11ec-81d3-0242ac130003
* identifier.value = "MED0262"
* identifier.type = http://hl7.org/fhir/ValueSet/identifier-type#FI
//NEMSIS eDisposition.02 - Destination/Transferred To, Code

* mode = http://hl7.org/fhir/location-mode#kind
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#ER

Instance: Inline-Instance-for-Location-Dispatch-Cardiac
InstanceOf: Location
Usage: #inline
* id = "10dba0e4-41a5-11ec-81d3-0242ac130003"
* name = "Main Station"
//NEMSIS eResponse.16 - Vehicle Dispatch Location
* type = $loinc#Y92.22 "Religious institution as the place of occurrence of the external cause"
//NEMSIS eScene.09 - Incident Location Type
// NOte: ICD-10 [2.16.840.1.113883.6.3] refernce]
* address.line[+] = "1815 S 8th Ave"
* address.line[=] = "Room 114"
//NEMSIS eScene.15 - Incident Street Address
* address.city = "City of Yuma"
//NEMSIS eScene.17 - Incident City
* address.district = "Yuma County"
//NEMSIS eScene.21 - Incident County
* address.state = "Arizona"
//NEMSIS eScene.18 - Incident State
* address.postalCode = "85364"
//NEMSIS eScene.19 - Incident ZIP Code
* address.country = "US"
//NEMSIS eScene.22 - Incident Country
* mode = http://hl7.org/fhir/location-mode#kind
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#ER
* position.longitude = "-114.628"
* position.latitude = "32.687"
//NEMSIS eResponse.17 - Vehicle Dispatch GPS Location


