Instance:   ex-PCS-CareTeam
InstanceOf: CareTeam
Title: "Example of a PCS Care Team, otherwise known as the Crew members of the vehical."
Description:      "holding typical values for a PCS Care Team, otherwise known as the Crew members of the vehical, for the Cardiac patient."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active 
* category = http://hl7.org/fhir/ValueSet/care-team-category#LA27976-2
* name = "EMS Crew"
* encounter = Reference(encounter/)
* participant.role[+] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant.member[=] = Reference(Practitioner/21a78dce-38e6-11ec-8d3d-0242ac130003)
* participant.role[+] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF
* participant.member[=] = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* participant.role[+] = http://snomed.info/sct#308367006
// 308367006 = Diver
* participant.role[=] = "TBD"
// Other Patient Caregiver
* participant.member[=] = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-PCS-Cardiac-Encounter-Practitioner-1
InstanceOf: Practitioner
Usage: #inline
* id = "21a78dce-38e6-11ec-8d3d-0242ac130003"
* identifier.value = "3265325" 
* identifier.type = http://terminology.hl7.org/ValueSet/v2-0203#LN
* name.family = "Sparrow"
* name.given[+] = "Henry"
* name.given[+] = "I."
* qualification.code = http://snomed.info/sct#397897005
// 397897005 = Paramedic

Instance: Inline-Instance-for-PCS-Cardiac-Encounter-Practitioner-2
InstanceOf: Practitioner
Usage: #inline
* id = "26aa91b8-38e6-11ec-8d3d-0242ac130003"
* identifier.value = 3278054 
* identifier.type = http://terminology.hl7.org/ValueSet/v2-0203#LN
* name.family = "Valencia"
* name.given = "Dani"
* qualification.code = http://snomed.info/sct#397897005
// 397897005 = Paramedic

Instance: Inline-Instance-for-PCS-Cardiac-Encounter-Practitioner-3
InstanceOf: Practitioner
Usage: #inline
* id = "29eabcea-38e6-11ec-8d3d-0242ac130003"
* identifier.value = "5583451" 
* identifier.type = http://terminology.hl7.org/ValueSet/v2-0203#LN
* name.family = "Guerra"
* name.given = "Mariyah"
* qualification.code = "TBD"
// 	Emergency Medical Technician
