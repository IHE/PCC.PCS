Instance:   ex-patient
InstanceOf: Patient
Title: "Example Patient"
Description: "The patient from which all the example relate"
// history - http://playgroundjungle.com/2018/02/origins-of-john-jacob-jingleheimer-schmidt.html
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[+].use = #usual
* name[=].family = "Smith"
* name[=].given = "Jack"
* name[+].use = #old
* name[=].family = "Schnidt"
* name[=].given[0] = "John"
* name[=].given[1] = "Jacob"
* name[=].given[2] = "Jingle"
* name[=].given[3] = "Heimer"
* name[=].period.end = "1960"
* name[+].use = #official
* name[=].family = "Smith"
* name[=].given[+] = "John"
* name[=].given[=] = "Jacob"
* name[=].given[=] = "Jingleheimer"
* name[=].period.start = "1960-01-01"
* gender = #other
* birthDate = "1923-07-25"
* address.state = "WI"
* address.country = "USA"