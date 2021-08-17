Profile: KLToolsCarePainVRS
Parent: KLCommonCareSocialObservation
Title: "Pain VRS"
Description: "Pain intensity evaluation using a verbal rating scale, as performed in Danish municipalities"

* code.coding = SCT#1144798005 //|Verbal Rating Scale pain intensity score (observable entity)|
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1

* valueCodeableConcept.coding[KLToolsCode] from VRSpain (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem


* valueCodeableConcept.coding[SCTCode] from VRSSCTfindingsPain
* valueCodeableConcept.coding[SCTCode].system = SCT


* extension contains AssociatedConditions named associatedConditions 1..1
* extension[associatedConditions].valueCodeableConcept = SCT#22253000 // |Pain (finding)|
* extension contains FindingInformer named findingInformer 1..1