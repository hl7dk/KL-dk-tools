Profile: KLToolsCareRSS
Parent: KLCommonCareSocialObservation
Title: "Chair stand test (RSS)"
Description: "Thirty second chair stand test score, as performed in Danish municipalities"
* code = SCT#450738001
* value[x] only integer
* valueInteger 1..1
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

* code ^short = "[DK] RSSkode"
* valueInteger ^short = "[DK] RSSresultat"
* subject ^short = "[DK] RSSsubjekt"
* encounter ^short = "[DK] RSSkontakt"
* performer ^short = "[DK] RSSansvarlig"
* method ^short = "[DK] RSSprocedure"
* effectiveDateTime ^short = "[DK] RSStid"
* note.text ^short = "[DK] RSSbemærkning"
* status ^short = "[DK] RSSstatus"