Profile: KLToolsWHO5ObservationHappy1
Parent: KLCommonCareSocialObservation
Title: "WHO-5 happy (1)"
Description: "WHO5 observation, for the first question about feeling happy"
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1 and SDScode 0..1
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodesHappy (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

* code = SCT#285854004 //|Emotion (observable entity)|
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsHappy1
* valueCodeableConcept.coding[SCTCode].system = SCT
* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse)

* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
* extension[associatedConditions].valueCodeableConcept = SCT#106126000 //|fund vedr. emotionel tilstand|

* valueCodeableConcept.coding[SDScode] from WHO5AnswerCodesHappySDS (required)
* valueCodeableConcept.coding[SDScode].system = SDSCodes

Profile: KLToolsWHO5ObservationCalm2
Parent: KLCommonCareSocialObservation
Title: "WHO-5 calm (2)"
Description: "WHO5 observation, for the second question about feeling calm"
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1 and SDScode 0..1
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodesCalm (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

* code = SCT#285854004 //|Emotion (observable entity)|
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsCalm2
* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse)

* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
* extension[associatedConditions].valueCodeableConcept = SCT#106126000 // |fund vedr. emotionel tilstand|

* valueCodeableConcept.coding[SCTCode].system = SCT
* valueCodeableConcept.coding[SDScode] from WHO5AnswerCodesCalmSDS (required)
* valueCodeableConcept.coding[SDScode].system = SDSCodes

Profile: KLToolsWHO5ObservationActive3
Parent: KLCommonCareSocialObservation
Title: "WHO-5 active (3)"
Description: "WHO5 observation, for the third question about being active"

* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1 and SDScode 0..1
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodesActive (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

* code = SCT#406202006 //"Træk vedr. energi"
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsActive3
* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse)

* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
* extension[associatedConditions].valueCodeableConcept = SCT#301325005 //fund vedr. energiniveau 

* valueCodeableConcept.coding[SCTCode].system = SCT
* valueCodeableConcept.coding[SDScode] from WHO5AnswerCodesActiveSDS (required)
* valueCodeableConcept.coding[SDScode].system = SDSCodes

Profile: KLToolsWHO5ObservationRested4
Parent: KLCommonCareSocialObservation
Title: "WHO-5 rested (4)"
Description: "WHO5 observation, for the fourth question about being rested"

* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1 and SDScode 0..1
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodesRested (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

* code = SCT#363817001 // |Sleep related observable (observable entity)|
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsRested4
* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse)

* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
* extension[associatedConditions].valueCodeableConcept = SCT#106168000 //|fund vedr. søvn

* valueCodeableConcept.coding[SCTCode].system = SCT
* valueCodeableConcept.coding[SDScode] from WHO5AnswerCodesRestedSDS (required)
* valueCodeableConcept.coding[SDScode].system = SDSCodes

Profile: KLToolsWHO5ObservationInterest5
Parent: KLCommonCareSocialObservation
Title: "WHO-5 Interest (5)"
Description: "WHO5 observation, for the fifth question about being interested"

* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1 and SDScode 0..1
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodesInterest (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

* code = SCT#247752005 //"Interesseniveau"
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsInterest5
* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse)

* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
* extension[associatedConditions].valueCodeableConcept = SCT#365462008 //|fund vedr. grad af interesse|

* valueCodeableConcept.coding[SCTCode].system = SCT
* valueCodeableConcept.coding[SDScode] from WHO5AnswerCodesInterestSDS (required)
* valueCodeableConcept.coding[SDScode].system = SDSCodes

Instance: MarksWHO5-2
InstanceOf: KLToolsWHO5ObservationCalm2
Usage: #example
Title: "MarksWHO5-2"
Description: "Observation af Marks humør, som udtrykt i WHO5 spørgeskema"
* code = SCT#285854004 //|Emotion (observable entity)|
* subject = Reference(Mark)
* performer = Reference(AbrahamFraAkutSygeplejen)
* valueCodeableConcept.coding[SCTCode] = SCT#48694002
* valueCodeableConcept.coding[KLToolsCode] = KLToolsCodes#1ab11c78-6258-4069-9065-0f076833b133 "WHO-5 Lidt mere end halvdelen af tiden - 3 (rolig)"
* status = #final
* method = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja "Ingen problemer med test-setup og borgers udførelse"
* derivedFrom = Reference(WHO-5AnswerMark)
* extension[associatedConditions].valueCodeableConcept = SCT#106126000 //|fund vedr. emotionel tilstand|