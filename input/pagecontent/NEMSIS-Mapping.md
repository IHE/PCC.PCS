

### Actors Roles
The Content Creator [PCC-1] transaction Provides a Document Bundle from a Content Creator to a Content Consumer.

**Table: NEMSIS to PCS FHIR Mapping**

|NEMSIS Data Elements		                                               | NEMSIS ID	 		     |NEMSIS Cardinality| PCS Cardinality | FHIR Path                 |
|--------------------------------------------------------------------------|-------------------------|------------------|-----------------|--------------------------|
| Patient Care Report Number			                                   | eRecord.01              | M [1..1]			|				  |  						 |
| Software Creator			                                               | eRecord.02              | M [1..1]			|				  |  						 |
| Software Name			                                                   | eRecord.03              | M [1..1]			|				  |  						 |
| Software Version 			                                               | eRecord.04              | M [1..1]			|				  |  						 |
| EMS Agency Unique State ID                                               | dAgency.01              | M [1..1]		    |			   	  | Organization.identifier  						 |
| EMS Agency Number  			                                           | dAgency.02              | M [1..1]			|				  | Organization.identifier   						 |
| EMS Agency Name 				                                           | dAgency.03              | RE [0..1]		|				  | Organization.name   						 |
| EMS Agency State 				                                           | dAgency.04              | M [1..1]			|				  | Organization.address   						 |
| Custom Data Element Title 				                               | eCustomConfiguration.01 | M [1..1]			|				  | Observation Resource   						 |
| Custom Definition				                                           | eCustomConfiguration.02 | M [1..1]			|				  | Observation Resource   						 |
| Custom Data Type				                                           | eCustomConfiguration.03 | M [1..1]			|				  | Observation.value[x]  						 |
| Custom Data Element Recurrence				                           | eCustomConfiguration.04 | M [1..1]			|				  | Observation Resource   						 |
| Custom Data Element Usage			                                       | eCustomConfiguration.05 | M [1..1]			|				  | Observation Resource   						 |
| Custom Data Element Potential Values 				                       | eCustomConfiguration.06 | O [1..*]			|				  | Observation.value[x]  						 |
| Custom Data Element Potential NOT Values (NV)				               | eCustomConfiguration.07 | O [1..*]			|				  | Observation.value[x].valueCodeableConcept  						 |
| Custom Data Element Potential Pertinent Negative Values (PN)             | eCustomConfiguration.08 | O [1..*]			|				  | Observation.dataAbsentReason  						 |
| Custom Data Element Grouping ID				                           | eCustomConfiguration.09 | O [1..1]			|				  | Observation.identifier   						 |
| Patient Care Report Number 				                               | eRecord.01  			 | M [1..1]			|				  |   						 |
| Software Creator 				                                           | eRecord.02   		     | M [1..1]			|				  |   						 |
| ESoftware Name				                                           | eRecord.03   		     | M [1..1]			|				  |   						 |
| Software Version 				                                           | eRecord.04   		     | M [1..1]			|				  |   						 |
| EMS Agency Number 				                                       | eResponse.01   		 | M [1..1]			|				  |   						 |
| EMS Agency Name				                                           | eResponse.02            | RE [0..1]	   	|				  |   						 |
| Incident Number				                                           | eResponse.03   		 | R [1..1]			|				  |   						 |
| EMS Response Number				                                       | eResponse.04   		 | R [1..1]			|				  |   						 |
| Type of Service Requested 				                               | eResponse.05   		 | M [1..1]			|				  |   						 |
| Standby Purpose				                                           | eResponse.06   	 	 | O [0..1]			|				  |   						 |
| Unit Transport and Equipment Capability			                       | eResponse.07   		 | M [1..1]			|				  |   						 |
| Type of Dispatch Delay 				                                   | eResponse.08   		 | R [1..*]			|				  |   						 |
| Type of Response Delay 				                                   | eResponse.09   		 | R [1..*]			|				  |   						 |
| Type of Scene Delay 				                                       | eResponse.10   		 | R [1..*]			|				  |   						 |
| Type of Transport Delay 				                                   | eResponse.11   		 | R [1..*]			|				  |   						 |
| Type of Turn-Around Delay 				                               | eResponse.12   		 | R [1..*]			|				  |   						 |
| EMS Vehicle (Unit) Number 				                               | eResponse.13   		 | M [1..1]			|				  |   						 |
| EMS Unit Call Sign 				                                       | eResponse.14   		 | M [1..1]			|				  |   						 |
| Vehicle Dispatch Location 				                               | eResponse.16   		 | O [0..1]			|				  |   						 |
| Vehicle Dispatch GPS Location				                               | eResponse.17   		 | O [0..1]			|				  |   						 |
| Vehicle Dispatch Location US National Grid Coordinates	               | eResponse.18   		 | O [0..1]			|				  |   						 |
| Beginning Odometer Reading of Responding Vehicle 			               | eResponse.19   		 | O [0..1]			|				  |   						 |
| On-Scene Odometer Reading of Responding Vehicle 			               | eResponse.20   		 | O [0..1]			|				  |   						 |
| Patient Destination Odometer Reading of Responding Vehicle               | eResponse.21   		 | O [0..1]			|				  |   						 |
| Ending Odometer Reading of Responding Vehicle 			               | eResponse.22   		 | O [0..1]			|				  |   						 |
| Response Mode to Scene				                                   | eResponse.23   		 | M [1..1]			|				  |   						 |
| Additional Response Mode Descriptors				                       | eResponse.24   		 | R [1..*]			|				  |   						 |
| Dispatch Reason 				                                           | eDispatch.01            | M [1..1]			|				  |   						 |
| EMD Performed 				                                           | eDispatch.02            | R [1..1]			|				  |   						 |
| EMD Card Number				                                           | eDispatch.03            | O [0..1]			|				  |   						 |
| Dispatch Center Name or ID 				                               | eDispatch.04            | O [0..1]			|				  |   						 |
| Dispatch Priority (Patient Acuity)				                       | eDispatch.05            | O [0..1]			|				  |   						 |
| Unit Dispatched CAD Record ID 				                           | eDispatch.06            | O [0..1]			|				  |   						 |
| Crew Member ID				                                           | eCrew.01                | RE [0..1]	    |				  |   						 |
| Crew Member Level 				                                       | eCrew.02                | RE [0..1]		|				  |   						 |
| Crew Member Response Role				                                   | eCrew.03                | RE [0..*]	    |				  |   						 |
| EPSAP Call Date/Time 				                                       | eTimes.01               | R [1..1]			|				  |   						 |
| Dispatch Notified Date/Time 				                               | eTimes.02               | O [0..1]			|				  |   						 |
| Unit Notified by Dispatch Date/Time 				                       | eTimes.03               | M [1..1]			|				  |   						 |
| Dispatch Acknowledged Date/Time 				                           | eTimes.04               | O [0..1]			|				  |   						 |
| Unit En Route Date/Time 				                                   | eTimes.05               | R [1..1]			|				  |   						 |
| Unit Arrived on Scene Date/Time				                           | eTimes.06               | R [1..1]			|				  |   						 |
| Arrived at Patient Date/Time				                               | eTimes.07               | R [1..1]			|				  |   						 |
| Transfer of EMS Patient Care Date/Time				                   | eTimes.08               | RE [0..1]		|				  |   						 |
| Unit Left Scene Date/Time				                                   | eTimes.09               | R [1..1]			|				  |   						 |
| Arrival at Destination Landing Area Date/Time 			               | eTimes.10               | O [0..1]			|				  |   						 |
| Patient Arrived at Destination Date/Time				                   | eTimes.11               | R [1..1]			|				  |   						 |
| Destination Patient Transfer of Care Date/Time 		                   | eTimes.12               | R [1..1]			|				  |   						 |
| EUnit Back in Service Date/Time				                           | eTimes.13               | M [1..1]			|				  |   						 |
| Unit Canceled Date/Time				                                   | eTimes.14               | O [0..1]			|				  |   						 |
| Unit Back at Home Location Date/Time 				                       | eTimes.15               | O [0..1]			|				  |   						 |
| EMS Call Completed Date/Time 				                               | eTimes.16               | O [0..1]			|				  |   						 |
| Unit Arrived at Staging Area Date/Time 				                   | eTimes.17               | O [0..1]			|				  |   						 |
| EMS Patient ID 				                                           | ePatient.01             | O [0..1]			|				  |   						 |
| Last Name 				                                               | ePatient.02             | RE [0..1]		|				  |   						 |
| First Name 				                                               | ePatient.03             | RE [0..1]		|				  |   						 |
| Middle Initial/Name 				                                       | ePatient.04             | O [0..1]			|				  |   						 |
| Patient's Home Address 				                                   | ePatient.05             | O [0..1]			|				  |   						 |
| Patient's Home City				                                       | ePatient.06             | O [0..1]			|				  |   						 |
| Patient's Home County				                                       | ePatient.07             | R [1..1]			|				  |   						 |
| Patient's Home State				                                       | ePatient.08             | R [1..1]			|				  |   						 |
| Patient's Home ZIP Code 				                                   | ePatient.09             | R [1..1]			|				  |   						 |
| Patient's Country of Residence 				                           | ePatient.10             | O [0..1]			|				  |   						 |
| Patient Home Census Tract 				                               | ePatient.11             | O [0..1]			|				  |   						 |
| Social Security Number				                                   | ePatient.12             | O [0..1]			|				  |   						 |
| Gender 				                              		               | ePatient.13             | R [1..1]			|				  |   						 |
| Race				                               			               | ePatient.14             | R [1..*]			|				  |   						 |
| Age 				                               		                   | ePatient.15             | R [1..1]			|				  |   						 |
| Age Units 				                                               | ePatient.16             | R [1..1]			|				  |   						 |
| Date of Birth				                                               | ePatient.17             | RE [0..1]	    |				  |   						 |
| Patient's Phone Number				                                   | ePatient.18             | O [0..*]			|				  |   						 |
| Patient's Email Address 				                                   | ePatient.19             | O [0..*]			|				  |   						 |
| State Issuing Driver's License 				                           | ePatient.20             | O [0..1]			|				  |   						 |
| Driver's License Number 				                                   | ePatient.21             | O [0..1]			|				  |   						 |
| Alternate Home Residence 				                                   | ePatient.22             | RE [0..1]		|				  |   						 |
| Primary Method of Payment 				                               | ePayment.01             | R [1..1]			|				  |   						 |
| Physician Certification Statement 				                       | ePayment.02             | O [0..1]			|				  |   						 |
| Date Physician Certification Statement Signed 				           | ePayment.03             | O [0..1]			|				  |   						 |
| Reason for Physician Certification Statement				               | ePayment.04             | O [0..*]			|				  |   						 |
| Healthcare Provider Type Signing Physician Certification Statement       | ePayment.05             | O [0..1]			|				  |   						 |
| Last Name of Individual Signing Physician Certification Statement	       | ePayment.06             | O [0..1]			|				  |   						 |
| First Name of Individual Signing Physician Certification Statement       | ePayment.07             | O [0..1]			|				  |   						 |
| Patient Resides in Service Area 				                           | ePayment.08             | O [0..1]			|				  |   						 |
| Insurance Company ID 				                                       | ePayment.09             | O [0..1]			|				  |   						 |
| Insurance Company Name 				                                   | ePayment.10             | O [0..1]			|				  |   						 |
| Insurance Company Billing Priority				                       | ePayment.11             | O [0..1]			|				  |   						 |
| Insurance Company Address 				                               | ePayment.12             | O [0..1]			|				  |   						 |
| Insurance Company City				                                   | ePayment.13             | O [0..1]			|				  |   						 |
| Insurance Company State			                                       | ePayment.14             | O [0..1]			|				  |   						 |
| Insurance Company ZIP Code 				                               | ePayment.15             | O [0..1]			|				  |   						 |
| Insurance Company Country 				                               | ePayment.16             | O [0..1]			|				  |   						 |
| Insurance Group ID				                                       | ePayment.17             | O [0..1]			|				  |   						 |
| Insurance Policy ID Number 				                               | ePayment.18             | O [0..1]			|				  |   						 |
| Last Name of the Insured 				                                   | ePayment.19             | O [0..1]			|				  |   						 |
| First Name of the Insured				                                   | ePayment.20             | O [0..1]			|				  |   						 |
| Middle Initial/Name of the Insured 				                       | ePayment.21             | O [0..1]			|				  |   						 |
| Relationship to the Insured				                               | ePayment.22             | O [0..1]			|				  |   						 |
| Insurance Group Name 				                                       | ePayment.58             | O [0..1]			|				  |   						 |
| Insurance Company Phone Number 				                           | ePayment.59             | O [0..*]			|				  |   						 |
| Date of Birth of the Insured 				                               | ePayment.60             | O [0..1]			|				  |   						 |
| Closest Relative/Guardian Last Name 				                       | ePayment.23             | O [0..1]			|				  |   						 |
| Closest Relative/ Guardian First Name 				                   | ePayment.24             | O [0..1]			|				  |   						 |
| Closest Relative/ Guardian Middle Initial/Name				           | ePayment.25             | O [0..1]			|				  |   						 |
| Closest Relative/ Guardian Street Address				                   | ePayment.26             | O [0..1]			|				  |   						 |
| Closest Relative/ Guardian City			                               | ePayment.27             | O [0..1]		    |				  |   						 |
| Closest Relative/ Guardian State				                           | ePayment.28             | O [0..1]			|				  |   						 |
| Closest Relative/ Guardian ZIP Code				                       | ePayment.29             | O [0..1]			|				  |   						 |
| Closest Relative/ Guardian Country				                       | ePayment.30             | O [0..1]			|				  |   						 |
| Closest Relative/ Guardian Phone Number 				                   | ePayment.31             | O [0..*]			|				  |   						 |
| Closest Relative/ Guardian Relationship				                   | ePayment.32             | O [0..1]			|				  |   						 |
| Patient's Employer 				                                       | ePayment.33             | O [0..1]			|				  |   						 |
| Patient's Employer's Address				                               | ePayment.34             | O [0..1]			|				  |   						 |
| Patient's Employer's City 				                               | ePayment.35             | O [0..1]			|				  |   						 |
| Patient's Employer's State 				                               | ePayment.36             | O [0..1]			|				  |   						 |
| Patient's Employer's ZIP Code 				                           | ePayment.37             | O [0..1]			|				  |   						 |
| Patient's Employer's Country 				                               | ePayment.38             | O [0..1]			|				  |   						 |
| Patient's Employer's Primary Phone Number			                       | ePayment.39             | O [0..1]			|				  |   						 |
| Response Urgency 				                                           | ePayment.40             | O [0..1]			|				  |   						 |
| Patient Transport Assessment				                               | ePayment.41             | O [0..*]			|				  |   						 |
| Specialty Care Transport Care Provider				                   | ePayment.42             | O [0..*]			|				  |   						 |
| Ambulance Transport Reason Code				                           | ePayment.44             | O [0..*]			|				  |   						 |
| Round Trip Purpose Description 				                           | ePayment.45             | O [0..1]			|				  |   						 |
| Stretcher Purpose Description 				                           | ePayment.46             | O [0..1]			|				  |   						 |
| Ambulance Conditions Indicator				                           | ePayment.47             | O [0..*]			|				  |   						 |
| Mileage to Closest Hospital Facility				                       | ePayment.48             | O [0..1]			|				  |   						 |
| LS Assessment Performed and Warranted 				                   | ePayment.49             | O [0..1]			|				  |   						 |
| CMS Service Level				                                           | ePayment.50             | R [1..1]			|				  |   						 |
| EMS Condition Code			                                           | ePayment.51             | O [0..*]			|				  |   						 |
| CMS Transportation Indicator 				                               | ePayment.52             | O [0..*]			|				  |   						 |
| Transport Authorization Code 				                               | ePayment.53             | O [0..1]			|				  |   						 |
| Prior Authorization Code Payer 				                           | ePayment.54             | O [0..1]			|				  |   						 |
| Supply Item Used Name 				                                   | ePayment.55             | O [0..1]			|				  |   						 |
| Number of Supply Item(s) Used 				                           | ePayment.56             | O [0..1]			|				  |   						 |
| Payer Type				                                               | ePayment.57             | O [0..1]			|				  |   						 |
| First EMS Unit on Scene 				                                   | eScene.01               | R [1..1]			|				  |   						 |
| Other EMS or Public Safety Agencies at Scene 				               | eScene.02               | O [0..1]			|				  |   						 |
| Other EMS or Public Safety Agency ID Number 				               | eScene.03               | O [0..1]			|				  |   						 |
| Type of Other Service at Scene 				                           | eScene.04               | O [0..1]			|				  |   						 |
| First Other EMS or Public Safety Agency at Scene to Provide Patient Care | eScene.24               | O [0..1]			|				  |   						 |
| Date/Time Initial Responder Arrived on Scene 				               | eScene.05               | O [0..1]			|				  |   						 |
| Number of Patients at Scene 				                               | eScene.06               | R [1..1]			|				  |   						 |
| Mass Casualty Incident				                                   | eScene.07               | R [1..1]			|				  |   						 |
| Triage Classification for MCI Patient				                       | eScene.08               | R [1..1]			|				  |   						 |
| Incident Location Type 				                                   | eScene.09               | R [1..1]			|				  |   						 |
| Incident Facility Code				                                   | eScene.10               | RE [0..1]		|				  |   						 |
| Scene GPS Location 				                                       | eScene.11               | O [0..1]			|				  |   						 |
| Scene US National Grid Coordinates 				                       | eScene.12               | O [0..1]			|				  |   						 |
| EIncident Facility or Location Name				                       | eScene.13               | O [0..1]			|				  |   						 |
| Mile Post or Major Roadway				                               | eScene.14               | RE [0..1]		|				  |   						 |
| Incident Street Address 				                                   | eScene.15               | RE [0..1]		|				  |   						 |
| Incident Apartment, Suite, or Room 				                       | eScene.16               | RE [0..1]		|				  |   						 |
| Incident City 				                                           | eScene.17               | RE [0..1]		|				  |   						 |
| Incident State 				                                           | eScene.18               | R [1..1]			|				  |   						 |
| Incident ZIP Code				                                           | eScene.19               | R [1..1]			|				  |   						 |
| Scene Cross Street or Directions			                               | eScene.20               | RE [0..1]		|				  |   						 |
| Incident County 				                                           | eScene.21               | R [1..1]			|				  |   						 |
| Incident Country 				                                           | eScene.22               | O [0..1]			|				  |   						 |
| Incident Census Tract 				                                   | eScene.23               | O [0..1]			|				  |   						 |
| Date/Time of Symptom Onset 				                               | eSituation.01           | R [1..1]			|				  |   						 |
| Possible Injury 				                                           | eSituation.02           | R [1..1]			|				  |   						 |
| Complaint Type				                                           | eSituation.03           | RE [0..1]	    |				  |   						 |
| Complaint				                                                   | eSituation.04           | RE [0..1]		|				  |   						 |
| Duration of Complaint				                                       | eSituation.05           | RE [0..1]		|				  |   						 |
| Time Units of Duration of Complaint 				                       | eSituation.06           | RE [0..1]		|				  |   						 |
| Chief Complaint Anatomic Location 				                       | eSituation.07           | R [1..1]			|				  |   						 |
| Chief Complaint Organ System 				                               | eSituation.08           | R [1..1]			|				  |   						 |
| Primary Symptom 				                                           | eSituation.09           | R [1..1]			|				  |   						 |
| Other Associated Symptoms				                                   | eSituation.10           | R [1..1]			|				  |   						 |
| Provider's Primary Impression 				                           | eSituation.11           | R [1..1]		    |				  |   						 |
| Provider's Secondary Impressions 				                           | eSituation.12           | R [1..1]			|				  |   						 |
| Initial Patient Acuity 				                                   | eSituation.13           | R [1..1]			|				  |   						 |
| Work-Related Illness/Injury 				                               | eSituation.14           | RE [0..1]		|				  |   						 |
| Patient's Occupational Industry 				                           | eSituation.15           | O [0..1]			|				  |   						 |
| Patient's Occupation 				                                       | eSituation.16           | O [0..1]		    |				  |   						 |
| Patient Activity 				                                           | eSituation.17           | RE [0..1]		|				  |   						 |
| Date/Time Last Known Well 				                               | eSituation.18           | R [1..1]		    |				  |   						 |
| Justification for Transfer or Encounter 				                   | eSituation.19           | RE [0..1]		|				  |   						 |
| Reason for Interfacility Transfer/Medical Transport				       | eSituation.20           | R [1..1]			|				  |   						 |
| Cause of Injury 				                                           | eInjury.01              | R [1..*]			|				  |   						 |
| Mechanism of Injury 				                                       | eInjury.02              | RE [0..*]		|				  |   						 |
| Trauma Triage Criteria (Steps 1 and 2)				                   | eInjury.03              | R [1..*]			|				  |   						 |
| Trauma Triage Criteria (Steps 3 and 4) 				                   | eInjury.04              | R [1..*]		    |				  |   						 |
| EMain Area of the Vehicle Impacted by the Collision 				       | eInjury.05              | O [0..1]			|				  |   						 |
| Location of Patient in Vehicle 				                           | eInjury.06              | O [0..1]			|				  |   						 |
| Use of Occupant Safety Equipment 				                           | eInjury.07              | RE [0..*]		|				  |   						 |
| Airbag Deployment 				                                       | eInjury.08              | O [0..*]			|				  |   						 |
| Height of Fall (feet)				                                       | eInjury.09              | O [0..1]			|				  |   						 |
| OSHA Personal Protective Equipment Used 				                   | eInjury.10              | O [0..*]			|				  |   						 |
| ACN System/Company Providing ACN Data 				                   | eInjury.11              | O [0..1]			|				  |   						 |
| ACN Incident ID 				                                           | eInjury.12              | O [0..1]			|				  |   						 |
| ACN Call Back Phone Number				                               | eInjury.13              | O [0..*]			|				  |   						 |
| Date/Time of ACN Incident 				                               | eInjury.14              | O [0..1]			|				  |   						 |
| ACN Incident Location				                                       | eInjury.15              | O [0..1]			|				  |   						 |
| ACN Incident Vehicle Body Type 				                           | eInjury.16              | O [0..1]		    |				  |   						 |
| ACN Incident Vehicle Manufacturer 				                       | eInjury.17              | O [0..1]			|				  |   						 |
| ACN Incident Vehicle Make 				                               | eInjury.18              | O [0..1]			|				  |   						 |
| ACN Incident Vehicle Model 				                               | eInjury.19              | O [0..1]		    |				  |   						 |
| ACN Incident Vehicle Model Year 				                           | eInjury.20              | O [0..1]			|				  |   						 |
| ACN Incident Multiple Impacts				                               | eInjury.21              | O [0..1]			|				  |   						 |
| ACN Incident Delta Velocity 				                               | eInjury.22              | O [0..*]			|				  |   						 |
| ACN High Probability of Injury 				                           | eInjury.23              | O [0..1]			|				  |   						 |
| ACN Incident PDOF 				                                       | eInjury.24              | O [0..1]			|				  |   						 |
| ACN Incident Rollover 				                                   | eInjury.25              | O [0..1]			|				  |   						 |
| ACN Vehicle Seat Location				                                   | eInjury.26              | O [0..1]		    |				  |   						 |
| Seat Occupied 				                                           | eInjury.27              | O [0..1]			|				  |   						 |
| ACN Incident Seatbelt Use 				                               | eInjury.28              | O [0..1]			|				  |   						 |
| ACN Incident Airbag Deployed 				                               | eInjury.29              | O [0..1]			|				  |   						 |
| Cardiac Arrest 				                                	       | eArrest.01              | R [1..1]			|				  |   						 |
| Cardiac Arrest Etiology 				                                   | eArrest.02              | R [1..1]			|				  |   						 |
| Resuscitation Attempted By EMS 				                           | eArrest.03              | R [1..*]			|				  |   						 |
| Arrest Witnessed By 				                                       | eArrest.04              | R [1..*]			|				  |   						 |
| AED Use Prior to EMS Arrival 				                               | eArrest.07              | R [1..1]			|				  |   						 |
| Type of CPR Provided 				                                       | eArrest.09              | R [1..*]			|				  |   						 |
| Therapeutic Hypothermia by EMS 				                           | eArrest.10              | O [0..1]			|				  |   						 |
| First Monitored Arrest Rhythm of the Patient 				               | eArrest.11              | R [1..1]			|				  |   						 |
| Any Return of Spontaneous Circulation 				                   | eArrest.12              | R [1..*]			|				  |   						 |
| Neurological Outcome at Hospital Discharge 				               | eArrest.13              | O [0..1]			|				  |   						 |
| Date/Time of Cardiac Arrest				                               | eArrest.14              | R [1..1]			|				  |   						 |
| Date/Time Resuscitation Discontinued				                       | eArrest.15              | RE [0..1]		|				  |   						 |
| Reason CPR/Resuscitation Discontinued 				                   | eArrest.16              | R [1..1]			|				  |   						 |
| Cardiac Rhythm on Arrival at Destination 				                   | eArrest.17              | R [1..*]			|				  |   						 |
| End of EMS Cardiac Arrest Event				                           | eArrest.18              | R [1..1]			|				  |   						 |
| Date/Time of Initial CPR 				                                   | eArrest.19              | O [0..1]			|				  |   						 |
| Who First Initiated CPR 				                                   | eArrest.20              | R [1..1]			|				  |   						 |
| Who First Applied the AED 				                               | eArrest.21              | R [1..1]			|				  |   						 |
| Who First Defibrillated the Patient 				                       | eArrest.22              | R [1..1]		    |				  |   						 |
| Barriers to Patient Care 				                                   | eHistory.01             | R [1..*]			|				  |   						 |
| Last Name of Patient's Practitioner 				                       | eHistory.02             | O [0..1]			|				  |   						 |
| First Name of Patient's Practitioner 				                       | eHistory.03             | O [0..1]			|				  |   						 |
| Middle Name/Initial of Patient's Practitioner 				           | eHistory.04             | O [0..1]			|				  |   						 |
| Advance Directives				                                       | eHistory.05             | RE [0..*]		|				  |   						 |
| Medication Allergies 				                                       | eHistory.06             | RE [0..*]		|				  |   						 |
| EEnvironmental/Food Allergies				                               | eHistory.07             | O [0..*]			|				  |   						 |
| Medical/Surgical History 				                                   | eHistory.08             | RE [0..*]		|				  |   						 |
| EMedical History Obtained From 				                           | eHistory.09             | O [0..*]			|				  |   						 |
| The Patient's Type of Immunization 				                       | eHistory.10             | O [0..1]			|				  |   						 |
| Immunization Year 				                                       | eHistory.11             | O [0..1]			|				  |   						 |
| Current Medications 				                                       | eHistory.12             | RE [0..1]		|				  |   						 |
| Current Medication Dose 				                                   | eHistory.13             | O [0..1]			|				  |   						 |
| Current Medication Dosage Unit			                               | eHistory.14             | O [0..1]			|				  |   						 |
| Current Medication Administration Route				                   | eHistory.15             | O [0..1]			|				  |   						 |
| Current Medication Frequency 				                               | eHistory.20             | O [0..1]			|				  |   						 |
| Presence of Emergency Information Form 				                   | eHistory.16             | O [0..1]		    |				  |   						 |
| Alcohol/Drug Use Indicators				                               | eHistory.17             | R [1..*]			|				  |   						 |
| Pregnancy 				                                               | eHistory.18             | O [0..1]			|				  |   						 |
| Last Oral Intake				                                           | eHistory.19             | O [0..1]			|				  |   						 |
| Patient Care Report Narrative				                               | eNarrative.01           | RE [0..1]		|				  |   						 |
| Date/Time Vital Signs Taken 				                               | eVitals.01              | R [1..1]			|				  |   						 |
| Obtained Prior to this Unit's EMS Care 				                   | eVitals.02              | R [1..1]			|				  |   						 |
| Cardiac Rhythm / Electrocardiography (ECG) 				               | eVitals.03              | R [1..*]		    |				  |   						 |
| ECG Type				                                                   | eVitals.04              | R [1..1]			|				  |   						 |
| Method of ECG Interpretation				                               | eVitals.05              | R [1..*]			|				  |   						 |
| SBP (Systolic Blood Pressure)				                               | eVitals.06              | R [1..1]			|				  |   						 |
| DBP (Diastolic Blood Pressure)				                           | eVitals.07              | RE [0..1]		|				  |   						 |
| Method of Blood Pressure Measurement				                       | eVitals.08              | RE [0..1]		|				  |   						 |
| Mean Arterial Pressure				                                   | eVitals.09              | O [0..1]		    |				  |   						 |
| Heart Rate				                                               | eVitals.10              | R [1..1]			|				  |   						 |
| Method of Heart Rate Measurement			                               | eVitals.11              | O [0..1]			|				  |   						 |
| Pulse Oximetry 				                                           | eVitals.12              | R [1..1]			|				  |   						 |
| Pulse Rhythm				                                               | eVitals.13              | O [0..1]		    |				  |   						 |
| Respiratory Rate 				                                           | eVitals.14              | R [1..1]			|				  |   						 |
| Respiratory Effort 				                                       | eVitals.15              | O [0..1]			|				  |   						 |
| End Tidal Carbon Dioxide (ETCO2)				                           | eVitals.16              | R [1..1]			|				  |   						 |
| Carbon Monoxide (CO)				                                       | eVitals.17              | RE [0..1]	 	|				  |   						 |
| Blood Glucose Level 				                                       | eVitals.18              | R [1..1]			|				  |   						 |
| Glasgow Coma Score-Eye 				                                   | eVitals.19              | R [1..1]			|				  |   						 |
| Glasgow Coma Score-Verbal 				                               | eVitals.20              | R [1..1]			|				  |   						 |
| Glasgow Coma Score-Motor 				                                   | eVitals.21              | R [1..1]			|				  |   						 |
| Glasgow Coma Score-Qualifier 				                               | eVitals.22              | R [1..*]			|				  |   						 |
| Total Glasgow Coma Score 				                                   | eVitals.23              | RE [0..1]		|				  |   						 |
| Temperature				                                               | eVitals.24              | RE [0..1]		|				  |   						 |
| Temperature Method 				                                       | eVitals.25              | O [0..1]			|				  |   						 |
| Level of Responsiveness (AVPU)				                           | eVitals.26              | R [1..1]			|				  |   						 |
| Pain Scale Score 				                                           | eVitals.27              | R [1..1]			|				  |   						 |
| Pain Scale Type 				                                           | eVitals.28              | RE [0..1]		|				  |   						 |
| Stroke Scale Score				                                       | eVitals.29              | R [1..1]			|				  |   						 |
| Stroke Scale Type 				                                       | eVitals.30              | R [1..1]			|				  |   						 |
| Reperfusion Checklist 				                                   | eVitals.31              | R [1..1]			|				  |   						 |
| APGAR				                                                       | eVitals.32              | O [0..1]			|				  |   						 |
| Revised Trauma Score 				                                       | eVitals.33              | O [0..1]		    |				  |   						 |
| Date/Time of Laboratory or Imaging Result 				               | eLabs.01                | O [0..1]			|				  |   						 |
| Study/Result Prior to this Unit's EMS Care 				               | eLabs.02                | O [0..1]			|				  |   						 |
| Laboratory Result Type				                                   | eLabs.03                | O [0..1]			|				  |   						 |
| Laboratory Result 				                                       | eLabs.04                | O [0..1]			|				  |   						 |
| Imaging Study Type 				                                       | eLabs.05                | O [0..1]			|				  |   						 |
| Imaging Study Results				                                       | eLabs.06                | O [0..1]			|				  |   						 |
| Imaging Study File or Waveform Graphic Type				               | eLabs.07                | O [0..1]			|				  |   						 |
| Imaging Study File or Waveform Graphic				                   | eLabs.08                | O [0..1]			|				  |   						 |
| Estimated Body Weight in Kilograms 				                       | eExam.01                | RE [0..1]		|				  |   						 |
| Length Based Tape Measure 				                               | eExam.02                | RE [0..1]		|				  |   						 |
| Date/Time of Assessment 				                                   | eExam.03                | O [0..1]			|				  |   						 |
| Skin Assessment				                                           | eExam.04                | O [0..*]			|				  |   						 |
| Head Assessment 				                                           | eExam.05                | O [0..*]			|				  |   						 |
| Face Assessment 				                                           | eExam.06                | O [0..*]			|				  |   						 |
| Neck Assessment 				                                           | eExam.07                | O [0..*]			|				  |   						 |
| Heart Assessment 				                                           | eExam.09                | O [0..*]			|				  |   						 |
| Abdominal Assessment Finding Location 				                   | eExam.10                | O [0..1]			|				  |   						 |
| Abdomen Assessment 				                                       | eExam.11                | O [0..*]			|				  |   						 |
| Pelvis/Genitourinary Assessment 				                           | eExam.12                | O [0..*]			|				  |   						 |
| Back and Spine Assessment Finding Location 				               | eExam.13                | O [0..1]			|				  |   						 |
| Back and Spine Assessment				                                   | eExam.14                | O [0..*]			|				  |   						 |
| Extremity Assessment Finding Location 				                   | eExam.15                | O [0..1]			|				  |   						 |
| Extremities Assessment 				                                   | eExam.16                | O [0..*]			|				  |   						 |
| Eye Assessment Finding Location				                           | eExam.17                | O [0..1]			|				  |   						 |
| Eye Assessment 				                                           | eExam.18                | O [0..*]			|				  |   						 |
| Lung Assessment Finding Location				                           | eExam.22                | O [0..1]			|				  |   						 |
| Lung Assessment 				                                           | eExam.23                | O [0..*]			|				  |   						 |
| Chest Assessment Finding Location 				                       | eExam.24                | O [0..1]			|				  |   						 |
| Chest Assessment				                                           | eExam.25                | O [0..*]			|				  |   						 |
| Mental Status Assessment 				                                   | eExam.19                | O [0..*]			|				  |   						 |
| Neurological Assessment 				                                   | eExam.20                | O [0..*]			|				  |   						 |
| Stroke/CVA Symptoms Resolved 				                               | eExam.21                | RE [0..1]		|				  |   						 |
| Protocols Used 				                                           | eProtocols.01           | R [1..1]			|				  |   						 |
| Protocol Age Category 				                                   | eProtocols.02           | RE [0..1]		|				  |   						 |
| Date/Time Medication Administered 				                       | eMedications.01         | R [1..1]			|				  |   						 |
| Medication Administered Prior to this Unit's EMS Care 		           | eMedications.02         | R [1..1]			|				  |   						 |
| Medication Administered 				                                   | eMedications.03         | R [1..1]			|				  |   						 |
| Medication Administered Route				                               | eMedications.04         | R [1..1]			|				  |   						 |
| Medication Dosage				                                           | eMedications.05         | R [1..1]			|				  |   						 |
| Medication Dosage Units 				                                   | eMedications.06         | R [1..1]			|				  |   						 |
| Response to Medication 				                                   | eMedications.07         | R [1..1]			|				  |   						 |
| Medication Complication 				                                   | eMedications.08         | R [1..1]			|				  |   						 |
| Medication Crew (Healthcare Professionals) ID 				           | eMedications.09         | RE [0..1]		|				  |   						 |
| Role/Type of Person Administering Medication				               | eMedications.10         | R [1..1]			|				  |   						 |
| Medication Authorization 				                                   | eMedications.11         | O [0..1]		    |				  |   						 |
| Medication Authorizing Physician			                               | eMedications.12         | O [0..1]			|				  |   						 |
| Date/Time Procedure Performed 				                           | eProcedures.01          | R [1..1]		    |				  |   						 |
| Procedure Performed Prior to this Unit's EMS Care 				       | eProcedures.02          | R [1..1]			|				  |   						 |
| Procedure 				                                               | eProcedures.03          | R [1..1]			|				  |   						 |
| Size of Procedure Equipment 				                               | eProcedures.04          | O [0..1]			|				  |   						 |
| Number of Procedure Attempts 				                               | eProcedures.05          | R [1..1]			|				  |   						 |
| Procedure Successful 				                                       | eProcedures.06          | R [1..1]			|				  |   						 |
| Procedure Complication 				                                   | eProcedures.07          | R [1..*]			|				  |   						 |
| Response to Procedure				                                       | eProcedures.08          | R [1..1]		    |				  |   						 |
| Procedure Crew Members ID 				                               | eProcedures.09          | RE [0..1]		|				  |   						 |
| Role/Type of Person Performing the Procedure 				               | eProcedures.10          | R [1..1]		    |				  |   						 |
| Procedure Authorization 				                                   | eProcedures.11          | O [0..1]			|				  |   						 |
| Procedure Authorizing Physician 				                           | eProcedures.12          | O [0..1]		    |				  |   						 |
| Vascular Access Location 				                                   | eProcedures.13          | RE [0..1]		|				  |   						 |
| Indications for Invasive Airway 				                           | eAirway.01              | RE [0..*]		|				  |   						 |
| Date/Time Airway Device Placement Confirmation				           | eAirway.02              | RE [0..1]		|				  |   						 |
| Airway Device Being Confirmed 				                           | eAirway.03              | RE [0..1]		|				  |   						 |
| Airway Device Placement Confirmed Method 				                   | eAirway.04              | RE [0..*]		|				  |   						 |
| Tube Depth				                                               | eAirway.05              | O [0..1]			|				  |   						 |
| Type of Individual Confirming Airway Device Placement 				   | eAirway.06              | RE [0..1]		|				  |   						 |
| Crew Member ID				                                           | eAirway.07              | RE [0..1]		|				  |   						 |
| Airway Complications Encountered 				                           | eAirway.08              | RE [0..*]		|				  |   						 |
| Suspected Reasons for Failed Airway Management				           | eAirway.09              | O [0..1]			|				  |   						 |
| Date/Time Decision to Manage the Patient with an Invasive Airway 	       | eAirway.10              | O [0..1]		    |				  |   						 |
| Date/Time Invasive Airway Placement Attempts Abandoned 				   | eAirway.11              | O [0..1]		    |				  |   						 |
| Medical Device Serial Number 				                               | eDevice.01              | O [0..1]			|				  |   						 |
| Date/Time of Event (per Medical Device) 				                   | eDevice.02              | O [0..1]		    |				  |   						 |
| Medical Device Event Type 				                               | eDevice.03              | O [0..*]			|				  |   						 |
| Medical Device Waveform Graphic Type 				                       | eDevice.04              | O [0..1]			|				  |   						 |
| Medical Device Waveform Graphic 				                           | eDevice.05              | O [0..1]			|				  |   						 |
| Medical Device Mode (Manual, AED, Pacing, CO2, O2, etc) 				   | eDevice.06              | O [0..1]		    |				  |   						 |
| Medical Device ECG Lead 				                                   | eDevice.07              | O [0..*]			|				  |   						 |
| Medical Device ECG Interpretation 				                       | eDevice.08              | O [0..1]		    |				  |   						 |
| Type of Shock				                                               | eDevice.09              | O [0..1]		    |				  |   						 |
| Shock or Pacing Energy 				                                   | eDevice.10              | O [0..1]		    |				  |   						 |
| Total Number of Shocks Delivered				                           | eDevice.11              | O [0..1]		    |				  |   						 |
| Pacing Rate				                                               | eDevice.12              | O [0..1]		    |				  |   						 |
| Destination/Transferred To, Name 				                           | eDisposition.01         | RE [0..1]	    |				  |   						 |
| Destination/Transferred To, Code 				                           | eDisposition.02         | RE [0..1]		|				  |   						 |
| Destination Street Address 				                               | eDisposition.03         | O [0..1]			|				  |   						 |
| Destination City			                                               | eDisposition.04         | O [0..1]			|				  |   						 |
| Destination State 				                                       | eDisposition.05         | R [1..1]			|				  |   						 |
| Destination County 				                                       | eDisposition.06         | R [1..1]			|				  |   						 |
| Destination ZIP Code 				                                       | eDisposition.07         | R [1..1]			|				  |   						 |
| Destination Country				                                       | eDisposition.08         | O [0..1]			|				  |   						 |
| Destination GPS Location 				                                   | eDisposition.09         | O [0..1]			|				  |   						 |
| Destination Location US National Grid Coordinates				           | eDisposition.10         | O [0..1]			|				  |   						 |
| Number of Patients Transported in this EMS Unit 				           | eDisposition.11         | RE [0..1]		|				  |   						 |
| Unit Disposition				                                           | eDisposition.27         | M [1..1]		    |				  |   						 |
| Patient Evaluation/Care 				                                   | eDisposition.28         | R [1..1]			|				  |   						 |
| Crew Disposition 				                                           | eDisposition.29         | R [1..1]			|				  |   						 |
| Transport Disposition				                                       | eDisposition.30         | R [1..1]			|				  |   						 |
| Reason for Refusal/Release 				                               | eDisposition.31         | O [0..*]			|				  |   						 |
| How Patient Was Moved to Ambulance 				                       | eDisposition.13         | O [0..*]			|				  |   						 |
| Position of Patient During Transport				                       | eDisposition.14         | O [0..*]		    |				  |   						 |
| How Patient Was Moved From Ambulance				                       | deDisposition.15        | O [0..*]			|				  |   						 |
| EMS Transport Method 				                                       | eDisposition.16         | R [1..1]			|				  |   						 |
| Transport Mode from Scene 				                               | eDisposition.17         | R [1..1]			|				  |   						 |
| Additional Transport Mode Descriptors				                       | eDisposition.18         | R [1..*]			|				  |   						 |
| Final Patient Acuity 				                                       | eDisposition.19         | R [1..1]			|				  |   						 |
| Reason for Choosing Destination 				                           | eDisposition.20         | R [1..*]			|				  |   						 |
| Type of Destination				                                       | eDisposition.21         | R [1..1]			|				  |   						 |
| Hospital In-Patient Destination				                           | eDisposition.22         | R [1..1]			|				  |   						 |
| Hospital Capability				                                       | eDisposition.23         | R [1..*]			|				  |   						 |
| Destination Team Pre-Arrival Alert or Activation 				           | eDisposition.24         | R [1..1]			|				  |   						 |
| Date/Time of Destination Prearrival Alert or Activation				   | eDisposition.25         | R [1..1]			|				  |   						 |
| Disposition Instructions Provided 				                       | eDisposition.26         | O [0..*]		    |				  |   						 |
| Level of Care Provided per Protocol 				                       | eDisposition.32         | R [1..1]			|				  |   						 |
| Emergency Department Disposition				                           | eOutcome.01             | R [1..1]			|	N/A			  |  QORE Profile 						 |
| Hospital Disposition				                                       | eOutcome.02             | R [1..1]			|	N/A			  |  QORE Profile 						 |
| External Report ID/Number Type				                           | eOutcome.03             | O [0..1]			|	N/A			  |  QORE Profile						 |
| External Report ID/Number 				                               | eOutcome.04             | O [0..1]			|	N/A			  |  QORE Profile						 |
| Other Report Registry Type				                               | eOutcome.05             | O [0..1]			|	N/A			  |  QORE Profile						 |
| Emergency Department Procedures 				                           | eOutcome.09             | R [1..1]			|	N/A			  |  QORE Profile						 |
| Date/Time Emergency Department Procedure Performed 				       | eOutcome.19             | R [1..1]			|	N/A			  |  QORE Profile						 |
| Emergency Department Diagnosis 				                           | eOutcome.10             | R [1..*]			|	N/A			  |  QORE Profile						 |
| Date/Time of Hospital Admission 				                           | eOutcome.11             | R [1..1]			|	N/A			  |  QORE Profile						 |
| Hospital Procedures 				                                       | eOutcome.12             | R [1..1]			|	N/A			  |  QORE Profile						 |
| Date/Time Hospital Procedure Performed				                   | eOutcome.20             | R [1..1]			|	N/A			  |  QORE Profile						 |
| Hospital Diagnosis				                                       | eOutcome.13             | R [1..*]			|	N/A			  |  QORE Profile						 |
| Date/Time of Hospital Discharge				                           | eOutcome.16             | R [1..1]			|	N/A			  |  QORE Profile						 |
| Date/Time of Emergency Department Admission				               | eOutcome.18             | R [1..1]			|	N/A			  |  QORE Profile						 |
| Custom Data Element Result 				                               | eCustomResults.01       | M [1..*]			|				  |   						 |
| Custom Element ID Referenced 				                               | eCustomResults.02       | M [1..1]			|				  |   						 |
| CorrelationID of PatientCareReport Element or Group 				       | eCustomResults.03       | O [0..1]			|				  |   						 |
| Review Requested				                                           | eOther.01               | O [0..1]			|				  |   						 |
| Potential System of Care/Specialty/Registry Patient 				       | eOther.02               | O [0..1]			|				  |   						 |
| Personal Protective Equipment Used 				                       | eOther.03               | O [0..1]			|				  |   						 |
| EMS Professional (Crew Member) ID 				                       | eOther.04               | O [0..1]			|				  |   						 |
| Suspected EMS Work Related Exposure, Injury, or Death 				   | eOther.05               | RE [0..1]		|				  |   						 |
| The Type of Work-Related Injury, Death or Suspected Exposure 			   | eOther.06               | RE [0..1]		|				  |   						 |
| Natural, Suspected, Intentional, or Unintentional Disaster 			   | eOther.07               | O [0..1]			|				  |   						 |
| Crew Member Completing this Report				                       | eOther.08               | RE [0..1]		|				  |   						 |
| External Electronic Document Type				                           | eOther.09               | O [0..1]			|				  |   						 |
| File Attachment Type 				                                       | eOther.10               | O [0..1]			|				  |   						 |
| File Attachment Image 				                                   | eOther.11               | O [0..1]			|				  |   						 |
| File Attachment Name 				                                       | eOther.22               | O [0..1]			|				  |   						 |
| Type of Person Signing				                                   | eOther.12               | O [0..1]			|				  |   						 |
| Signature Reason 				                                           | eOther.13               | O [0..1]			|				  |   						 |
| Type Of Patient Representative				                           | eOther.14               | O [0..1]			|				  |   						 |
| Signature Status				                                           | eOther.15               | O [0..1]			|				  |   						 |
| Signature File Name				                                       | eOther.16               | O [0..1]			|				  |   						 |
| Signature File Type				                                       | eOther.17               | O [0..1]			|				  |   						 |
| Signature Graphic				                                           | eOther.18               | O [0..1]		    |				  |   						 |
| Date/Time of Signature 				                                   | eOther.19               | O [0..1]			|				  |   						 |
| Signature Last Name 				                                       | eOther.20               | O [0..1]		    |				  |   						 |
| Signature First Name 				                                       | deOther.21              | O [0..1]			|				  |   						 |
