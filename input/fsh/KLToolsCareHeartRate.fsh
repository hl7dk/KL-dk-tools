Profile: KLToolsCareHeartRate
Parent: http://hl7.org/fhir/StructureDefinition/heartrate
Title: "KLToolsCareHeartRate"
Description: "Heart rate profile used in Danish Municipalities, derived from HL7 heart rate profile"
//SNOMED on FHIR recommendation
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from HeartRateSCTobservables (extensible)
* code.coding[snomedSlice].system = SCT

//KL extensions "kilde", associeret tilstand, procedure fulgt/teknik
* extension contains AssociatedConditions named associatedConditions 1..1
* extension[associatedConditions].valueCodeableConcept = SCT#106063007 //|Cardiovascular finding (finding)|
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

* code ^short = "[DK] HjertefrekvensKode"
* valueQuantity.value ^short = "[DK] HjertefrekvensResultat"
* valueQuantity.code ^short = "[DK] HjertefrekvensEnhed"
* valueQuantity.system ^short = "[DK] HjertefrekvensEnhed"
* subject ^short = "[DK] HjertefrekvensSubjekt"
* encounter ^short = "[DK] HjertefrekvensKontakt"
* performer ^short = "[DK] HjertefrekvensAnsvarlig"
* method ^short = "[DK] HjertefrekvensProcedure"
* effectiveDateTime ^short = "[DK] HjertefrekvensTid"
* extension[associatedConditions] ^short = "[DK] HjertefrekvensAssocieretTilstand"
* note.text ^short = "[DK] HjertefrekvensBemærkning"
* status ^short = "[DK] HjertefrekvensStatus"