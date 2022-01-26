Instance:   ex-PCS-CareTeam-Cardiac
InstanceOf: CareTeam
Title: "Example of a PCS Care Team, otherwise known as the Crew members of the vehical."
Description:      "holding typical values for a PCS Care Team, otherwise known as the Crew members of the vehical, for the Cardiac patient."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active 
* category = $loinc#LA27976-2
* name = "EMS Crew"
* encounter = Reference(encounter/)
* participant[+].role = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant[=].member = Reference(Practitioner/21a78dce-38e6-11ec-8d3d-0242ac130003)
* participant[+].role = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF
* participant[=].member = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* participant[+].role = http://snomed.info/sct#308367006
// 308367006 = Diver
//* participant.role[=] = "TBD"
// Other Patient Caregiver
* participant[=].member = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-PCS-Cardiac-Encounter-Practitioner-1
InstanceOf: Practitioner
Usage: #inline
* id = "21a78dce-38e6-11ec-8d3d-0242ac130003"
* identifier.value = "3265325" 
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#LN
* name.family = "Sparrow"
* name.given[+] = "Henry"
* name.given[+] = "I."
* qualification.code = $SCT#397897005
// 397897005 = Paramedic

Instance: Inline-Instance-for-PCS-Cardiac-Encounter-Practitioner-2
InstanceOf: Practitioner
Usage: #inline
* id = "26aa91b8-38e6-11ec-8d3d-0242ac130003"
* identifier.value = "3278054" 
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#LN
* name.family = "Valencia"
* name.given = "Dani"
* qualification.code = $SCT#397897005
// 397897005 = Paramedic

Instance: Inline-Instance-for-PCS-Cardiac-Encounter-Practitioner-3
InstanceOf: Practitioner
Usage: #inline
* id = "29eabcea-38e6-11ec-8d3d-0242ac130003"
* identifier.value = "5583451" 
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#LN
* name.family = "Guerra"
* name.given = "Mariyah"
* qualification.code = $NEMSIS#9925005

Instance: Inline-Instance-for-Practitioner-Practitioner-1-level
InstanceOf: PractitionerRole
Usage: #inline
* id = "a3222aec-38e8-11ec-8d3d-0242ac130003"
* practitioner = Reference(Practitioner/21a78dce-38e6-11ec-8d3d-0242ac130003)
* code = $SCT#397897005  "Paramedic"
* organization = Reference(Organization/1a2364d6-418f-11ec-81d3-0242ac130003)

Instance: Inline-Instance-for-Practitioner-2-level
InstanceOf: PractitionerRole
Usage: #inline
* id = "a76cdf98-38e8-11ec-8d3d-0242ac130003"
* practitioner = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* code = $SCT#397897005  "Paramedic"
* organization = Reference(Organization/1a2364d6-418f-11ec-81d3-0242ac130003)

Instance: Inline-Instance-for-Practitioner-3-level
InstanceOf: PractitionerRole
Usage: #inline
* id = "ac48610e-38e8-11ec-8d3d-0242ac130003"
* practitioner = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* code = $NEMSIS#9925005
* organization = Reference(Organization/1a2364d6-418f-11ec-81d3-0242ac130003)

