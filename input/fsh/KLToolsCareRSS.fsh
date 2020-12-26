Profile: KLToolsCareRSS
Parent: KLCommonCareSocialObservation
Title: "Chair stand test (RSS)"
Description: "Thirty second chair stand test score, as performed in Danish municipalities"
* code = SCT#450738001
* value[x] only integer
* valueInteger 1..1
* referenceRange.low.value = 0
* method 1..1
* method from KLtechniquesCodes (required)
* extension contains FindingInformer named findingInformer 1..1

* code ^short = "[DK] RSSkode"
* valueInteger ^short = "[DK] RSSresultat"
* subject ^short = "[DK] observationssubjekt"
* encounter ^short = "[DK] observationskontakt"
* performer ^short = "[DK] observationsansvarlig"
* method ^short = "[DK] RSSprocedure"
* effectiveDateTime ^short = "[DK] observationstid"
* extension[findingInformer] ^short = "[DK] RSSkilde"
* note.text ^short = "[DK] RSSbemærkning"