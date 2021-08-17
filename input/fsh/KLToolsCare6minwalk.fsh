Profile: KLToolsCare6minwalk
Parent: KLCommonCareSocialObservation
Title: "6 min walk"
Description: "6 minutes walking test, as performed in Danish municipalities"
* code.coding = SCT#1144649008 //|Six minute walk test distance (observable entity)|
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

* code ^short = "[DK] 6MinutterGangKode"
* valueQuantity.value ^short = "[DK] 6MinutterGangResultat"
* valueQuantity.system ^short = "[DK] 6MinutterGangEnhed"
* valueQuantity.code ^short = "[DK] 6MinutterGangEnhed"
* subject ^short = "[DK] 6MinutterGangSubjekt"
* encounter ^short = "[DK] 6MinutterGangKontakt"
* performer ^short = "[DK] 6MinutterGangAnsvarlig"
* method ^short = "[DK] 6MinutterGangprocedure"
* effectiveDateTime ^short = "[DK] 6MinutterGangTid"
* note.text ^short = "[DK] 6MinutterGangbemærkning"

Instance: Helene6minwalk
InstanceOf: KLToolsCare6minwalk
Usage: #example
Title: "Helene6minwalk"
Description: "Helenes 6minutters gangtest"
* subject = Reference(Helene)
* code.coding = SCT#1144649008
* valueQuantity.value = 350
* valueQuantity.system = UCUM
* valueQuantity.code = #m
* method.coding[KLCode] = KLToolsCodes#17772b27-bc9d-4d62-9515-d268a98a3a27 //afvigelse i borgers udførelse
* method.coding[SCTCode] = SCT#761996005 // |Estimation technique (qualifier value)|
* note.text = "Borger støttede sig kortvarrigt til møbler to gange i løbet af testen. Hun fortsatte på min opfordring, så snart hun havde fået balancen"
* status = #final