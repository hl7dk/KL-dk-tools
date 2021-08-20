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

Instance: HelenePainVRS
InstanceOf: KLToolsCarePainVRS
Usage: #example
Title: "HelenePainVRS"
Description: "Helenes smerte målt med VRS"
* subject = Reference(Helene)
* code.coding = SCT#1144798005 "Verbal Rating Scale pain intensity score"
* valueCodeableConcept.coding[KLToolsCode] = KLToolsCodes#d253770d-ce0b-4320-9806-b8fbe9e5af8a "Kraftige/svære smerter (3)"
* valueCodeableConcept.coding[SCTCode] = SCT#76948002 "Severe pain (finding)"
* extension[findingInformer].valueCodeableConcept = KLToolsCodes#a3d30bf2-4a3c-4c49-9001-5363ae11681c "Borger"
* status = #final