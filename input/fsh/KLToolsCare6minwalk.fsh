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
* method.coding ^slicing.discriminator.type = #value
* method.coding ^slicing.discriminator.path = "system"
* method.coding ^slicing.rules = #open
* method.coding contains
   KLCode 1..1 and SCTCode 0..1
* method.coding[KLCode] from KLtechniquesCodes (required)
* method.coding[KLCode].system = KLToolsCodeSystem
* method.coding[SCTCode] from TechniqesSCTCodes (required)
* method.coding[SCTCode].system = SCT
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

Instance: Helene6minwalk
InstanceOf: KLToolsCare6minwalk
Usage: #example
Title: "Helene6minwalk"
Description: "Helenes 6minutters gangtest"
* subject = Reference(Helene)
* code.coding[SCTCode] = SCT#165263003
* code.coding[LOINCCode] = LOINC#64098-7
* valueQuantity.value = 350
* valueQuantity.system = UCUM
* valueQuantity.code = #m
* extension[findingInformer].valueCodeableConcept = KLToolsCodes#a3d30bf2-4a3c-4c49-9001-5363ae11681c //OBS
* method.coding[KLCode] = KLToolsCodes#17772b27-bc9d-4d62-9515-d268a98a3a27 //afvigelse i borgers udførelse
* method.coding[SCTCode] = SCT#761996005 // |Estimation technique (qualifier value)|
* note.text = "Borger støttede sig kortvarrigt til møbler to gange i løbet af testen. Hun fortsatte på min opfordring, så snart hun havde fået balancen"
* status = #final