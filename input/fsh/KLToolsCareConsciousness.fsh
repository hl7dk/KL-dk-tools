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