Profile: KLToolsCareRespirationRate
Parent: http://hl7.org/fhir/StructureDefinition/resprate
Title: "KLToolsCareRespirationRate"
Description: "Profile of HL7 respiration rate profile used in Danish Municipalities"
//SNOMED on FHIR recommendation
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from RespirationRateSCTObservables (extensible)
* code.coding[snomedSlice].system = SCT

//KL extensions "kilde", associeret tilstand, procedure fulgt/teknik
* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 1..*
* extension[associatedConditions].valueCodeableConcept = SCT#106048009 //| fund vedr. respirationssystemet |
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