**This Content Profile Deinfes the Paramedicine Care Summary document requirement that can be shared with a reciving facility to convey pertinant patient infromation**

[Open and Closed Issues](a_issues.html)

### Organization of This Guide
This guide is organized into four main sections:

1. Volume I: [Overview](1_overview.html)
   1. [Actors and Transactions](2_actors_and_transactions.html)
   2. [Security Considerations](3_security_considerations.html)
   3. [Cross Profile Considerations](4_grouping.html)
   4. [Test Plan](5_testplan.html)

2. Volume II: Transaction Detail
   1. [Document Sharing [PCC-1]](PCC-1.html)

3. Volume III: Metadata
   1. **TODO: point to your content profiles if you have them**

4. National Extensions
    1. **National Extensions for IHE USA**
	### PCS FHIR Constraints
	For Use in the United states the following STructured Definitions shoulf be replaced within the FHIR Composition: 
	|International					    | US Relm							   |
	|-----------------------------------|--------------------------------------|
	| IHE-PCS-Encounter-ClinicalSubset  | IHE-PCS-Encounter-ClinicalSubset-US  |
	| IHE-PCS-Encounter-CompleteReport  | IHE-PCS-Encounter-CompleteReport-US  |
	| StructureDefinition/Patient-uv-ips| StructureDefinition/us-core-patient  |
	| Resource Location					| StructureDefinition/us-core-location |
	
	### PCS CDA Constraints
	
	#### PCS US Attribute Constraints
	**Table 4.I.2.1.1-1: US Attribute Cardinality Constraints**
	|Attribute 			    | Cardinality |
	|-----------------------|-------------|
	| Race   				| RE [0..*]   |
	| Ethnicity  			| RE [0..1]   |
	| Religious Affiliation | RE [0..*]   |
	
	#### PCS US Section Constraints
	The following additional cardinality constraints apply to the Paramedicine Care document specification and entries in Table 6.3.1.D.5-1  Paramedicine Care Summary (PCS) Document Content Module Specification 
	**Table 4.I.2.1.2-1: PCS US Section Constraints **
	|Cardinality		    | Section Element 	    |Value Set OID   					| Specification Document | Vocabulary Constraint |
	|-----------------------|-----------------------|-----------------------------------|------------------------|-----------------------|
	| R [1..1]  			| EMS Protocol Section  | 2.16.840.1.113883.17.3.10.1.7 	| HL7 EMS Run Report R2  | 6.3.D2.5.3 		     |
	| RE [0..1]  			| Payer   				| 1.3.6.1.4.1.19376.1.5.3.1.1.5.3.7 | HL7 EMS Run Report R2  | PCC TF-2: 6.3.3.7.1   | 
	
	#### PCS Value Set Binding for US Realm Concept Domains 
	This section defines the actual value sets and code systems for any coded concepts that were described by concept domains in the main profile and binds the value set to the coded concepts.
	**Table 4.I.2.2-1: PCS Value Set Binding for US Realm Concept Domains**
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
	
5. Appendix
	1. **PCS FHIR Composition**
	(TODO)
	2. **PCS CDA Template**
	(TODO)
	3. **NEMSIS to PCS FHIR Mappings**
	(TODO)
	4. **NEMSIS to PCS CDA Mappings**
	(TODO)

Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

You can also download:s

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on **TODO: Put your github repo here**
