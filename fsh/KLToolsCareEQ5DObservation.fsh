Profile: KLToolsCareEQ5DObservationMobility
Parent: KLToolsCareItemObservation
Title: "KLToolsCareEQ5DObservationMobility"
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

* extension[associatedConditions].valueCodeableConcept = SCT#364832000 //Fund vedr. evne til at udføre grovmotoriske funktioner

Profile: KLToolsCareEQ5DObservationHygiene
Parent: KLToolsCareItemObservation
Title: "KLToolsCareEQ5DObservationHygiene"
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

* extension[associatedConditions].valueCodeableConcept = SCT#365179009 //Fund vedr. evne til at udføre aktiviteter i forbindelse med personlig hygiejne

Profile: KLToolsCareEQ5DObservationActivity
Parent: KLToolsCareItemObservation
Title: "KLToolsCareEQ5DObservationActivity"
Description: "EQ5D Activity observation, as performed in Danish municipalities"
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

* extension[associatedConditions].valueCodeableConcept = SCT#118233009 //Fund vedr. almindelig daglig livsførelse

Profile: KLToolsCareEQ5DObservationPain
Parent: KLToolsCareItemObservation
Title: "KLToolsCareEQ5DObservationPain"
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

* extension[associatedConditions].valueCodeableConcept = SCT#106147001 // fund vedr. det sensoriske nervesystem

Profile: KLToolsCareEQ5DObservationAnxiety
Parent: KLToolsCareItemObservation
Title: "KLToolsCareEQ5DObservationAnxiety"
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

* extension[associatedConditions].valueCodeableConcept = SCT#106126000 //|Emotional state finding (finding)|