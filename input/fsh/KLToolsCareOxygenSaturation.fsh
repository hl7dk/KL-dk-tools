Profile: KLToolsCareOxygenSaturation
Parent: http://hl7.org/fhir/StructureDefinition/oxygensat
Title: "Oxygen saturation"
Description: "Oxygen saturation profile as used in Danish Municipalities, derived from HL7 oxygen saturation profile"
//SNOMED on FHIR recommendation
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from OxygenSaturationSCTobservables (extensible)
* code.coding[snomedSlice].system = SCT

//KL extensions "kilde", associeret tilstand, procedure fulgt/teknik
* extension contains AssociatedConditions named associatedConditions 1..*
* extension[associatedConditions].valueCodeableConcept = SCT#106048009 //  fund vedr. respirationssystemet |
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

* code ^short = "[DK] IltmætningKode"
* valueQuantity.value ^short = "[DK] IltmætningResultat"
* valueQuantity.code ^short = "[DK] IltmætningEnhed"
* valueQuantity.system ^short = "[DK] IltmætningEnhed"
* subject ^short = "[DK] IltmætningSubjekt"
* encounter ^short = "[DK] IltmætningKontakt"
* performer ^short = "[DK] IltmætningAnsvarlig"
* method ^short = "[DK] IltmætningProcedure"
* effectiveDateTime ^short = "[DK] IltmætningTid"
* extension[associatedConditions] ^short = "[DK] IltmætningAssocieretTilstand"
* note.text ^short = "[DK] IltmætningBemærkning"
* status ^short = "[DK] IltmætningStatus"