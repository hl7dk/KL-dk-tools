Profile: KLToolsCareUrinStix
Parent: KLCommonCareSocialObservation
Title: "KLToolsCareUrinStix"
Description: "Urin stix result, as performed in Danish municipalities"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
   SCTCode 0..1 and LOINCCode 0..1 and NPUcode 1..1

* code.coding[SCTCode] from SCTUrinStix 
* code.coding[LOINCCode] from LOINCUrinStix
* code.coding[NPUcode] from NPUUrinStix
* value[x] only Quantity or string
* valueQuantity.system = UCUM

//KL extensions "kilde", associeret tilstand, procedure fulgt/teknik
* extension contains AssociatedConditions named associatedConditions 1..1
* extension[associatedConditions].valueCodeableConcept = SCT#252041008 //|fund vedr. vandladning|

* method 1..1
* method.coding from KLtechniquesCodes (required)

* code ^short = "[DK] UrinStixKode"
* valueQuantity.value ^short = "[DK] UrinStixResultat"
* valueQuantity.system ^short = "[DK] UrinStixEnhed"
* valueQuantity.code ^short = "[DK] UrinStixEnhed"
* subject ^short = "[DK] UrinStixSubjekt"
* encounter ^short = "[DK] UrinStixKontakt"
* performer ^short = "[DK] UrinStixAnsvarlig"
* method ^short = "[DK] UrinStixProcedure"
* effectiveDateTime ^short = "[DK] UrinStixTid"
* extension[associatedConditions] ^short = "[DK] UrinStixAssocieretTilstand"
* note.text ^short = "[DK] UrinStixBemærkning"
* status ^short = "[DK] UrinStixStatus"