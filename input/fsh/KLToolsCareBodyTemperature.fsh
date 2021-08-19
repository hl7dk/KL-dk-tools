Profile: KLToolsCareBodyTemperature
Parent: http://hl7.org/fhir/StructureDefinition/bodytemp
Title: "Body temperature"
Description: "Profile of HL7 body temeprature profile used in Danish Municipalities"
//SNOMED on FHIR recommendation
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from BodyTemperatureSCTObservables (extensible)
* code.coding[snomedSlice].system = SCT

// procedure fulgt/teknik
* method 1..1
* method.coding ^slicing.discriminator.type = #value
* method.coding ^slicing.discriminator.path = "system"
* method.coding ^slicing.rules = #open
* method.coding contains
   KLCode 1..1 and SCTCode 0..1
* method.coding[KLCode] from KLtechniquesCodes (required)
* method.coding[KLCode].system = KLToolsCodeSystem
* method.coding[SCTCode] from TechniqesSCTCodes (required)
* method.coding[SCTCode].system = SCT

* code ^short = "[DK] TemperaturKode"
* valueQuantity.value ^short = "[DK] TemperaturResultat"
* valueQuantity.code ^short = "[DK] TemperaturEnhed"
* valueQuantity.system ^short = "[DK] TemperaturEnhed"
* subject ^short = "[DK] Temperatursubjekt"
* encounter ^short = "[DK] Temperaturkontakt"
* performer ^short = "[DK] Temperaturansvarlig"
* method ^short = "[DK] TemperaturProcedure"
* effectiveDateTime ^short = "[DK] Temperaturtid"
* note.text ^short = "[DK] TemperaturBemærkning"
* status ^short = "[DK] TemperaturStatus"

Instance: HeleneBodyTemperature
InstanceOf: KLToolsCareBodyTemperature
Usage: #example
Title: "HeleneBodyTemperature"
Description: "Helenes temperatur"
* subject = Reference(Helene)
* code.coding[snomedSlice] = SCT#276885007
* code.coding[BodyTempCode] = LOINC#8310-5
* valueQuantity.value = 38
* valueQuantity.unit = "grader celcius"
* valueQuantity.system = UCUM
* valueQuantity.code = #Cel
* method.coding[KLCode] = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja //"Ingen problemer med test-setup og borgers udførelse"
* method.coding[SCTCode] = SCT#272391002 //|Measurement technique (qualifier value)|
* status = #final
* effectiveDateTime = 2019-01-09T17:45:00.000Z