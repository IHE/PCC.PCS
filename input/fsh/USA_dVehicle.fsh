Profile:   IHE_PCS_USA_dVehicle
Parent: Location 
Id:             IHE.PCC.PCS.USA.dVehicle
Title: "National Extension NEMSIS dVehical"
Description: """
TBD....
Unit/Vehicle Number							dVehicle.01	RE	0..1
Vehicle Identification Number				dVehicle.02	O	0..1
EMS Unit Call Sign							dVehicle.03	O	0..1
Vehicle Type								dVehicle.04	RE	0..1
Crew State Certification/Licensure Levels	dVehicle.05	O	0..1
Number of Each EMS Personnel Level on Normal 911 Ambulance Response					dVehicle.06	O	0..1
Number of Each EMS Personnel Level on Normal 911 Response (Non-Transport) Vehicle	dVehicle.07	O	0..1
Number of Each EMS Personnel Level on Normal Medical (Non-911) Transport Ambulance	dVehicle.08	O	0..1
Vehicle Initial Cost						dVehicle.09	O	0..1
Vehicle Model Year							dVehicle.10	O	0..1
Year Miles/Kilometers Hours Accrued			dVehicle.11	O	0..1
Annual Vehicle Hours						dVehicle.12	O	0..1
 Annual Vehicle Miles/Kilometers			dVehicle.13	O	0..1
"""
//dVehicle.01 UnitVehicle Number = Identifier.value

//dVehicle.02 Vehicle Identification Number = Identifier.value
// VIN standard ISO-3779 and ISO-3780
// manufacturer's VIN associated with the vehicle

//dVehicle.03 EMS Unit Call Sign = Identifier.value
* status = #active
* mode = #kind
* type 0..1 MS
//dVehicle.04 Vehicle Type = type
ValueSet: NEMSIS_Vehicle_Type_VS
Description: "The vehicle type of the unit (ambulance, fire, truck, etc.)."
Id: NEMSIS.Vehicle.Type.VS
* NEMSIS#1404001	"Ambulance"
* NEMSIS#1404003	"ATV"
* NEMSIS#1404005	"Bicycle"
* NEMSIS#1404007	"Fire Apparatus"
* NEMSIS#1404009	"Fixed Wing"
* NEMSIS#1404011	"Motorcycle"
* NEMSIS#1404013	"Other"
* NEMSIS#1404015	"Personal Vehicle"
* NEMSIS#1404017	"Quick Response Vehicle (Non-Transport Vehicle other than Fire Apparatus)"
* NEMSIS#1404019	"Rescue"
* NEMSIS#1404021	"Rotor Craft"
* NEMSIS#1404023	"Snow Vehicle"
* NEMSIS#1404025	"Watercraft"

* physicalType = #ve

Extension: CrewMembers
Id: CrewMembers
Title: "Vehical Crew Members"
Description: "TBD."
* extension contains
		LicensureLevels 0..* and
		NumberOfEachLicencurelevel 0..*
* extension[LicensureLevels].valueCodeableConcept from http://terminology.hl7.org/ValueSet/v2-0136
* extension[NumberOfEachLicencurelevel].value[x]


//dVehicle.05 Crew State Certification/Licensure Levels

//dVehicle.06 Number of Each EMS Personnel Level on Normal 911 Ambulance Response

//dVehicle.07 Number of Each EMS Personnel Level on Normal 911 Response (Non-Transport) Vehicle

//dVehicle.08 Number of Each EMS Personnel Level on Normal Medical (Non-911) Transport Ambulance

//dVehicle.09 Vehicle Initial Cost

//dVehicle.10 Vehicle Model Year

//dVehicle.11 Year Miles/Kilometers Hours Accrued

//dVehicle.12 Annual Vehicle Hours

//dVehicle.13 Annual Vehicle Miles/Kilometers

//* managingOrganization = Reference(dAgency_Organization)





* code from http://hl7.org/fhir/sid/icd-10