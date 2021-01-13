Profile: KLToolsCareBodyTemperature
Parent: http://hl7.org/fhir/StructureDefinition/oxygensat
Title: "Body temperature"
Description: "Profile of HL7 oxygen saturation profile used in Danish Municipalities"
//SNOMED on FHIR recommendation
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from BodyTemperatureSCTObservables (extensible)
* code.coding[snomedSlice].system = SCT

//KL extensions "kilde", associeret tilstand, procedure fulgt/teknik
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