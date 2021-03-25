
### About This Guide

This content profiles defiines the Paramedicine care summary document that should be passed to the hospital for the trasnport of a patient from emergency medical services systems. 

## PCS Actors, and Transactions

* Actors

  - [Content Creator](2_actors_and_transactions.html#Content Creator)

  - [Content Consumer](2_actors_and_transactions.html#Content Consumer)

* Transactions

  - [PCC-1](PCC-1.html)
  - [ITI-65](ITI-65.html)

## PCS Overview

When a patient is transported for a medical emergency to a hospital,
scene information, transfer information, patient assessments, and
interventions are only verbally available to hospitals when the patient
arrives. This results in inefficiencies and potential errors in the
patient care process. This profile will map the flow of the patient
information from the ambulance patient record, commonly known as the
electronic Patient Care Record (ePCR), to the hospital Electronic
Medical Record (EMR).

Currently, patient interventions and assessments are written into an
ambulance electronic Patient Care Record (ePCR), and are either manually
updated by the Emergency Medical Services (EMS) crew, or collected from
electronic devices (e.g., hemodynamic monitor). The ePCR is updated with
treatments and interventions that are administered during the transport.
The hospital will not typically have access to paper or electronic
versions of this patient information until the report is finished and
signed in the ePCR and only if it is requested by the hospital. 

In this content profile, the prehospital and paramedicine interventions and patient
assessments are made available to the hospital/emergency room IT system
electronically when the patient arrives, or in advance of patient
arrival to the hospital. This informs medical decision making during the
hospital treatment to improve patient care and to save lives. Additional
information that can be found in the completed report can be shared with
the hospital in electronic and codable form. The information available
can then be used to report to registries and quality reporting.

### Concepts

When a hospital is receiving a patient arriving in an emergency
ambulance transport, the main source of the patient information is the
ambulance crew that performed the emergency transport. This information
is not typically electronically transferred and therefore this relay of
information is usually verbal. This can draw away from the treatment of
the patient. The use of an interoperable transfer of patient information
can reduce the time spent relaying information and provide the hospital
treatment team with patient information that can be used to make
decisions on their treatment upon their arrival to the hospital.

### Use Case 1: Emergency Response for Heart Attack

This use case describes how an emergency response for a heart attack is
carried out and then how the information on interventions are recorded
and provided to a hospital.

#### do Use Case Description

A fifty-year-old man develops heart attack symptoms. He calls 911 for an
emergency transport to a hospital. The emergency transport team is able
to retrieve some of the patient’s medical history, current medications
and allergies from the patient and inputs this information in their
Electronic Patient Care Record (ePCR). The patient told EMTs that he had
already taken his prescribed nitroglycerine thirty minutes before
calling 911 when the chest pain first presented. A 12 lead EKG was
established to monitor the patient’s heart rhythm and the rhythm shows
abnormalities indicative to a myocardial infarction. The EMT starts an
intravenous line in the patient’s left arm. During the transport the
patient’s chest pain increases and breathing is elevated. After ensuring
that the patient is not on any blood thinners, the EMT administers
aspirin to the patient. The patient felt relief after he was given
aspirin. However, after feeling this relief, he falls into cardiac
arrest. Compressions are started and maintained until arrival at the
hospital. The patient information is made available to the hospital
system and the hospital has full access to the EKG data, vitals, and
interventions that were shared during the transport. The EMS ePCR is
completed and then electronically shared with the hospital to be
available for quality metrics. This sharing can be either directly or
through a document sharing infrastructure.

#### do Process Flow

**Figure: Use Case 1 Process Flow**
Figure X.4.2.1.2-1: Basic Process Flow in PCS Profile

**Pre-conditions**:

The person calling 911 is suffering from an emergent issue.

An EMS response team is sent out for the call.

**Main Flow**:

EMS provider arrives on scene and inputs the patient information into
the ePCR.

Interventions are performed and documented during transport.

EMS, either directly or through a document sharing infrastructure,
provides the information for the current patient condition and
interventions that were performed to the hospital.

The patient care is transferred to the hospital staff.

**Post-conditions:**

The patient care is continued in the hospital.

The Paramedicine Care Summary – Complete, is completed and the full
report is provided either directly or through a document sharing
infrastructure, to the hospital.

