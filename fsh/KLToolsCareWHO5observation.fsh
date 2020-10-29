Profile: KLToolsWHO5observations
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


Instance: MarksWHO5-2
InstanceOf: KLToolsWHO5observations
Usage: #example
Title: "MarksWHO5-2"
Description: "Observation af Marks humør, som udtrykt i WHO5 spørgeskema"
* code = SCT#85256008 "Sindsstemning"
* subject = Reference(Mark)
* performer = Reference(AbrahamFraAkutSygeplejen)
* valueCodeableConcept.coding[SCTCode] = SCT#49971008 "ængstelse"
* valueCodeableConcept.coding[KLToolsCode] = KLToolsCodes#a3779fc5-d7b3-4d03-bdaf-5ae5a40b0899 "WHO-5 Lidt mere end halvdelen af tiden (3)"
* status = #final
* method = KLCommonCareSocialCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja "Proceduren fulgt"
* derivedFrom = Reference(WHO-5AnswerMark)
* extension[associatedConditions].valueCodeableConcept = SCT#106131003 "fund vedr. sindsstemning"