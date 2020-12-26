Profile: KLToolsCareBloodPressure
Parent: http://hl7.org/fhir/StructureDefinition/bp
Title: "Blood pressure"
Description: "Profile of HL7 Blood pressure profile used in Danish Municipalities"
//SNOMED on FHIR recommendation

* component[SystolicBP].code.coding contains snomedSBPSlice 1..1
* component[SystolicBP].code.coding[snomedSBPSlice] from SystolicBloodPressureSCTObservables (extensible)
* component[SystolicBP].code.coding[snomedSBPSlice].system = SCT

* component[DiastolicBP].code.coding contains snomedDBPSlice 1..1
* component[DiastolicBP].code.coding[snomedDBPSlice] from DiastolicBloodPressureSCTObservables (extensible)
* component[DiastolicBP].code.coding[snomedDBPSlice].system = SCT

//associeret tilstand, procedure fulgt/teknik
* extension contains AssociatedConditions named associatedConditions 1..1
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

Instance: HeleneBloodPressure
InstanceOf: KLToolsCareBloodPressure
Usage: #example
Title: "HeleneBloodPressure"
Description: "Helenes blodtryk"
* subject = Reference(Helene)
* performer = Reference(AbrahamFraAkutSygeplejen)
* code.coding = LOINC#85354-9
* component[SystolicBP].code.coding[snomedSBPSlice] = SCT#407554009
* component[SystolicBP].code.coding[SBPCode]	= LOINC#8480-6
* component[SystolicBP].valueQuantity.value = 128
* component[SystolicBP].valueQuantity.unit = "mmHg"
* component[SystolicBP].valueQuantity.system = UCUM
* component[SystolicBP].valueQuantity.code = #mm[Hg]
* component[DiastolicBP].code.coding[snomedDBPSlice] = SCT##407555005
* component[DiastolicBP].code.coding[DBPCode] = LOINC#8462-4
* component[DiastolicBP].valueQuantity.value = 80
* component[DiastolicBP].valueQuantity.unit = "mmHg"
* component[DiastolicBP].valueQuantity.system = UCUM
* component[DiastolicBP].valueQuantity.code = #mm[Hg]
* method.coding[KLCode] = KLToolsCodes#4a069078-c3c3-4c67-899d-4e8876026f48Ja //"Ingen problemer med test-setup og borgers udførelse"
* method.coding[SCTCode] = SCT#272391002 //|Measurement technique (qualifier value)|
* status = #final
* effectiveDateTime = 2019-01-09T17:45:00.000Z