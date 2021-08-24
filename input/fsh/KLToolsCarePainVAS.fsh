Profile: KLToolsCarePainVAS
Parent: KLCommonCareSocialObservation
Title: "PainVAS"
Description: "Pain intensity evaluation using a visual analog scale, as performed in Danish municipalities"

* code.coding = SCT#443394008 //|Visual analog scale pain score (observable entity)|
//* value[x] only integer
* referenceRange.low.value = 0
* referenceRange.high.value = 100
* extension contains AssociatedConditions named associatedConditions 1..1
* extension[associatedConditions].valueCodeableConcept = SCT#22253000 // |Pain (finding)|
* method 1..1
* method from KLtechniquesCodes (required)
* extension contains FindingInformer named findingInformer 1..1

Instance: HelenePainVAS
InstanceOf: KLToolsCarePainVAS
Usage: #example
Title: "HelenePainVAS"
Description: "Helenes smerte målt med VAS"
* subject = Reference(Helene)
* code.coding = SCT#443394008
* valueInteger.value = 20
* method = KLToolsCodes#a3231c9a-5569-49c4-8760-4fffbf0b2b80 "Afvigelse i test-setup"
* note.text = "Jeg havde ikke en rigtig VAS skala med, så jeg tegnede en på papir, og lod borger pege på den hjemmelavede VAS"
* extension[findingInformer].valueCodeableConcept = KLToolsCodes#a3d30bf2-4a3c-4c49-9001-5363ae11681c "Borger"
* status = #final