Profile: KLToolsCareEQ5DObservationAnxiety
Parent: KLCommonCareSocialObservation
Title: "EQ-5D anxiety"
Description: "EQ5D Anxiety observation, as performed in Danish municipalities"
* code = SCT#285854004 //|Emotion (observable entity)|
 
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1

* valueCodeableConcept.coding[KLToolsCode] from EQ5Danxiety (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem


* valueCodeableConcept.coding[SCTCode] from EQ5DSCTfindingsAnxiety
* valueCodeableConcept.coding[SCTCode].system = SCT
* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse)

* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
* extension[associatedConditions].valueCodeableConcept = SCT#106126000 //|Emotional state finding (finding)|