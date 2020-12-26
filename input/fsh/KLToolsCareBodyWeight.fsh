Profile: KLToolsCareBodyWeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyweight
Title: "Body weight"
Description: "Profile of HL7 body weight profile used in Danish Municipalities"
//SNOMED on FHIR recommendation
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from BodyweightSCTobservables (extensible)
* code.coding[snomedSlice].system = SCT

//KL extensions "kilde", associeret tilstand, procedure fulgt/teknik
* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 1..1
* extension[associatedConditions].valueCodeableConcept = SCT#107647005 //|Weight finding (finding)|
* method 1..1
* method.coding ^slicing.discriminator.type = #value
* method.coding ^slicing.discriminator.path = "system"
* method.coding ^slicing.rules = #open
* method.coding contains
   KLCode 1..1 and SCTCode 0..1
* method.coding[KLCode] from KLtechniquesCodes (required)
* method.coding[KLCode].system = KLToolsCodeSystem
* method.coding[SCTCode] from TechniqesSCTCodes (required)
* method.coding[SCTCode].system = SCT