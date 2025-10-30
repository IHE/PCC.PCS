Invariant: bdl-ips-1
Description: "An IPS document must have no additional Composition (including Composition subclass) resources besides the first."
* severity = #error
* expression = "entry.tail().where(resource is Composition).empty()"

Invariant: hasMemberOrComponent
Description: "component and hasMember are mutually exclusive"
* severity = #error
* expression = "hasMember.empty() or component.empty()"

Invariant: ips-1
Description: "Datetime must be at least to day."
* severity = #error
* expression = "$this.ofType(dateTime).empty() or ($this as dateTime).toString().length() >= 8"
* xpath = "not(boolean(effectiveDateTime)) or f:matches(effectiveDateTime,/\\d{4}-[01]\\d-[0-3]\\dT[0-2]\\d:[0-5]\\d([+-][0-2]\\d:[0-5]\\d|Z)/)"

Invariant: ips-2
Description: "At least one of these Observation elements shall be provided:  \"value\", \"dataAbsentReason\", \"hasMember\" or \"component\""
Severity: #error
Expression: "value.exists() or hasMember.exists() or component.exists() or dataAbsentReason.exists()"

Invariant: ips-3
Description: "If observation has components, at least one of these Observation.component elements shall be provided:  \"value\" or \"dataAbsentReason\""
Severity: #error
Expression: "component.exists() implies (component.value.exists() or component.dataAbsentReason.exists())"




Invariant: ips-comp-1
Description: "Either section.entry or emptyReason are present"
* severity = #error
* expression = "(entry.reference.exists() or emptyReason.exists())"
* xpath = "(/f:entry.reference and not /f:emptyReason) or (not(/f:emptyReason) and /f:entry.reference)"

Invariant: ips-pat-1
Description: "Patient.name.given, Patient.name.family or Patient.name.text SHALL be present"
* severity = #error
* expression = "family.exists() or given.exists() or text.exists()"
* xpath = "f:given or f:family or f:text"