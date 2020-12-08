Profile: KLToolsWHO5ObservationHappy1
Parent: KLToolsCareItemObservation
Title: "KLToolsCareWHO5Happy1"
Description: "WHO5 observation, for the first question about feeling happy"
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodes (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

* code = SCT#285854004 //|Emotion (observable entity)|
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsHappy1
* extension[associatedConditions].valueCodeableConcept = SCT#106126000 //|fund vedr. emotionel tilstand|

Profile: KLToolsWHO5ObservationCalm2
Parent: KLToolsCareItemObservation
Title: "KLToolsCareWHO5Calm2"
Description: "WHO5 observation, for the second question about feeling calm"
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodes (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

* code = SCT#285854004 //|Emotion (observable entity)|
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsCalm2
* extension[associatedConditions].valueCodeableConcept = SCT#106126000 // |fund vedr. emotionel tilstand|

Profile: KLToolsWHO5ObservationActive3
Parent: KLToolsCareItemObservation
Title: "KLToolsCareWHO5Active3"
Description: "WHO5 observation, for the third question about being active"

* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodes (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

* code = SCT#406202006 //"Træk vedr. energi"
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsActive3
* extension[associatedConditions].valueCodeableConcept = SCT#301325005 //fund vedr. energiniveau 

Profile: KLToolsWHO5ObservationRested4
Parent: KLToolsCareItemObservation
Title: "KLToolsCareWHO5Rested4"
Description: "WHO5 observation, for the fourth question about being rested"

* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodes (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

* code = SCT#404949004 //"Hvilemønster"
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsRested4
* extension[associatedConditions].valueCodeableConcept = SCT#106021008 // "Fund vedr. søvn/hvilemønster | Finding of sleep rest pattern (finding)


Profile: KLToolsWHO5ObservationInterest5
Parent: KLToolsCareItemObservation
Title: "KLToolsCareWHO5Interest5"
Description: "WHO5 observation, for the fifth question about being interested"

* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodes (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

* code = SCT#247752005 //"Interesseniveau"
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsInterest5
* extension[associatedConditions].valueCodeableConcept = SCT#365462008 //|fund vedr. grad af interesse|


Instance: MarksWHO5-2
InstanceOf: KLToolsWHO5ObservationCalm2
Usage: #example
Title: "MarksWHO5-2"
Description: "Observation af Marks humør, som udtrykt i WHO5 spørgeskema"
* code = SCT#285854004 //|Emotion (observable entity)|
* subject = Reference(Mark)
* performer = Reference(AbrahamFraAkutSygeplejen)
* valueCodeableConcept.coding[SCTCode] = SCT#49971008 "ængstelse"
* valueCodeableConcept.coding[KLToolsCode] = KLToolsCodes#a3779fc5-d7b3-4d03-bdaf-5ae5a40b0899 "WHO-5 Lidt mere end halvdelen af tiden (3)"
* status = #final
* method = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja "Ingen problemer med test-setup og borgers udførelse"
* derivedFrom = Reference(WHO-5AnswerMark)
* extension[associatedConditions].valueCodeableConcept = SCT#106126000 //|fund vedr. emotionel tilstand|