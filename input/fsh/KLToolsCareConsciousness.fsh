Profile: KLToolsCareConsiousness
Parent: KLCommonCareSocialObservation
Title: "Consiousness observable"
Description: "Level of consiousness observable as defined by TOBS, as performed in Danish municipalities. TOBS is Danish for early disease detection"

* code.coding = SCT#6942003 //|bevidsthedsniveau|
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1

* valueCodeableConcept.coding[KLToolsCode] from ConciousnessCodes (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem


* valueCodeableConcept.coding[SCTCode] from ConciousnessSCTFindings
* valueCodeableConcept.coding[SCTCode].system = SCT


* extension contains AssociatedConditions named associatedConditions 1..1
* extension[associatedConditions].valueCodeableConcept = SCT#106167005 //fund vedr. bevidsthed

* method 1..1
* method from KLtechniquesCodes (required)
* extension contains FindingInformer named findingInformer 1..1