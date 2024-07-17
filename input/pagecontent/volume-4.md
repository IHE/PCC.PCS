## National Extensions for IHE USA

### **Comment Submission**

This national extension document was authored under the sponsorship and supervision of the IHE Patient Care Coordination Technical Committee who welcome comments on this document and the IHE USA initiative. Comments should be directed to: http://www.ihe.net/PCC_Public_Comments

### **mobile Paramedicine Summary of Care (mPSC)**

--------

#### **mPSC US Volume 3 Constraints **

----------

##### **mPSC US Volume 3 Attribute Constraints** 

The following attribute cardinalities constraints apply in the US.

**Table 4.I.2.1.1-1: US Attribute Cardinality Constraints**

- Race RE 0..*
- Ethnicity RE 0..*
- Religious Affiliation RE 0..*

|Attribute 			    | Cardinality |
|-----------------------|-------------|
| Race   				| RE [0..*]   |
| Ethnicity  			| RE [0..1]   |
| Religious Affiliation | RE [0..*]   |
{:grid}

##### **mPSC US Volume 3 Section Constraints** 

The following additional cardinality constraints apply to the mobile Paramedicine Summary of Care document.

**FHIR**

For Use in the United states the following Structured Definitions should be replaced within the mPSC Composition: 

**mPSC US Resource Constraints**

|International					    | US Relm							   |
|-----------------------------------|--------------------------------------|
| IHE-mPSC-Encounter-ClinicalSubset  | IHE-mPSC-Encounter-ClinicalSubset-US  |
| IHE-mPSC-Encounter-CompleteReport  | IHE-mPSC-Encounter-CompleteReport-US  |
| IHE-mPSC-Composition-CompleteReport| IHE-mPSC-Composition-CompleteReport-US|
| IHE-mPSC-Encounter-CompleteReport  | IHE-mPSC-Encounter-CompleteReport-US  |
| StructureDefinition/Patient-uv-ips| StructureDefinition/us-core-patient  |
| Resource Location					| StructureDefinition/us-core-location |
{:grid}

**CDA**

The following additional cardinality constraints apply to the Paramedicine Care document specification and entries:

**Table 4.I.2.1.2-1: mPSC US Section Constraints **

|Cardinality		    | Section Element 	    |Value Set OID   					| Specification Document | Vocabulary Constraint |
|-----------------------|-----------------------|-----------------------------------|------------------------|-----------------------|
| R [1..1]  			| EMS Protocol Section  | 2.16.840.1.113883.17.3.10.1.7 	| HL7 EMS Run Report R2  | 6.3.D2.5.3 		     |
| RE [0..1]  			| Payer   				| 1.3.6.1.4.1.19376.1.5.3.1.1.5.3.7 | HL7 EMS Run Report R2  | PCC TF-2: 6.3.3.7.1   | 
{:grid}

#### **mPSC Value Set Binding for US Realm Concept Domains**

This section defines the actual value sets and code systems for any coded concepts that were described by concept domains in the main profile and binds the value set to the coded concepts.

**Table 4.I.2.2-1: mPSC Value Set Binding for US Realm Concept Domains**

|UV Concept Domain		           | US Realm Vocabulary Binding or Single Code Binding | Value Set OID    				| 
|----------------------------------|----------------------------------------------------|-------------------------------|
| Ethnicity  				       | Ethnicity Group  			  						| 2.16.840.1.114222.4.11.837    | 
| Marital Status 				   | HL7 Marital Status    		 						| 2.16.840.1.113883.1.11.12212  |
| Race 							   | RaceCategory   			  						| 2.16.840.1.114222.4.11.836    |
| sDTCRaceCode 					   | Race    					  						| 2.16.840.1.113883.1.11.14914  |
| Religious Affiliation  		   | HL7 Religious Affiliation    						| 2.16.840.1.113883.1.11.19185  |
| Language Communication 		   | Language    				  						| 2.16.840.1.113883.1.11.11526  |
| Data Enterer  				   | Assigned entity   			  						| 2.16.840.1.113883.4.6         |
| Confidentiality code 			   | HL7 BasicConfidentialityKind 						| 2.16.840.1.113883.1.11.16926  |
| Provider role  				   | ProviderRole   			  						| 2.16.840.1.113883.17.3.11.46  |
| Destination					   | associatedEntity   		  						| 2.16.840.1.113883.11.20.9.33  |
| DestinationType 				   | DestinationType   			  						| 2.16.840.1.113883.17.3.11.69  | 
| Service Type					   | Service Type    			  						| 2.16.840.1.113883.17.3.11.79  |
| advanced directives			   | AdvanceDirectiveType   	  						| 2.16.840.1.113883.17.3.11.63  |
| Allergen  					   | RxNorm   					  						| 2.16.840.1.113883.6.88        |
| UnitLevelOfCare				   | UnitLevelOfCare   			  						| 2.16.840.1.113883.17.3.11.105 |  
| Medications Administration route | FDA Route of Administration  						| 2.16.840.1.113883.17.3.11.43  |
| Manufactured Material  		   | RxNorm   					  						| 2.16.840.1.113883.6.88        |
| ProviderResponseRole 			   | ProviderResponseRole    	  						| 2.16.840.1.113883.17.3.11.80  |
| CrewRoleLevel  				   | CrewRoleLevel    			  						| 2.16.840.1.113883.17.3.11.81  |
| UnitResponseRole 				   | UnitResponseRole    		  						| 2.16.840.1.113883.17.3.11.82  |
| StrokeScale 					   | StrokeScale   				  						| 2.16.840.1.113883.17.3.11.88  |
| Trauma Center Criteria		   | TraumaCenterCriteria   	  						| 2.16.840.1.113883.17.3.11.3   |
| EMS Level Of Service			   | EMSLevelOfService   		  						| 2.16.840.1.113883.17.3.11.70  |
{:grid}
