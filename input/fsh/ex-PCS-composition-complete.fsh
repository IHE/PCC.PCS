Instance:   ex-PCS-Composition-CompleteReport_Cardiac
InstanceOf: IHE.PCC.PCS.Composition.CR
Title: "Example of a Paramedicine Care Summary Complete Report Composition"
Description:      "holding typical values for PCS Complete Report"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/fa51192c-c36a-4b0a-84c1-9dc6fded7c2c)
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActClass#ENC

* section[sectionMedications].entry[+] = Reference(MedicationStatementIPS/ba2837b7-bdf5-4178-b422-a808631b2197)
* section[sectionMedications].entry[+] = Reference(MedicationStatementIPS/48991823-f1ca-4a59-95cd-5d0a9bf88ac3)
* section[sectionMedications].entry[+] = Reference(MedicationStatementIPS/cb66a3b4-e5fe-4176-860d-eab731b2dae3)
* section[sectionMedications].entry[+] = Reference(MedicationStatementIPS/3213f402-1ea7-4648-bc41-c3cb448fc76c)
* section[sectionMedications].entry[+] = Reference(MedicationStatementIPS/b05f68a2-1922-4fca-a94a-03acc1731044)
//Note: how to indicate information was indicated by family on scene

* section[sectionAllergies].entry[+] = Reference(AllergyIntoleranceUvIps/5ff3b0f9-ec3a-4513-898c-b3eb9c506383)
* section[sectionAllergies].entry[+] = Reference(AllergyIntoleranceUvIps/03974696-97cc-4a76-ba0a-d790c79fc07d)
* section[sectionAllergies].entry[+] = Reference(AllergyIntoleranceUvIps/082413b5-c9f9-4178-9ffb-821665a28cfe)
* section[sectionAllergies].entry[+] = Reference(AllergyIntoleranceUvIps/a46082d2-e29a-450f-a8b7-d7fe57257ff7)
//Note: how to indicate information was indicated by family on scene

* section[sectionProblems].entry[+] = Reference(ConditionUvIps/8c5f6d03-ec3c-412f-aa81-13690942a94a)

* section[sectionProceduresHx].entry[+] = Reference(ProcedureUvIps/2e26fa83-b94e-437a-8d3d-0dd4c3772bdf)
//Note: how to indicate information was indicated by family on scene

* section[sectionImmunizations].entry[+] = Reference(ImmunizationUvIps/2202687e-d56a-4b99-a750-9d976f848b08)
//Note: how to indicate information was indicated by family on scene, current reportOrigin is recall but may need to be something else to indicate patent family recall

* section[sectionPastIllnessHx].entry[+] = Reference(ConditionUvIps/122ae414-ca52-4e54-812b-a885eb65ee7a)
//Note: how to indicate information was indicated by family on scene

* section[sectionPregnancyHx].entry[+] = Reference(ObservationPregnancyStatusUvIps/754e0c73-f094-494b-90e6-9c170a00dd99)


* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/f37d99c2-3be5-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/e13e79e2-3be6-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/964b6a8e-cf0a-4441-9e11-4a864c3cfa29)
//Note: Should glascow scoring be here or in functional assesment?
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/58b0e7ac-3be8-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/6f2c57a0-3be8-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/6d85a7f6-3bef-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/ad6589c4-a929-4dc4-bcf4-0ce63f733a95)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/86d600a0-0764-4bc9-b1a0-5dfffb617a24)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/0973da60-38cc-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/5055df00-24a6-4531-bc54-22a4bfe0159e)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/093b485e-4511-418f-b607-cfaec2996e4d)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/ef4fdaf1-095b-4db0-915d-338c19fe9a7d)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/44c24aba-2298-49a8-9d67-e44a7b46c09f)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/da9470e7-f6ed-4643-9b10-8a59310bb286)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/85cf8976-f1b2-4337-8658-26210f5df666)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/03d0db0e-3852-4add-b33a-db8e6aea5f2b)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/7cbaa1c3-e793-4516-95ed-af6783532feb)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/6ec67b5f-fa07-46f9-aa09-857b475ce30f)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/387b36eb-9220-4068-ae2f-21707522aab6)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/9fdcb6f1-c3a3-490f-ba00-0c260d619411)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/3ec08244-00f1-41ac-a251-b70c0d069cf1)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/74b8ed2b-08ec-4ec8-bac8-c61154558c33)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/fee522f6-9a32-4ad7-b906-4e61de240a2e)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/1a21143f-8676-4c23-a312-9ed25cef0254)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/caf96813-eada-4b1e-a4e6-99e446834bbc)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/a0ca7a99-8132-4efa-8068-03282c3c4eff)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/59276b4d-51e0-4799-b79a-e4737efb4ef8)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/32511f84-f0fe-48f7-9616-ccb10fb57375)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/2d5475c0-827f-4697-9d83-54e666b3562c)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/4bcea68a-378c-41b7-85e8-f1f8134e55a1)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/369d0828-c27a-4047-97bd-5d0da9d2436d)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/72e8c109-c43b-4fe0-b4d8-36d74612f9ea)
//Note: vitals here are not including the unable to comlete vitals

* section[ProceduresPerformed].entry[+] = Reference(ProcedureUvIps/4b412a0b-6702-43a4-8d15-8fdfffba5aca)
* section[ProceduresPerformed].entry[+] = Reference(ProcedureUvIps/1019697f-2e35-46fe-a11e-354e23114299)
* section[ProceduresPerformed].entry[+] = Reference(ProcedureUvIps/981cc0ff-b310-442a-bbfd-881dc288cb97)
* section[ProceduresPerformed].entry[+] = Reference(ProcedureUvIps/263175c1-e0a7-4ffe-bae0-48a05a0a160a)
* section[ProceduresPerformed].entry[+] = Reference(ProcedureUvIps/154261bd-e96d-456b-912d-8a8e1f889952)
* section[ProceduresPerformed].entry[+] = Reference(ProcedureUvIps/9a7d674d-c4ef-4983-9c40-f05696072ae9)
* section[ProceduresPerformed].entry[+] = Reference(ProcedureUvIps/cca8791c-f577-4abd-82fe-0daae1333d58)

* section[sectionMedicalDevices].entry[+] = Reference(DeviceUseStatementUvIps/37561dc9-42de-499e-aab8-b061c56bfd82)

* section[sectionAdvanceDirectives].entry[+] = Reference(Consent/d4fb1852-6f33-4117-8fb6-8539f5cd0a18)
* section[sectionAdvanceDirectives].code = $NEMSIS#9923003

* section[sectionReviewOfSystems].entry[+] = Reference(Observation/a4548e60-a780-4a19-9dbb-cf8e00f59813)
* section[sectionReviewOfSystems].entry[+] = Reference(Observation/ad95c3dc-cd77-48bd-99d1-7bcfe4821bff)
* section[sectionReviewOfSystems].entry[+] = Reference(Observation/411b16a7-c842-43cc-bd74-738db7205a62)
* section[sectionReviewOfSystems].entry[+] = Reference(Observation/18a9ce4a-8ff8-4f4e-a7e9-3a13d3f13828)
* section[sectionReviewOfSystems].entry[+] = Reference(Observation/716b6ce0-d94d-43e0-be3e-95301b4f25e0)

* section[sectionTransportEvent].entry[+] = Reference(Observation/143b2438-21d1-4b61-bea1-6217332b6afc)
* section[sectionTransportEvent].entry[+] = Reference(Observation/22cae49a-49da-43aa-95f8-cf4b54a3f5fe)
* section[sectionTransportEvent].entry[+] = Reference(Observation/8a410888-4ee0-466c-87a8-a09a2d3fc987)

* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/c099d17e-b0fa-4a89-bd75-ee9c7d855d76)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/9160055d-5aa5-4a53-908e-ae79476b44a1)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/35fc4ee1-fe35-4b68-903e-505085f676fe)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/1853f614-34cc-4fb2-9cf5-ceb562cb53a2)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/162de700-0f66-495f-a806-6dc8f8143ee3)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/3d91976c-48f4-4650-806a-88d99af248fc)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/427b1401-a57d-468a-8551-0b9940bca460)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/2642911d-4428-436f-9401-648b2febd401)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/f9d13f32-a36d-47ae-8f72-29f3d4ec507d)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/6347f352-d981-408f-8cf4-a823ec54cd4c)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/640ae474-f95e-47cd-9789-570c3c2210fb)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/d94ca4fd-7586-44fd-868a-835908866cfe)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/015c019e-8628-4899-8bc5-a20d6136798d)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/a4056446-d791-4113-9aa1-31a447ec1277)
* section[sectionCariacArrestEvent].entry[+] = Reference(Observation/4beb996c-07bc-4cf7-b576-2b9589250c42)

// TODO: don't know what these four lines were trying to do
//*section[sectionProtocols].entry[ProtocolsUsed][+] = $NEMSIS#9914017
//*section[sectionProtocols].entry[ProtocolCategory] [=] = $NEMSIS#3602001
//*section[sectionProtocols].entry[ProtocolsUsed][+] = $NEMSIS#9914075
//*section[sectionProtocols].entry[ProtocolCategory] [=] = $NEMSIS#3602003

* section[sectionCoverage].entry[+] = Reference(Coverage/e84a6e0b-7607-4529-8afc-40a02ebf4d24)

// Note: todo - sectionCareTeamsectionPhysicianCertificationStatement

* section[sectionParamedicineNote].entry = "Pt passed out while at church. Pt's husband initiated CPR while others applied an AED that was in the church. ROSC during transport."

