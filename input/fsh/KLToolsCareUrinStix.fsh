Profile: KLToolsCareUrinStix
Parent: KLCommonCareSocialObservation
Title: "Urin Stix"
Description: "Urin stix result, as performed in Danish municipalities"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    NPUcode 1..1 and SCTCode 0..1 

* code.coding[SCTCode] from SCTUrinStix
* code.coding[SCTCode].system = SCT 
//* code.coding[LOINCCode] from LOINCUrinStix
* code.coding[NPUcode] from NPUUrinStix
* code.coding[NPUcode].system = NPU
* value[x] only string or Quantity
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

Instance: HeleneUrinStix
InstanceOf: KLToolsCareUrinStix
Usage: #example
Title: "HeleneUrinStix leukocytter"
Description: "Helenes urinstix"
* subject = Reference(Helene)
* code.coding[SCTCode] = SCT#252385000 "Urine dipstick for leukocyte esterase (procedure)"
* code.coding[NPUcode] = NPU#NPU03987 "U—Leukocytter; arb.k.(proc.) = ?"
* valueString = "Påviselige leukocytter"
* method.coding = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja //"Ingen problemer med test-setup og borgers udførelse"
* status = #final
* effectiveDateTime = 2019-01-09T17:45:00.000Z