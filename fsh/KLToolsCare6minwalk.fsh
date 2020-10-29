Profile: KLToolsCare6minwalk
Parent: KLCommonCareSocialObservation
Title: "KLToolsCare6minwalk"
Description: "6 minutes walking test, as performed in Danish municipalities"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
   SCTCode 0..1 and LOINCCode 0..1

* code.coding[SCTCode] = SCT#165263003 //|Walking distance (observable entity)|
* code.coding[LOINCCode] = LOINC#64098-7 //6 min walking test
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.system = UCUM
* valueQuantity.code = #m
* referenceRange.low.value = 0
* method 1..1
* method from KLtechniquesCodes (required)
* extension contains FindingInformer named findingInformer 1..1

* code ^short = "[DK] 6MinutterGangKode"
* valueQuantity.value ^short = "[DK] 6MinutterGangResultat"
* valueQuantity.system ^short = "[DK] 6MinutterGangEnhed"
* valueQuantity.code ^short = "[DK] 6MinutterGangEnhed"
* subject ^short = "[DK] observationssubjekt"
* encounter ^short = "[DK] observationskontakt"
* performer ^short = "[DK] observationsansvarlig"
* method ^short = "[DK] 6MinutterGangprocedure"
* effectiveDateTime ^short = "[DK] observationstid"
* extension[findingInformer] ^short = "[DK] 6MinutterGangkilde"
* note.text ^short = "[DK] 6MinutterGangbemærkning"