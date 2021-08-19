Profile: KLToolsCareConsciousness
Parent: KLCommonCareSocialObservation
Title: "Consciousness assessment"
Description: "Level of consciousness assessment as defined by TOBS, as performed in Danish municipalities. TOBS is Danish for early disease detection"

* code.coding = SCT#444714004 //|Assessment of consciousness level (procedure)|
* value[x] only CodeableConcept

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open

* valueCodeableConcept.coding contains
   KLToolsCode 1..1 and SCTCode 1..1

* valueCodeableConcept.coding[KLToolsCode] from ConsciousnessCodes (required)
* valueCodeableConcept.coding[KLToolsCode].system = KLToolsCodeSystem


* valueCodeableConcept.coding[SCTCode] from ConsciousnessSCTFindings
* valueCodeableConcept.coding[SCTCode].system = SCT


* extension contains AssociatedConditions named associatedConditions 1..1
* extension[associatedConditions].valueCodeableConcept = SCT#106167005 //fund vedr. bevidsthed

* method 1..1
* method.coding from KLtechniquesCodes (required)

* code ^short = "[DK] BevidsthedKode"
* valueCodeableConcept ^short = "[DK] BevidsthedResultat"
* subject ^short = "[DK] BevidsthedSubjekt"
* encounter ^short = "[DK] BevidsthedKontakt"
* performer ^short = "[DK] BevidsthedAnsvarlig"
* method ^short = "[DK] BevidsthedProcedure"
* effectiveDateTime ^short = "[DK] BevidsthedTid"
* extension[associatedConditions] ^short = "[DK] BevidsthedAssocieretTilstand"
* note.text ^short = "[DK] BevidsthedBemærkning"
* status ^short = "[DK] BevidsthedStatus"

Instance: HeleneConsciousness
InstanceOf: KLToolsCareConsciousness
Usage: #example
Title: "HeleneBevidsthed"
Description: "Helene bevidsthedsniveau"
* subject = Reference(Helene)
* code.coding = SCT#444714004 //|Assessment of consciousness level (procedure)|
* valueCodeableConcept.coding[KLToolsCode].code = KLToolsCodes#0000e850-a51d-4867-a901-dd4c6a2a46a1 //Reagerer kun på smerte (2)
* valueCodeableConcept.coding[SCTCode].code = SCT#450847001 //|Responds to pain (finding)|
* method.coding = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja //"Ingen problemer med test-setup og borgers udførelse"
* status = #final