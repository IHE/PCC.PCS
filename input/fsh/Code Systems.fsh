CodeSystem: PCS_LocationType
Title: "Code System Containing values that do not have a maintianed code system."
Description: "Elements in this Code system SHALL be used to further deffine the type of location relative to the patien't episode of care."
Id: PLT
* ^experimental = false 
* ^caseSensitive = true 
* #Dispatch	"Location or healthcare facility location of the vehicle at the time of dispatch."
* #Scene	"Location or healthcare facility location of the inicident/Scene/Pickup location."
* #Ambulance	"The ambulance vehical that is used for the location of the patient during transport"
* #Destination	"Location or healthcare facility location of the vehicle destination at the end of the encounter."