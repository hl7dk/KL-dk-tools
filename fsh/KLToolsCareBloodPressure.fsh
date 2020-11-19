Profile: KLToolsCareBloodPressure
Parent: http://hl7.org/fhir/StructureDefinition/bp
Title: "KLToolsCareBloodPressure"
Description: "Profile of HL7 oxygen saturation profile used in Danish Municipalities"
//SNOMED on FHIR recommendation

* component[SystolicBP].code.coding contains snomedSBPSlice 1..1
* component[SystolicBP].code.coding[snomedSBPSlice] from SystolicBloodPressureSCTObservables (extensible)
* component[SystolicBP].code.coding[snomedSBPSlice].system = SCT

* component[DiastolicBP].code.coding contains snomedDBPSlice 1..1
* component[DiastolicBP].code.coding[snomedDBPSlice] from DiastolicBloodPressureSCTObservables (extensible)
* component[DiastolicBP].code.coding[snomedDBPSlice].system = SCT

//KL extensions "kilde", associeret tilstand, procedure fulgt/teknik
* extension contains FindingInformer named findingInformer 0..1 and AssociatedConditions named associatedConditions 1..1
* extension[associatedConditions].valueCodeableConcept = SCT#106063007 // |fund vedr. kardiovaskulære system||
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