Profile: KLToolsCarePainVAS
Parent: KLCommonCareSocialObservation
Title: "KLToolsCarePainVAS"
Description: "Pain intensity evaluation using a visual analog scale, as performed in Danish municipalities"

* code.coding = SCT#443394008 //|Visual analog scale pain score (observable entity)|
* value[x] only integer
* referenceRange.low.value = 0
* referenceRange.high.value = 100
* extension contains AssociatedConditions named associatedConditions 1..1
* extension[associatedConditions].valueCodeableConcept = SCT#22253000 // |Pain (finding)|
* method 1..1
* method from KLtechniquesCodes (required)
* extension contains FindingInformer named findingInformer 1..1