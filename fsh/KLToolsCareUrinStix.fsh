Profile: KLToolsCareUrinStix
Parent: KLCommonCareSocialObservation
Title: "KLToolsCareUrinStix"
Description: "Urin stix result, as performed in Danish municipalities"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
   SCTCode 0..1 and LOINCCode 0..1 and NPUcode 0..1

* code.coding[SCTCode] from SCTUrinStix 
* code.coding[LOINCCode] from LOINCUrinStix
* code.coding[NPUcode] from NPUUrinStix
* value[x] only Quantity or string
* valueQuantity.system = UCUM

//KL extensions "kilde", associeret tilstand, procedure fulgt/teknik
* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 1..1
* extension[associatedConditions].valueCodeableConcept = SCT#252041008 //|fund vedr. vandladning|

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