Profile:   IHE_PCS_EpisodeOfCare
Parent: EpisodeOfCare
Id:             IHE.PCS.EpisodeOfCare
Title: "IHE PCS EpisodeOfCare"
Description: An association of a Patient with an Organization and Healthcare Provider(s) for a period of time that the Organization assumes some level of responsibility for a PCS Encounter 

*identifier 1..*

*managingOrganization 1..1
*managingOrganization = Reference(Organization)

*text 1..1
