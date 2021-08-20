Profile: KLToolsCareRespirationRate
Parent: http://hl7.org/fhir/StructureDefinition/resprate
Title: "Respiration rate"
Description: "Respiration rate profile used in Danish Municipalities, derived from HL7 respiration rate profile"
//SNOMED on FHIR recommendation
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from RespirationRateSCTObservables (extensible)
* code.coding[snomedSlice].system = SCT

//KL extensions "kilde", associeret tilstand, procedure fulgt/teknik
* extension contains AssociatedConditions named associatedConditions 1..*
* extension[associatedConditions].valueCodeableConcept = SCT#106048009 //| fund vedr. respirationssystemet |
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

* code ^short = "[DK] RespirationsfrekvensKode"
* valueQuantity.value ^short = "[DK] RespirationsfrekvensResultat"
* valueQuantity.code ^short = "[DK] RespirationsfrekvensEnhed"
* valueQuantity.system ^short = "[DK] RespirationsfrekvensEnhed"
* subject ^short = "[DK] RespirationsfrekvensSubjekt"
* encounter ^short = "[DK] RespirationsfrekvensKontakt"
* performer ^short = "[DK] RespirationsfrekvensAnsvarlig"
* method ^short = "[DK] RespirationsfrekvensProcedure"
* effectiveDateTime ^short = "[DK] RespirationsfrekvensTid"
* extension[associatedConditions] ^short = "[DK] RespirationsfrekvensAssocieretTilstand"
* note.text ^short = "[DK] RespirationsfrekvensBemærkning"
* status ^short = "[DK] RespirationsfrekvensStatus"

Instance: HeleneOxygenSaturation
InstanceOf: KLToolsCareOxygenSaturation
Usage: #example
Title: "HeleneOxygenSaturation"
Description: "Helenes oxygenmætning"
* subject = Reference(Helene)
* code.coding[snomedSlice] = SCT#431314004
* code.coding[OxygenSatCode] = LOINC#2708-6
* valueQuantity.value = 95
* valueQuantity.unit = "%"
* valueQuantity.system = UCUM
* valueQuantity.code = #%
* method.coding[KLCode] = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja //"Ingen problemer med test-setup og borgers udførelse"
* method.coding[SCTCode] = SCT#272391002 //|Measurement technique (qualifier value)|
* status = #final
* effectiveDateTime = 2019-01-09T17:45:00.000Z