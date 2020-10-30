Profile: KLToolsWHO5observation
Parent: KLCommonCareSocialObservation
Title: "KLToolsCareWHO5"
Description: "WHO5 observations, as performed in Danish municipalities"
* code from WHO5ItemObservationCodes
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1

//Declaring the value set binding for the KLConditionCode slice, and setting the system.
//System is fixed to allow the slicing to work
* valueCodeableConcept.coding[KLToolsCode] from WHO5AnswerCodes (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem

//Declaring the value set binding for the SCTConditionCode slice, and setting the system.
//System is fixed to allow the slicing to work (See Aliases for value set, and system info)
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindings (required)
* valueCodeableConcept.coding[SCTCode].system = SCT
* derivedFrom 1..1
* derivedFrom only Reference(QuestionnaireResponse) //på sigt reference til profileret spørgeskemasvar
* method 1..1
* method from KLtechniquesCodes (required)
* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*

Profile: KLToolsWHO5ObservationHappy1
Parent: KLToolsWHO5observation
Title: "KLToolsCareWHO5Happy1"
Description: "WHO5 observation, for the first question about feeling happy"
* code = SCT#85256008 //"Sindsstemning"
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsHappy1
* extension[associatedConditions].valueCodeableConcept = SCT#106131003 //"fund vedr. sindsstemning"

Profile: KLToolsWHO5ObservationCalm2
Parent: KLToolsWHO5observation
Title: "KLToolsCareWHO5Calm2"
Description: "WHO5 observation, for the second question about feeling calm"
* code = SCT#85256008 //"Sindsstemning"
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsCalm2
* extension[associatedConditions].valueCodeableConcept = SCT#106131003 //"fund vedr. sindsstemning"

Profile: KLToolsWHO5ObservationActive3
Parent: KLToolsWHO5observation
Title: "KLToolsCareWHO5Active3"
Description: "WHO5 observation, for the third question about being active"
* code = SCT#406202006 //"Træk vedr. energi"
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsActive3
* extension[associatedConditions].valueCodeableConcept = SCT#301325005 //fund vedr. energiniveau 

Profile: KLToolsWHO5ObservationRested4
Parent: KLToolsWHO5observation
Title: "KLToolsCareWHO5Rested4"
Description: "WHO5 observation, for the fourth question about being rested"
* code = SCT#404949004 //"Hvilemønster"
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsRested4
* extension[associatedConditions].valueCodeableConcept = SCT#106021008 // "Fund vedr. søvn/hvilemønster | Finding of sleep rest pattern (finding)


Profile: KLToolsWHO5ObservationInterest5
Parent: KLToolsWHO5observation
Title: "KLToolsCareWHO5Interest5"
Description: "WHO5 observation, for the fifth question about being interested"
* code = SCT#247752005 //"Interesseniveau"
* valueCodeableConcept.coding[SCTCode] from WHO5SCTfindingsInterest5
* extension[associatedConditions].valueCodeableConcept = SCT#118233009 //| Finding of activity of daily living (finding) |


Instance: MarksWHO5-2
InstanceOf: KLToolsWHO5observation
Usage: #example
Title: "MarksWHO5-2"
Description: "Observation af Marks humør, som udtrykt i WHO5 spørgeskema"
* code = SCT#85256008 "Sindsstemning"
* subject = Reference(Mark)
* performer = Reference(AbrahamFraAkutSygeplejen)
* valueCodeableConcept.coding[SCTCode] = SCT#49971008 "ængstelse"
* valueCodeableConcept.coding[KLToolsCode] = KLToolsCodes#a3779fc5-d7b3-4d03-bdaf-5ae5a40b0899 "WHO-5 Lidt mere end halvdelen af tiden (3)"
* status = #final
* method = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja "Ingen problemer med test-setup og borgers udførelse"
* derivedFrom = Reference(WHO-5AnswerMark)
* extension[associatedConditions].valueCodeableConcept = SCT#106131003 "fund vedr. sindsstemning"