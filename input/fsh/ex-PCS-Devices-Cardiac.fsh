Instance: Inline-Instance-for-Devices-Cardiac-12-Lead-ECG
InstanceOf: DeviceUseStatementUvIps
Usage: #inline
* id = "37561dc9-42de-499e-aab8-b061c56bfd82"
* status = #completed 
* reasonCode = $SCT#89666000
* timingDateTime = "2021-10-06T10:53:18-07:00"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
//Note: where it would refference wave form... document reference 
//Dereived from vital signs.... 
// derived from procedure
//* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* device = Reference(DeviceUvIps/d87962f5-e561-47f3-b9cc-71314394a720)

Instance: Inline-Instance-for-Devices-Cardiac-12-Lead-ECG-Device
InstanceOf: DeviceUvIps
Usage: #inline
* id = "d87962f5-e561-47f3-b9cc-71314394a720"
* serialNumber = "569-75-1210"
* deviceName.name = "12-Lead ECG"
* deviceName.type = #user-friendly-name
//Question: would the device mode be noted here?
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-Medical-Device-Waveform-Graphic
InstanceOf: DocumentReference
Usage: #inline
* id = "4ead83e3-be73-4765-badc-9395d354525f"
* status = #current
* author = Reference(DeviceUvIps/d87962f5-e561-47f3-b9cc-71314394a720)
* date = "2021-10-06T10:53:18-07:00"
* context.encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
//Question: how do i connect a media image to this device, if it was used to interpret the condition of Ventricular Fibrillation
//Question: eDevice.07 - Medical Device ECG Lead??
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* content.attachment.title = "Hello World"
* content.attachment.contentType = #text/plain
* content.attachment.hash = "MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA=="
* content.attachment.size = 11
