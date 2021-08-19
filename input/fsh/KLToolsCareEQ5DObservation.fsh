Profile: KLToolsCareEQ5DObservationMobility
Parent: KLCommonCareSocialObservation
Title: "EQ-5D mobility"
Description: "EQ5D mobility observation, as performed in Danish municipalities"
* code = SCT#301438001 //|Ability to mobilize (observable entity)|
 
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1

* valueCodeableConcept.coding[KLToolsCode] from EQ5Dmobility (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem


* valueCodeableConcept.coding[SCTCode] from EQ5DSCTfindingsMobility
* valueCodeableConcept.coding[SCTCode].system = SCT

* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
* extension[associatedConditions].valueCodeableConcept = SCT#364832000 //Fund vedr. evne til at udføre grovmotoriske funktioner

* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse)


Profile: KLToolsCareEQ5DObservationHygiene
Parent: KLCommonCareSocialObservation
Title: "EQ-5D hygiene"
Description: "EQ5D Hygiene observation, as performed in Danish municipalities"
* code = SCT#284773001 //|Ability to perform personal care activity (observable entity)|
 
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1

* valueCodeableConcept.coding[KLToolsCode] from EQ5Dhygiene (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem


* valueCodeableConcept.coding[SCTCode] from EQ5DSCTfindingsHygiene
* valueCodeableConcept.coding[SCTCode].system = SCT
* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse)

* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
* extension[associatedConditions].valueCodeableConcept = SCT#365179009 //Fund vedr. evne til at udføre aktiviteter i forbindelse med personlig hygiejne




Profile: KLToolsCareEQ5DObservationActivity
Parent: KLCommonCareSocialObservation
Title: "EQ-5D activity"
Description: "EQ-5D Activity observation, as performed in Danish municipalities"
* code = SCT#284545001 //|Ability to perform activities of everyday life (observable entity)|
 
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1

* valueCodeableConcept.coding[KLToolsCode] from EQ5Dactivity (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem


* valueCodeableConcept.coding[SCTCode] from EQ5DSCTfindingsActivity
* valueCodeableConcept.coding[SCTCode].system = SCT
* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse)

* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
* extension[associatedConditions].valueCodeableConcept = SCT#118233009 //Fund vedr. almindelig daglig livsførelse

Profile: KLToolsCareEQ5DObservationPain
Parent: KLCommonCareSocialObservation
Title: "EQ-5D pain"
Description: "EQ5D Pain observation, as performed in Danish municipalities"
* code = SCT#364624006 //|Pain / sensation observable (observable entity)|
 
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1

* valueCodeableConcept.coding[KLToolsCode] from EQ5Dpain (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem


* valueCodeableConcept.coding[SCTCode] from EQ5DSCTfindingsPain
* valueCodeableConcept.coding[SCTCode].system = SCT
* derivedFrom 1..1
* derivedFrom only Reference(KLToolsQuestionnaireResponse)

* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 0..*
* extension[associatedConditions].valueCodeableConcept = SCT#106147001 // fund vedr. det sensoriske nervesystem

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

Instance: HeleneEQ5Dmobility
InstanceOf: KLToolsCareEQ5DObservationMobility
Usage: #example
Title: "HeleneEQ5D-mobilitet"
Description: "Observation af Helenes mobilitet, som udtrykt i EQ5D spørgeskema"
* code = SCT#301438001 "Ability to mobilize"
* subject = Reference(Helene)
* performer = Reference(AbrahamFraAkutSygeplejen)
* valueCodeableConcept.coding[SCTCode] = SCT#719232003 "Difficulty walking"
* valueCodeableConcept.coding[KLToolsCode] = KLToolsCodes#95be0ff6-ab05-4918-be8e-6dbb820366bb "Jeg har nogle problemer med at gå omkring (2)"
* status = #final
* method = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja "Ingen problemer med test-setup og borgers udførelse"
* derivedFrom = Reference(EQ5DAnswerHelene)
* extension[associatedConditions].valueCodeableConcept = SCT#364832000 //Fund vedr. evne til at udføre grovmotoriske funktioner

